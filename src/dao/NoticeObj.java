package dao;

public class NoticeObj {
	private String nid, ntitle, notice, ntime;
	
	public NoticeObj(String nid, String ntitle, String notice, String ntime) {
		this.nid = nid;
		this.ntitle = ntitle;
		this.notice = notice;
		this.ntime = ntime;
	}

	public String getNid() {
		return nid;
	}

	public String getNtitle() {
		return ntitle;
	}

	public String getNotice() {
		return notice;
	}

	public String getNtime() {
		return ntime;
	}
}
