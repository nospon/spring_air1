package org.zerock.domain;

public class SeatInfoVO {
	
	private int Sc_num;
	private String Air_name;
	private String De_date;
	private int Tic_price;
	private String Seat_num;
	private int Seat_YN;
	private int Na_num;
	private int Seat_total;
	private int cnt;

	public int getSc_num() {
		return Sc_num;
	}
	public void setSc_num(int sc_num) {
		Sc_num = sc_num;
	}
	public String getAir_name() {
		return Air_name;
	}
	public void setAir_name(String air_name) {
		Air_name = air_name;
	}
	public String getDe_date() {
		return De_date;
	}
	public void setDe_date(String de_date) {
		De_date = de_date;
	}
	public int getTic_price() {
		return Tic_price;
	}
	public void setTic_price(int tic_price) {
		Tic_price = tic_price;
	}
	public String getSeat_num() {
		return Seat_num;
	}
	public void setSeat_num(String seat_num) {
		Seat_num = seat_num;
	}
	public int getSeat_YN() {
		return Seat_YN;
	}
	public void setSeat_YN(int seat_YN) {
		Seat_YN = seat_YN;
	}
	public int getNa_num() {
		return Na_num;
	}
	public void setNa_num(int na_num) {
		Na_num = na_num;
	}
	public int getSeat_total() {
		return Seat_total;
	}
	public void setSeat_total(int seat_total) {
		Seat_total = seat_total;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "SeatInfoVO [Sc_num=" + Sc_num + ", Air_name=" + Air_name + ", De_date=" + De_date + ", Tic_price="
				+ Tic_price + ", Seat_num=" + Seat_num + ", Seat_YN=" + Seat_YN + ", Na_num=" + Na_num + ", Seat_total="
				+ Seat_total + ", cnt=" + cnt + "]";
	}	
}
