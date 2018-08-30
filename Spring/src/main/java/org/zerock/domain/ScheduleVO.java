package org.zerock.domain;

public class ScheduleVO {
	int Sc_num;
	String Air_name;
	String De_date;
	String Ar_date;
	String De_time;
	String Ar_time;
	String De_place;
	String Ar_place;
	String Tic_price;

	public String getTic_price() {
		return Tic_price;
	}

	public void setTic_price(String tic_price) {
		Tic_price = tic_price;
	}

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

	public String getAr_date() {
		return Ar_date;
	}

	public void setAr_date(String ar_date) {
		Ar_date = ar_date;
	}

	public String getDe_time() {
		return De_time;
	}

	public void setDe_time(String de_time) {
		De_time = de_time;
	}

	public String getAr_time() {
		return Ar_time;
	}

	public void setAr_time(String ar_time) {
		Ar_time = ar_time;
	}

	public String getDe_place() {
		return De_place;
	}

	public void setDe_place(String de_place) {
		De_place = de_place;
	}

	public String getAr_place() {
		return Ar_place;
	}

	public void setAr_place(String ar_place) {
		Ar_place = ar_place;
	}

	@Override
	public String toString() {
		return "ScheduleVO [Sc_num=" + Sc_num + ", Air_name=" + Air_name + ", De_date=" + De_date + ", Ar_date="
				+ Ar_date + ", De_time=" + De_time + ", Ar_time=" + Ar_time + ", De_place=" + De_place + ", Ar_place="
				+ Ar_place + ", Tic_price=" + Tic_price + "]";
	}

}
