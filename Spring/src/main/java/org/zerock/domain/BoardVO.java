package org.zerock.domain;

import java.util.Date;

public class BoardVO {
	
	int board_num;
	String title;
	Date regdate;
	int viewcount;
	
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	
	@Override
	public String toString() {
		return "BoardVO [board_num=" + board_num + ", title=" + title + ", regdate=" + regdate + ", viewcount="
				+ viewcount + "]";
	}
	
	
	
	
	
	
}
