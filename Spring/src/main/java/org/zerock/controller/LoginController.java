package org.zerock.controller;


import java.io.PrintWriter;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.LogicVO;
import org.zerock.domain.MemberVO;
import org.zerock.persistence.MemberDAO;
import org.zerock.service.MemberInfo;





/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	@Inject
	MemberInfo memberInfo;
	@Inject
	MemberDAO memberDAO;

	
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		return "home";
	}*/
	
/*	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String homego(Locale locale, Model model) {
		logger.info("홈으로", locale);
		
		
		return "home";
	}*/
	
/*	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Model model) {
		logger.info("메인 컨트롤러");
		
		
		return "main/main";
	}
	*/
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String logingo(HttpSession sesstion, MemberVO memberVO, Model model) throws Exception {
		logger.info("로그인");
		
		
		return "logic/login";
		
	
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public void logout(HttpServletResponse response,HttpSession sesstion, MemberVO memberVO, Model model) throws Exception {
		logger.info("로그아웃");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
			sesstion.invalidate();
			out.println("<script>alert('로그아웃되었습니다.'); location.href='login.do';</script>");
		
		
	
	
	}
	
	@RequestMapping(value = "/loginSusessce.do", method = RequestMethod.POST)
	public void loginSusess(HttpServletResponse response,LogicVO lvo,String id, String pass,HttpSession sesstion,MemberVO memberVO,Model model) throws Exception {
		logger.info("로그인성공");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println(id);
		System.out.println(pass);
		
		MemberVO vo = memberInfo.logreadPw(lvo);
		System.out.println(vo+"sdfsds");
		System.out.println("요청"+memberInfo.logreadPw(lvo));
		
			if(vo != null) {
				sesstion.setAttribute("login", vo);
				System.out.println(sesstion.toString()+"asasa");
				out.println("<script>alert('환영합니다.'); location.href='main.do';</script>");
				
				

			}else {
				
			out.println("<script>alert('로그인정보를 확인부탁'); history.go(-1);</script>");
			}
			
			
			
			model.addAttribute("login", vo);
			
			System.out.println(model.addAttribute("login", vo));
//		return "main/main";
	}
	
	@RequestMapping(value = "/logSession.do", method = RequestMethod.GET)
	public String loginSession(HttpSession sesstion, MemberVO memberVO, Model model) throws Exception {
		logger.info("로그세션 페이지");
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(sesstion.getAttribute("login"));
		
		model.addAttribute("memberVO", SeVO);
		
		return "logic/logSession";
	}
	
	//./logic/join.do
	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String joingo(HttpSession sesstion, MemberVO joinyee, Model model) throws Exception {
		logger.info("회원가입 페이지");

		
		
		
		return "logic/join";
	}
	
	@RequestMapping(value = "/joinSuccess.do", method = RequestMethod.POST)
	public String joingogo(HttpServletRequest request,HttpSession sesstion,  Model model) throws Exception {
		logger.info("회원가입 성공페이지");
		MemberVO joinyee = new MemberVO();
		
		joinyee.setId(request.getParameter("id"));
		joinyee.setPass(request.getParameter("pass"));
		joinyee.setKoname(request.getParameter("koname"));
		joinyee.setEngname(request.getParameter("engname"));
		joinyee.setGender(request.getParameter("gender"));
		joinyee.setBirth(request.getParameter("birth"));
		joinyee.setTel(Integer.parseInt(request.getParameter("tel")));
		joinyee.setEmail(request.getParameter("email"));
		joinyee.setPassport(request.getParameter("passport"));
		joinyee.setNation(request.getParameter("nation"));
		
		
		memberInfo.regist(joinyee);
		
		System.out.println(joinyee);
		return "main/main";
	}
	
	@RequestMapping(value = "/logremove.do", method = RequestMethod.GET)
	public String logdrow(HttpServletRequest request,HttpSession sesstion,String id, Model model) throws Exception {
		logger.info("회원정보 삭제");
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println("2"+SeVO);
//		System.out.println("2"+sesstion.getAttribute("login"));
//			id = request.getParameter("login");
//			System.out.println(id);
//			SeVO= memberInfo.logremove(id);
//			System.out.println(SeVO);
//			System.out.println(memberInfo.logremove(id));
			
		
		return "logic/logremove";
	}
	
	@RequestMapping(value = "/logremove2.do", method = RequestMethod.GET)
	public String logdrow2(@RequestParam String pass,HttpSession sesstion, Model model) throws Exception {
		logger.info("회원정보 삭제2");
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println("2"+SeVO);
		
		String id = ((MemberVO) (sesstion.getAttribute("login"))).getId();
		System.out.println("세션아뒤:"+id);
		System.out.println("입력 비번:"+pass);
		boolean result = memberInfo.checkPw(id, pass);
		System.out.println(result);
		
		if(result) {
			sesstion.invalidate();
			memberInfo.logremove(id);
			System.out.println("아디값:"+id);
		}else {
			return "logic/logremove";
		}
		return "home";
			
	}
	
	
	@RequestMapping(value = "/updatejoin.do", method = RequestMethod.GET)
	public String updatelog(HttpSession sesstion, Model model) throws Exception {
		logger.info("수정페이지");
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
		
		model.addAttribute("memberVO",SeVO);
		
		return "logic/updatejoin";
	}
	
	@RequestMapping(value = "/updatememberlog.do", method = RequestMethod.POST)
	public void updatelog2(@RequestParam String pass,HttpServletResponse response,HttpServletRequest request,HttpSession sesstion, Model model) throws Exception {
		logger.info("수정 완료");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
		
		
		String id = ((MemberVO) (sesstion.getAttribute("login"))).getId();
		boolean result = memberInfo.checkPw(id, pass);
		System.out.println(result);
		if(result) {
			
			MemberVO updateyee = new MemberVO();
			updateyee=(MemberVO) sesstion.getAttribute("login");
			updateyee.setKoname(request.getParameter("koname"));
			updateyee.setEngname(request.getParameter("engname"));
			updateyee.setGender(request.getParameter("gender"));
			updateyee.setBirth(request.getParameter("birth"));
			updateyee.setTel(Integer.parseInt(request.getParameter("tel")));
			updateyee.setEmail(request.getParameter("email"));
			updateyee.setPassport(request.getParameter("passport"));
			updateyee.setNation(request.getParameter("nation"));
			
			
			memberInfo.modify(updateyee);
			System.out.println("컨트롤러:"+updateyee);
			out.println("<script>alert('수정완료'); location.href='../main.do';</script>");
			
		}else {
			out.println("<script>alert('비번을 다시 입력해주세요'); history.go(-1); </script>");
		}
		
		
		
	}
	
	
	
/*	@RequestMapping(value = "seatlist.do", method = RequestMethod.GET)
	public String seatlist(HttpSession sesstion,Locale locale, Model model) {
		logger.info("예약페이지", locale);
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
		if(SeVO != null) {

			return "seatloglist/logseatlist";
		}else{
			
			return "seatloglist/seatlist";
		}
		
		
	}*/
	
}