package membership;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import membership.MemberDTO;


public class MemberDAO extends JDBConnect{

	public Connection con;
	public Statement stmt;  
    public PreparedStatement psmt;  
    public ResultSet rs;
    
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	
	
	public MemberDTO getmemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		
		String query = "select * from member where id= ? and pass= ?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1,uid);
			psmt.setString(2,upass);
			rs=psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setId(rs.getString("pass"));
				dto.setUserName(rs.getString(3));
				dto.set(rs.getString(4));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
		
		
	}
	
	
	
	

	

}
