package board;

import java.util.List;
import java.util.Map;
import java.util.Vector;
import board.boardDTO;
import javax.servlet.ServletContext;

import db.JDBConnect;

public class BoardDAO extends  JDBConnect{

	public BoardDAO(ServletContext application) {
		super(application); //application을 통해 web.xml에 정의해둔 오라클 정보를 가져와 db연동
	}
	
	//검색조건에 맞는 게시물의 개수를 반환하는 selectCount(Map<String,Object> map)
	
	public int selectCount(Map<String, Object> map) {
		int totalcount =0;
		//쿼리문 작성
		String query = "select count(*) from board";
		if(map.get("searchWrod") != null) {
			query += "where" + map.get("searchField")+" " + "like '%"+map.get("searchWord")+"%'";
		}
		//쿼리문 생성
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next(); //커서를 첫번째 행으로 이동
			rs.getInt(1); //첫번째 컬럼값을 가져옴
			totalcount = rs.getInt(1);//첫번째 컬럼값을 가져옴
		} catch (Exception e) {
			System.out.println("오류 오류 문제가 발생");
			e.printStackTrace();
		}
		
		
		
		return totalcount;
	}
	
	
	public List<boardDTO> selectList(Map<String,Object> map){
		
		List<boardDTO> bbs = new Vector<boardDTO>(); //결과(게시물 목록)을 담을 변수
		//리스트 계열의 collection은 데이터가 순서대로 저장되어 인덱스를 통해 가져올수 있기때문에
		String query = "select * from board ";
		if(map.get("searchWord") !=null) {
			query += "where " + map.get("searchField") + " " + " like '%" + map.get("searchWord") + "%'"; 
		}
		query += "order by num desc";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				boardDTO dto = new boardDTO();
				dto .setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				bbs.add(dto);
							
			}
						
		} catch (Exception e) {
			System.out.println("오류 확인해라");
			e.printStackTrace();
		}
		
		
		return bbs;
	}
	
	public int insertWrite(boardDTO dto) {
		int result = 0;
		
		try {
			String query = "insert into board " 
					+ " values( "
					+" seq_board_num.nextval, ?, ?, ?, sysdate, 0)";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			
			result = psmt.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("게시물 등록 중 오류");
			e.printStackTrace();
		}
		
		
		
		return result;
	}
	
	public void updateVisitCount(String num) {
		String query = "update board set" + " visitcount = visitcount+1 " + " where num = ?";
		
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, num);
			psmt.executeQuery();
			
		} catch (Exception e) {
			System.out.println("조회수 증가 오류");
			e.printStackTrace();
		}
	}
	
	public boardDTO selectView(String num) {
		boardDTO dto = new boardDTO();
		
		try {
		      String query= " select B.*, M.name "
		                 + " from member M inner join board B"
		                 + " on M.id = B.id "
		                 + " where num=?";
			psmt=con.prepareStatement(query);
			psmt.setString(1, num);
			rs=psmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setVisitcount(rs.getString("visitcount"));
				
			}
			
			
		} catch (Exception e) {
			System.out.println("게시 자료 로드 중 오류");
			e.printStackTrace();
		}
		
		
		return dto;
	}
}
