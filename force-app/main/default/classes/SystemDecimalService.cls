public with sharing class SystemDecimalService {
    public SystemDecimalService() {

    }

    /**
     * 取绝对值
     */
    public static Decimal abs(Decimal dec) {
        
        return dec.abs();
    }

    /**
     * 通过divisor作为除数，并设置结果为特定的scale的位数
     */
    public static Decimal divide(Decimal dec,Decimal divisor,Integer scale) {

        return dec.divide(divisor,scale);
        
    }
}
