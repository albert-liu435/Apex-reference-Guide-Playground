@isTest
private class DomDocumentServiceTest {


static testmethod void getGoodsViaXmlDom() {
	Test.startTest();
        String goodsXml = '<?xml version="1.0"?>' +
                '<goodsList>' +
                    '<goods item="1">' +
                        '<name>华为手机</name>' +
                        '<type>华为</type>' +
                    '</goods>' +
                    '<goods item="2">' +
                        '<name>小米手机</name>' +
                        '<type>小米</type>' +
                    '</goods>' +
                    
                '</goodsList>';
        System.debug(JSON.serialize(new DomDocumentService().getGoodsViaXmlDom(goodsXml)));


	Test.stopTest();
}

}
