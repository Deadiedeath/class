package test;

public class checking {
	
	private String id;
	private String ps;
	private boolean check;
	
	public boolean checkres() {
		String r_id = "system";
		String r_ps = "1111";
		
		if(id.equals(r_id)&&ps.equals(r_ps)) {
			check = true;
		}
		else check = false;
		
		
		return check;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPs() {
		return ps;
	}

	public void setPs(String ps) {
		this.ps = ps;
	}

	public boolean isCheck() {
		return check;
	}

	public void setCheck(boolean check) {
		this.check = check;
	}
	
	
}
