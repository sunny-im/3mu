package dao;

public class MBoardObj {
	private String mno, id, msub, mtitle, mcontent, mimg, mtime;
	
	public MBoardObj(String mno, String id, String msub, String mtitle, String mcontent, String mimg, String mtime) {
		this.mno = mno;
		this.id = id;
		this.msub = msub;
		this.mtitle = mtitle;
		this.mcontent = mcontent;
		this.mimg = mimg;
		this.mtime = mtime;
	}
	public String getMno() {
		return mno;
	}

	public String getId() {
		return id;
	}


	public String getMsub() {
		return msub;
	}

	public String getMtitle() {
		return mtitle;
	}

	public String getMcontent() {
		return mcontent;
	}

	public String getMimg() {
		return mimg;
	}

	public String getMtime() {
		return mtime;
	}
}
