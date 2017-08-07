package Orderdetail.model ;
import java.util.HashMap;
import java.util.Map;

//īƮ Ŭ���� : �ֹ��ڰ� ��ǰ�� ��ٱ��Ͽ� ������ �̸� �÷������� �����ϱ� ���� Ŭ����
public class MyCartList {
	
	private Map<Integer, Integer> orderlists = null ;
	//key�� ��ǰ ��ȣ, value�� �ֹ� ����
	//orderlists�� �����ǰ, � �Ǹ� �� ������ ������ �ִ�.
	 
	
	public MyCartList() {
		orderlists = new HashMap<Integer, Integer>(); 
	}
	
	public Map<Integer, Integer> GetAllOrderLists(){ 
		return orderlists ;
	}
	
	
	public void AddOrder(int pmkey, int oqty){ // ��ǰ��ȣ, �ֹ�����
		// �ش� ��ǰ ��ȣ�� ���� ������ �߰��Ѵ�.
		if ( orderlists.containsKey( pmkey ) == false ) { //������ �߰�
			orderlists.put(pmkey, oqty ) ; 
			// orderlists�� �����ϴ� HashMap��ü�� ��� put�Ѵ�. 
		
		}else{ // ������ �����ϱ�
			orderlists.put(pmkey, orderlists.get(pmkey) +  oqty ) ;
			// pmkey��ȣ ��ǰ�� �Ǹż����� �����ͼ� +oqty�� ���� �ٽ� map�� �ִ´�. 
		}		
	}

	public void deleteOrder(int fnum) {
		System.out.println("=================장바구니 삭제=============");
		System.out.println(orderlists);
		System.out.println(orderlists.remove(fnum));
		System.out.println(orderlists);
		System.out.println("=======================================");
	}
}

