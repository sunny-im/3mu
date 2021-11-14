package DAO;

public class BoardObj {

	private String fno,ftitle,fauthor,fcontent,fimage,fdate;

	public BoardObj(String fno, String ftitle, String fcontent, String fauthor, String fimage, String fdate) {
		super();
		this.fno = fno;
		this.ftitle = ftitle;
		this.fcontent = fcontent;
		this.fauthor = fauthor;
		this.fimage = fimage;
		this.fdate = fdate;
	}

	public String getFno() {
		return fno;
	}

	public String getFtitle() {
		return ftitle;
	}

	public String getFcontent() {
		return fcontent;
	}

	public String getFauthor() {
		return fauthor;
	}

	public String getFimage() {
		return fimage;
	}

	public String getFdate() {
		return fdate;
	}
	
	
}
