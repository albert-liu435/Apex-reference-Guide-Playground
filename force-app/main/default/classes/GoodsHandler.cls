public class GoodsHandler extends TriggerHandler implements TriggerHandler.MyTrigger {

    public GoodsHandler() {
        // TODO Construcion
    }

    public void beforeInsert(SObject currentObject) {
        // TODO beforeInsert
    }
    public void afterInsert(SObject currentObject) {
        // TODO afterInsert
    }

    public void beforeUpdate(SObject oldSobject, SObject currentObject) {
        // TODO beforeUpdate
    }

    public void beforeDelete(SObject currentObject) {
        //TODO beforeDelete
    }



    public void afterUpdate(SObject oldSobject, SObject currentObject) {

    }

    public void afterDelete(SObject currentObject) {

    }

    public Boolean skipExecution() {
        return false;
    }
}