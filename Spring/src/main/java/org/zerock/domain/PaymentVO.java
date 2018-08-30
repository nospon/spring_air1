package org.zerock.domain;

import java.util.Date;

public class PaymentVO {
	
	private String Name;
	private int Pay_num;
	private String Pay_card;
	private String Pay_cardname;
	private long Pay_cardnum;
	private int Pay_cardpw;
	private int Pay_cardcvc;
	private String Pay_date;
	private String Res_rnum;
	private int Tic_price;
	
	
	public String getRes_rnum() {
		return Res_rnum;
	}

	public void setRes_rnum(String res_rnum) {
		Res_rnum = res_rnum;
	}

	public int getTic_price() {
		return Tic_price;
	}

	public void setTic_price(int tic_price) {
		Tic_price = tic_price;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}
	public int getPay_num() {
		return Pay_num;
	}
	public void setPay_num(int pay_num) {
		Pay_num = pay_num;
	}
	public String getPay_card() {
		return Pay_card;
	}
	public void setPay_card(String pay_card) {
		Pay_card = pay_card;
	}
	public String getPay_cardname() {
		return Pay_cardname;
	}
	public void setPay_cardname(String pay_cardname) {
		Pay_cardname = pay_cardname;
	}
	public long getPay_cardnum() {
		return Pay_cardnum;
	}
	public void setPay_cardnum(long pay_cardnum) {
		Pay_cardnum = pay_cardnum;
	}
	public int getPay_cardpw() {
		return Pay_cardpw;
	}
	public void setPay_cardpw(int pay_cardpw) {
		Pay_cardpw = pay_cardpw;
	}
	public int getPay_cardcvc() {
		return Pay_cardcvc;
	}
	public void setPay_cardcvc(int pay_cardcvc) {
		Pay_cardcvc = pay_cardcvc;
	}
	public String getPay_date() {
		return Pay_date;
	}
	public void setPay_date(String pay_date) {
		Pay_date = pay_date;
	}

	@Override
	public String toString() {
		return "PaymentVO [Name=" + Name + ", Pay_num=" + Pay_num + ", Pay_card=" + Pay_card + ", Pay_cardname="
				+ Pay_cardname + ", Pay_cardnum=" + Pay_cardnum + ", Pay_cardpw=" + Pay_cardpw + ", Pay_cardcvc="
				+ Pay_cardcvc + ", Pay_date=" + Pay_date + ", Res_rnum=" + Res_rnum + ", Tic_price=" + Tic_price + "]";
	}

}
