/**
 * Long类型表示一个64位整数的对象，取值范围为-2^63--2^63-1.
 */
public with sharing class SystemLongService {
public SystemLongService() {

}


/* *
 * 将Long类型转换为String类型
 */
public static String format(Long myInt){

	return myInt.format();
}


/**
 * 将myLong类型转换为Integer
 */
public static Integer intValue(Long myLong) {

	return myLong.intValue();
}


/**
 * 将String类型转换为Long类型
 */
public static Long valueOf(String stringToInteger){

	return Long.valueOf(stringToInteger);
}

}