package com.infiniteskill.mvc.converters;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class JulianDateConverter implements Converter<String, Date> {

	@Override
	public Date convert(String startDate) {
		Date tempDate = null;
		
			try {
				System.out.println("Converting Julian Date");
				tempDate = new SimpleDateFormat("yyyyDDD").parse(startDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return tempDate;
	}

}
