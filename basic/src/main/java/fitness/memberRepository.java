package fitness;

import fitness.member;
import java.util.ArrayList;

public class memberRepository {

	private ArrayList<member> list = new ArrayList<member>();
	
	public ArrayList<member> getAllMember(){
		return list;
	}
	
	private static memberRepository instance = new memberRepository();
	
	public static memberRepository getInstance() {
		return instance;
	}
	
	public void addMember(member member) {
		list.add(member);
	}
}
