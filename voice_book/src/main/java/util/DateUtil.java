package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	/**
	 * 用某种时间格式 格式化字符串
	 * @param date 时间
	 * @param formatStr 格式
	 * @return 按给定的格式
	 */
	public static String formatDate(Date date,String formatStr){
		SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
		String result = sdf.format(date);
		return result;
	}
	
	public static Date parseDate(String formatStr,String value ){
		SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
		Date date =null;
		try {
			date = sdf.parse(value);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static void main(String[] args) {
		System.out.println(formatDate(new Date(), "yyyy-MM-dd HH:mm:ss"));
		System.out.println(parseDate("yyyy-MM-dd","2018-09-18"));
	}
}
