package dao;

public class MinichatObj {

	private String no, id, ccontent, ctime;
	
	public MinichatObj(String no, String id, String ccontent, String ctime) {
		this.no = no;
		this.id = id;
		this.ccontent = ccontent;
		this.ctime = ctime;
	}

	public String getNo() {
		return no;
	}

	public String getId() {
		return id;
	}

	public String getCcontent() {
		return ccontent;
	}

	public String getCtime() {
		return ctime;
	}
}
