package org.zerock.domain;

public class ResInfoVO {
	private int ResInfo_num; 
	private int Pay_num;
	private String Name;
	private String Res_rnum;
	private String Air_name1;
	private String Air_name2;
	private String De_date;
	private String Ar_date;
	private String De_time1;
	private String Ar_time1;
	private String De_time2;
	private String Ar_time2;
	private String De_place1;
	private String Ar_place1;
	private String De_place2;
	private String Ar_place2;
	private String Seat_num1;
	private String Seat_num2;
	private int Tic_price;//getter
	private int Tic_price1;
	private int Tic_price2;

	private String Pay_card;
	private String Pay_date;	
	
	private int Sc_num; //getter
	private String Air_name;//getter
	private String Seat_num;//getter
	
	
	public int getTic_price1() {
		return Tic_price1;
	}
	public void setTic_price1(int tic_price1) {
		Tic_price1 = tic_price1;
	}
	public int getTic_price2() {
		return Tic_price2;
	}
	public void setTic_price2(int tic_price2) {
		Tic_price2 = tic_price2;
	}
	
	public String getAir_name() {
		return Air_name;
	}
	public void setAir_name(String air_name) {
		Air_name = air_name;
	}
	public String getSeat_num() {
		return Seat_num;
	}
	public void setSeat_num(String seat_num) {
		Seat_num = seat_num;
	}
	public int getResInfo_num() {
		return ResInfo_num;
	}
	public void setResInfo_num(int resInfo_num) {
		ResInfo_num = resInfo_num;
	}
	public int getPay_num() {
		return Pay_num;
	}
	public void setPay_num(int pay_num) {
		Pay_num = pay_num;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getRes_rnum() {
		return Res_rnum;
	}
	public void setRes_rnum(String res_rnum) {
		Res_rnum = res_rnum;
	}
	public String getAir_name1() {
		return Air_name1;
	}
	public void setAir_name1(String air_name1) {
		Air_name1 = air_name1;
	}
	public String getAir_name2() {
		return Air_name2;
	}
	public void setAir_name2(String air_name2) {
		Air_name2 = air_name2;
	}
	public String getDe_date() {
		return De_date;
	}
	public void setDe_date(String de_date) {
		De_date = de_date;
	}
	public String getAr_date() {
		return Ar_date;
	}
	public void setAr_date(String ar_date) {
		Ar_date = ar_date;
	}
	public String getDe_time1() {
		return De_time1;
	}
	public void setDe_time1(String de_time1) {
		De_time1 = de_time1;
	}
	public String getAr_time1() {
		return Ar_time1;
	}
	public void setAr_time1(String ar_time1) {
		Ar_time1 = ar_time1;
	}
	public String getDe_time2() {
		return De_time2;
	}
	public void setDe_time2(String de_time2) {
		De_time2 = de_time2;
	}
	public String getAr_time2() {
		return Ar_time2;
	}
	public void setAr_time2(String ar_time2) {
		Ar_time2 = ar_time2;
	}
	public String getDe_place1() {
		return De_place1;
	}
	public void setDe_place1(String de_place1) {
		De_place1 = de_place1;
	}
	public String getAr_place1() {
		return Ar_place1;
	}
	public void setAr_place1(String ar_place1) {
		Ar_place1 = ar_place1;
	}
	public String getDe_place2() {
		return De_place2;
	}
	public void setDe_place2(String de_place2) {
		De_place2 = de_place2;
	}
	public String getAr_place2() {
		return Ar_place2;
	}
	public void setAr_place2(String ar_place2) {
		Ar_place2 = ar_place2;
	}
	public String getSeat_num1() {
		return Seat_num1;
	}
	public void setSeat_num1(String seat_num1) {
		Seat_num1 = seat_num1;
	}
	public String getSeat_num2() {
		return Seat_num2;
	}
	public void setSeat_num2(String seat_num2) {
		Seat_num2 = seat_num2;
	}
	public int getTic_price() {
		return Tic_price;
	}
	public void setTic_price(int tic_price) {
		Tic_price = getTic_price1()+getTic_price2();
	}
	public String getPay_card() {
		return Pay_card;
	}
	public void setPay_card(String pay_card) {
		Pay_card = pay_card;
	}
	public String getPay_date() {
		return Pay_date;
	}
	public void setPay_date(String pay_date) {
		Pay_date = pay_date;
	}
	public int getSc_num() {
		return Sc_num;
	}
	public void setSc_num(int sc_num) {
		Sc_num = sc_num;
	}
	@Override
	public String toString() {
		return "ResInfoVO [ResInfo_num=" + ResInfo_num + ", Pay_num=" + Pay_num + ", Name=" + Name + ", Res_rnum="
				+ Res_rnum + ", Air_name1=" + Air_name1 + ", Air_name2=" + Air_name2 + ", De_date=" + De_date
				+ ", Ar_date=" + Ar_date + ", De_time1=" + De_time1 + ", Ar_time1=" + Ar_time1 + ", De_time2="
				+ De_time2 + ", Ar_time2=" + Ar_time2 + ", De_place1=" + De_place1 + ", Ar_place1=" + Ar_place1
				+ ", De_place2=" + De_place2 + ", Ar_place2=" + Ar_place2 + ", Seat_num1=" + Seat_num1 + ", Seat_num2="
				+ Seat_num2 + ", Tic_price=" + Tic_price + ", Pay_card=" + Pay_card + ", Pay_date=" + Pay_date
				+ ", Sc_num=" + Sc_num + "]";
	}	
		
}
