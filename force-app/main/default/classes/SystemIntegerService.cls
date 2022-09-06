/**
 * Integer表示一个32位整数的对象，取值范围为-2^31 -- 2^31.
 */
public with sharing class SystemIntegerService {
	public SystemIntegerService() {
	}

	/**
	 *
	 * 将Integer类型转换为String类型
	 */
	public static String format(Integer myInt) {
		return myInt.format();
	}

	/**
	 * 将String类型转换为Integer类型
	 */
	public static Integer valueOf(String stringToInteger) {
		return Integer.valueOf(stringToInteger);
	}

	/**
	 * 将指定的对象转换为Integer类型
	 */
	public static Integer valueOf2(Object fieldValue) {
		return Integer.valueOf(fieldValue);
	}
}
