package dao;

public class GuestBookObj {

	private String gname, gpassword, gcontent;

	public GuestBookObj(String gname, String gpassword, String gcontent) {
		super();
		this.gname = gname;
		this.gpassword = gpassword;
		this.gcontent = gcontent;
	}


	public String getGname() {
		return gname;
	}

	public String getGpassword() {
		return gpassword;
	}

	public String getGcontent() {
		return gcontent;
	}


	
}
