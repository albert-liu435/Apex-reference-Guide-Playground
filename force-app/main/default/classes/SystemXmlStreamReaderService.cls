/*
* 假定目前XML数据样式为：
*<?xml version="1.0"?>
*<goodsList>
*    <goods item="1">
*        <name>华为手机</name>
*        <type>华为</type>
*    </goods>
*    <goods item="2">
*        <name>小米手机</name>
*        <type>小米</type>
*    </goods>
*</goodsList>
* 需要将xml解析成Goods的一个List
*/
public with sharing class SystemXmlStreamReaderService {
   public class Goods {
        public String item{get;set;}
        public String name{get;set;}
        public String type{get;set;}
    }
    
    public List<Goods> getGoodsListByXmlFile(String goodsXml) {
        XmlStreamReader reader = new XmlStreamReader(goodsXml);
        Boolean flagXmlEnd = true;
        List<Goods> goodsList = new List<Goods>();
        while(flagXmlEnd) {
            Goods tempGoods;
            if(reader.getEventType() == XmlTag.START_ELEMENT) {
                if(reader.getLocalName().equalsIgnoreCase('goods')) {
                    tempGoods = getGoods(reader);
                }
            }
            
            if(reader.hasNext()) {
                reader.next();
            } else {
                flagXmlEnd = false;
                break;
            }
            if(tempGoods != null) {
                goodsList.add(tempGoods);
            }
        }
        return goodsList;
    }
    
    
    Goods getGoods(XmlStreamReader reader) {
        Goods tempGoods = new Goods();
        tempGoods.item = reader.getAttributeValue(null,'item');
        Boolean flagIsLoop = true;
        while(flagIsLoop) {
            if(reader.hasNext()) {
                reader.next();
                if(reader.getEventType() == XmlTag.START_ELEMENT) {
                    if(reader.getLocalName().equalsIgnoreCase('name')) {
                        reader.next();
                        tempGoods.name = reader.getText();
                    } else if(reader.getLocalName().equalsIgnoreCase('type')) {
                        reader.next();
                        tempGoods.type = reader.getText();
                    }
                }
                if(reader.getEventType() == XmlTag.END_ELEMENT && reader.getLocalName().equalsIgnoreCase('goods')) {
                    flagIsLoop = false;
                    break;
                }
            } else {
                flagIsLoop = false;
                break;
            }
        }
        return tempGoods;
    }
}
