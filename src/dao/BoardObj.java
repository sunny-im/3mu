package dao;

public class BoardObj {

	private String fno,ftitle,id,fcontent,fimage,fdate;

	public BoardObj(String fno, String ftitle, String id, String fcontent,  String fimage, String fdate) {
		super();
		this.fno = fno;
		this.ftitle = ftitle;
		this.id = id;
		this.fcontent = fcontent;
		this.fimage = fimage;
		this.fdate = fdate;
	}

	public String getFno() {
		return fno;
	}

	public String getFtitle() {
		return ftitle;
	}

	public String getId() {
		return id;
	}
	
	public String getFcontent() {
		return fcontent;
	}

	public String getFimage() {
		return fimage;
	}

	public String getFdate() {
		return fdate;
	}
	
	
}
