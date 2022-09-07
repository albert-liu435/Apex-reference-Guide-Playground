public with sharing class SystemJSONService {
    public SystemJSONService() {

    }


//     List<Goods__c> goods = [select Id,Name,GoodsName__c from Goods__c limit 1];//通过Serialize方法序列化
// String goodsToJson = JSON.serialize(goods);//通过serializePretty方法序列化
// String goodsToJsonPretty = JSON.serializePretty(goods);
// System.debug(goodsToJson);
// System.debug(goodsToJsonPretty);




// List<Goods__c> goodsList = (List<Goods__c>)JSON.deserialize(goodsToJson,List<Goods__c>.class);
// for(Goods__c goodsItem : goodsList) {
//     if(goodsItem.GoodsName__c != null) {
//         System.debug(goodsItem.GoodsName__c);
//     }
// }



// String jsonList = '[{"2":"object2","1":"object1"}]';
// List<Object> listJson = (List<Object>)JSON.deserializeUntyped(jsonList);
// for(Object listItem : listJson) {
//    if(listItem instanceof Map<String,Object>) {
//     System.debug('通过json 的反序列化(Map)' + (Map<String,Object>)listItem);
//    } else {
//     System.debug('通过json 的反序列化' + listItem);
//    }
// }

}
