package Orderdetail.model ;
import java.util.HashMap;
import java.util.Map;

//카트 클래스 : 주문자가 상품을 장바구니에 담으면 이를 컬렉션으로 저장하기 위한 클래스
public class MyCartList {
	
	private Map<Integer, Integer> orderlists = null ;
	//key는 상품 번호, value는 주문 수량
	//orderlists는 몇번상품, 몇개 판매 의 정보를 가지고 있다.
	 
	
	public MyCartList() {
		orderlists = new HashMap<Integer, Integer>(); 
	}
	
	public Map<Integer, Integer> GetAllOrderLists(){ 
		return orderlists ;
	}
	
	
	public void AddOrder(int pmkey, int oqty){ // 상품번호, 주문수량
		// 해당 상품 번호에 대한 수량을 추가한다.
		if ( orderlists.containsKey( pmkey ) == false ) { //없으면 추가
			orderlists.put(pmkey, oqty ) ; 
			// orderlists가 관리하는 HashMap객체에 계속 put한다. 
		
		}else{ // 있으면 누적하기
			orderlists.put(pmkey, orderlists.get(pmkey) +  oqty ) ;
			// pmkey번호 상품의 판매수량을 가져와서 +oqty을 한후 다시 map에 넣는다. 
		}		
	}
}

