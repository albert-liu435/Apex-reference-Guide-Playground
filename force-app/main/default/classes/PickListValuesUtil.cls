public class PickListValuesUtil {

    // Map<String,object> educationValues = SchemaUtil.getPicklistValues('Student__c','Education__c');
    //System.debug(educationValues);
/*
        通过sObjectName和指定字段获取PickList的value值
    */
    public static Map<String, object> getPicklistValues(String sObjectName, String sFieldName){
        Map<String, object> picValues= new Map<String, object>();
        //key为对象名称，value为对象
        Map<String, Schema.SObjectType> sObjectDescribeMap = Schema.getGlobalDescribe();
        if (sObjectDescribeMap.containsKey(sObjectName)) {
            System.debug('测试：'+sObjectDescribeMap.get(sObjectName).getDescribe());
            //sObjectDescribeMap.get(sObjectName).getDescribe();为描述信息
            Map<String, Schema.SobjectField> sObjectFieldsMap =
               sObjectDescribeMap.get(sObjectName).getDescribe().fields.getMap();
            if (sObjectFieldsMap.containsKey(sFieldName)) {
                Schema.DescribeFieldResult sObjectFieldDescribe = sObjectFieldsMap.get(sFieldName).getDescribe();
                List<Schema.PicklistEntry> lPickEntryList = sObjectFieldDescribe.getPicklistValues();
                for (Schema.PicklistEntry tPicklistEntry : lPickEntryList) {
                    picValues.put(tPicklistEntry.getValue(), new Map<String,object>{
                        'value' => tPicklistEntry.getValue(),
                        'isActive' => tPicklistEntry.isActive(),
                        'isDefaultValue' => tPicklistEntry.isDefaultValue(),
                        'label' => tPicklistEntry.getLabel()
                    });
                }
            } else {
                //TODO 不存在此字段的执行
            }
        } else {
            // TODO 不存在此sObject的执行
        }
        return picValues;
    }
}