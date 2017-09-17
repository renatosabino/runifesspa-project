package br.edu.unifesspa.utils;

import java.util.Calendar;
import java.util.Date;

public class DateTimeUtil {

	private static DateTimeUtil instance;

	private DateTimeUtil() {
	}

	public static DateTimeUtil getInstance() {
		if (instance == null) {
			instance = new DateTimeUtil();
		}
		return instance;
	}
	
	public Date getTimeDate() {
		return Calendar.getInstance().getTime();
	}
	
}
