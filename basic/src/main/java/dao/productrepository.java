package dao;

import java.util.ArrayList;
import dto.product;

public class productrepository {
	private ArrayList<product> list = new ArrayList<product>();
	
	private static productrepository instance = new productrepository();
	
	public static productrepository getInstance() {
		return instance;
	}
	
	public productrepository() {
		product phone = new product("p1234", "아이폰", 1000);
		phone.setDescription("아이폰 믿고 써라");
		phone.setCategory("맛폰");
		phone.setCondition("빤짝빤짝퉁");
		phone.setManufacturer("사과");
		phone.setUnitInstock(1);
		phone.setFilename("KakaoTalk_20220929_173604023.png");
		
		product notebook = new product("p1235", "맥북", 1500);
		notebook.setDescription("맥북이다");
		notebook.setCategory("놋북");
		notebook.setCondition("신풍");
		notebook.setManufacturer("사과");
		notebook.setUnitInstock(1);
		notebook.setFilename("KakaoTalk_20220929_173604133.png");
		
		product tablet = new product("p1231", "사과패드", 1000);
		tablet.setDescription("아이폰 믿고 써라");
		tablet.setCategory("맛폰");
		tablet.setCondition("빤짝빤짝퉁");
		tablet.setManufacturer("사과");
		tablet.setUnitInstock(1);
		tablet.setFilename("KakaoTalk_20220929_173604273.png");
		
		list.add(phone);
		list.add(notebook);
		list.add(tablet);
	}
	
	public ArrayList<product> getAllProduct(){
		return list;
	}
	
	public product getProductByid(String id) {
		product productbyid = null;
		
		for(int i = 0; i<list.size();i++) {
			product p = list.get(i);
			if(p!=null && p.getProductId()!=null && p.getProductId().equals(id)) {
				productbyid = p;
				break;
			}
		}
		return productbyid;
				
	}
	
	public void addProduct(product product) {
		list.add(product);
	}
}
