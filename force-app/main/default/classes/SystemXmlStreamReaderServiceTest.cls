@isTest
private class SystemXmlStreamReaderServiceTest {




static testmethod void xml1() {
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
        List<SystemXmlStreamReaderService.Goods> goodsList = new SystemXmlStreamReaderService().getGoodsListByXmlFile(goodsXml);
        System.debug(JSON.serialize(goodsList));


	Test.stopTest();
}

}
