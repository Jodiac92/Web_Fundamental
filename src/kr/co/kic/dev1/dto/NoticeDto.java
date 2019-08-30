package kr.co.kic.dev1.dto;

public class NoticeDto {
	private int num;
	private String writer;
	private String title;
	private String content;
	private String regdate;
	public NoticeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeDto(int num, String writer, String title, String content, String regdate) {
		super();
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}
	public NoticeDto(int num, String writer, String title, String regdate) {
		// TODO Auto-generated constructor stub
		this(num, writer, title, null, regdate); //재사용(100점)
		/*
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.regdate = regdate; (50점)
		*/
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
