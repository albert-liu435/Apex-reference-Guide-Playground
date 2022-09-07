/**
 * CategoryWrapper类有两个变量，一个为Goods对象，用来获取商品基本信息，一个为布尔类型的checked，用来作为判断数据行是否被选的属性。
 */
public class CategoryWrapper {
    public Boolean checked{ get; set; }
    public GOODS__c goods { get; set;}

    public CategoryWrapper(){
        goods = new GOODS__c();
        checked = false;
    }

    public CategoryWrapper(GOODS__c goods){
        this.goods = goods;
        checked = false;
    }
}