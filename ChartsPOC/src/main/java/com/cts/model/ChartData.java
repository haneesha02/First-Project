package com.cts.model;

import java.util.List;

public class ChartData {

	private Integer col;
	private String row;
	private List<ChartData> subData;
	
	
	public Integer getCol() {
		return col;
	}
	public void setCol(Integer col) {
		this.col = col;
	}
	public String getRow() {
		return row;
	}
	public void setRow(String row) {
		this.row = row;
	}
	public List<ChartData> getSubData() {
		return subData;
	}
	public void setSubData(List<ChartData> subData) {
		this.subData = subData;
	}
	
}
