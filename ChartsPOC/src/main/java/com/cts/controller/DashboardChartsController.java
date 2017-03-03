package com.cts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.service.ChartsDataDAO;


@Controller
public class DashboardChartsController {
	
	@Autowired
	private ChartsDataDAO chartsDataDAO; 

	@RequestMapping(value ="/getChartData", method =  RequestMethod.GET)
	public ModelAndView getChartData() throws Exception{
		ModelAndView mv = new ModelAndView();	
		try {
			mv.setViewName("chartsData");
			String data = chartsDataDAO.fetchChartData();
			mv.addObject("data",data);
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("errorMsg",e.getMessage());
			mv.setViewName("error");
		}
		return mv;		
	}	
}
