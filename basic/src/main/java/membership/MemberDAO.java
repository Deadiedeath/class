package membership;

import java.util.ArrayList;

public class MemberDAO extends JDBConnect{
//DAO : Data Access Object
//	 	데이터베이스의 데이터에 접근하기 위한 객체 Create,Read,Update,Delete 작업관련한 기능 

	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}

	public MemberDTO getMemberDTO(String uid,String upass) {
		
		MemberDTO dto = new MemberDTO();
		
		String query = "select * from member where id=? and pass=?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
		
		return dto;
		
	}
	
	
	
	
}
