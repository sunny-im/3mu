package dao;

public class MReplyObj {
	private String no, mno, id, content, time;
	
	public MReplyObj( String no, String mno, String id, String content, String time) {
		this.no = no;
		this.mno= mno;
		this.id = id;
		this.content =content;
		this.time = time;
	}

	public String getNo() {
		return no;
	}

	public String getMno() {
		return mno;
	}

	public String getId() {
		return id;
	}

	public String getContent() {
		return content;
	}

	public String getTime() {
		return time;
	}
}
