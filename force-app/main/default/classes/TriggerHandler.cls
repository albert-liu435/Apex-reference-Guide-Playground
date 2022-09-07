public abstract class TriggerHandler {
    /*
        Trigger中，在运行时封装了new,newMap,old,oldMap变量
        其中，new和old返回类型为List<sObject>
        newMap和oldMap返回类型为Map<Id,sObject>
    */

    protected Map<Id,sObject> oldMap{get;set;}

    protected Map<Id,sObject> newMap{get;set;}

    protected List<sObject> listNew{get;set;}

    protected List<sObject> listOld{get;set;}

    /*
        封装trigger应该注意以下几点：
        1.trigger.new只能用在insert和update时，且trigger必须是before;
        2.trigger.old只能用在update和delete时;
        3.trigger.newMap只能用在before update,after insert和after update时;
        4.trigger.oldMap只能用在update和delete时.
    */
    public interface MyTrigger {

        void beforeInsert(SObject currentObject);

        void beforeUpdate(SObject oldSobject, SObject currentObject);

        void beforeDelete(SObject currentObject);

        void afterInsert(SObject currentObject);

        void afterUpdate(SObject oldSobject, SObject currentObject);

        void afterDelete(SObject currentObject);

        Boolean skipExecution();
  }
}