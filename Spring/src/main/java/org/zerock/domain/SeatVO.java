package org.zerock.domain;

public class SeatVO {
	
	private String Seat_num;
	private String Seat_YN;
	private String Air_name;
	
	public String getSeat_num() {
		return Seat_num;
	}
	public void setSeat_num(String seat_num) {
		Seat_num = seat_num;
	}
	public String getSeat_YN() {
		return Seat_YN;
	}
	public void setSeat_YN(String seat_YN) {
		Seat_YN = seat_YN;
	}
	public String getAir_name() {
		return Air_name;
	}
	public void setAir_name(String air_name) {
		Air_name = air_name;
	}
	
	@Override
	public String toString() {
		return "SeatVO [Seat_num=" + Seat_num + ", Seat_YN=" + Seat_YN + ", Air_name=" + Air_name + "]";
	}
}
