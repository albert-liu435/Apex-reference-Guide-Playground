public with sharing class DomDocumentService {
   public class Goods {
        String item{get;set;}
        String name{get;set;}
        String type{get;set;}
    }
    public List<Goods> getGoodsViaXmlDom(String xmlString) {
        Dom.Document document = new Dom.Document();
        document.load(xmlString);
        Dom.XmlNode rootElement = document.getRootElement();
        List<Goods> goodsList = new List<Goods>();
        for(Dom.XmlNode node : rootElement.getChildElements()) {
            if(node.getName().equalsIgnoreCase('goods')) {
                Goods tempGoods = new Goods();
                tempGoods = getGoodsNameAndType(node);
                tempGoods.item = node.getAttribute('item',null);
                goodsList.add(tempGoods);
            }
        }
        
        return goodsList;
    }
    
    Goods getGoodsNameAndType(Dom.XmlNode parentNode) {
        transient Goods tempGoods = new Goods();
        for(Dom.XmlNode node : parentNode.getChildElements()) {
            if(node.getName().equalsIgnoreCase('name')) {
                tempGoods.name = node.getText();
            } else if(node.getName().equalsIgnoreCase('type')) {
                tempGoods.type = node.getText();
            }
        }
        return tempGoods;
    }
}
