package com.cts.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Service;

import com.cts.model.ChartData;

@Service
public class ChartsDataDAOImpl implements ChartsDataDAO{

	public String fetchChartData() throws Exception {
		String dataJson = null; 
		try{	
			List<ChartData> data = getData();
			dataJson = convertToJSON(data);
			System.out.println(dataJson);
		}catch(Exception e){
			e.printStackTrace();
			throw new Exception("Exception in fetchChartData -- "+e.getMessage());
		}
		return dataJson;
	}
	
	private String convertToJSON(List<ChartData> data) throws JsonGenerationException, JsonMappingException, IOException{
		ObjectMapper mapperObj = new ObjectMapper();
		return mapperObj.writeValueAsString(data);
	}
	
	private List<ChartData> getData(){
		List<ChartData> list = new ArrayList<ChartData>();
		ChartData cd = new ChartData();
		cd.setCol(4025);
		cd.setRow("USA");
		List<ChartData> subData = new ArrayList<ChartData>();
		ChartData sd1 = new ChartData();
		ChartData sd2 = new ChartData();
		ChartData sd3 = new ChartData();
		ChartData sd4 = new ChartData();
		ChartData sd5 = new ChartData();
		
		sd1.setCol(1000);
		sd1.setRow("New York");
		sd1.setSubData(getSubData());
		
		sd2.setCol(785);
		sd2.setRow("California");
		sd3.setCol(501);
		sd3.setRow("Florida");
		sd4.setCol(321);
		sd4.setRow("Illinois");
		sd5.setCol(101);
		sd5.setRow("Washington");
		
		subData.add(sd1);	
		subData.add(sd2);
		subData.add(sd3);
		subData.add(sd4);
		subData.add(sd5);
		cd.setSubData(subData);
		list.add(cd);
		
		ChartData cd1 = new ChartData();
		cd1.setCol(1882);
		cd1.setRow("China");
	//	cd.setSubData(subData);
		list.add(cd1);
		
		ChartData cd2 = new ChartData();
		cd2.setCol(1809);
		cd2.setRow("Japan");
	//	cd.setSubData(subData);
		list.add(cd2);
		
		ChartData cd3 = new ChartData();
		cd3.setCol(1322);
		cd3.setRow("Germany");
	//	cd.setSubData(subData);
		list.add(cd3);
		
		return list;		
	}
	
	private List<ChartData> getSubData(){
		List<ChartData> subData = new ArrayList<ChartData>();
		ChartData sd1 = new ChartData();
		ChartData sd2 = new ChartData();
		ChartData sd3 = new ChartData();
		ChartData sd4 = new ChartData();
		ChartData sd5 = new ChartData();
		
		sd1.setCol(250);
		sd1.setRow("Street 1");
		sd2.setCol(500);
		sd2.setRow("Street 2");
		sd3.setCol(750);
		sd3.setRow("Street 3");
		sd4.setCol(800);
		sd4.setRow("Street 4");
		sd5.setCol(100);
		sd5.setRow("Street 5");
		
		subData.add(sd1);	
		subData.add(sd2);
		subData.add(sd3);
		subData.add(sd4);
		subData.add(sd5);
		
		return subData;		
	}

}
