package school;

public class MyELclass {
	//주민번호를 받아 성별을 반환하는 메소드
	public String getGender(String jumin) {
		String returnStr="";
		int beginIdx = jumin.indexOf("-")+1;
		String genderStr = jumin.substring(beginIdx,beginIdx+1);
		int genderInt = Integer.parseInt(genderStr);
		if(genderInt ==1 ||genderInt==3) {
			returnStr="남자";
		}else if(genderInt ==2 ||genderInt==4){
			returnStr="여자";
		}else {
			returnStr="무성?";
		}
		return returnStr;
	}
	
	public static void stringHello() {
		System.out.println("안뇽");
	}
	
	
	//ELcallmethod.jsp에서 출력
}
