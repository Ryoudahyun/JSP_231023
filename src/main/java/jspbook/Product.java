package jspbook;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Product {

	// 상품 목록을 보관할 배열
    private String[] productList = {"item1","item2","item3","item4","item5"};
    
    // 웹 테스트를 위한 변수값
    private int num1 = 10;
    private int num2 = 20;
    private int num3 = 30;
    private int num4 = 40;
    private int num5 = 50;
}
