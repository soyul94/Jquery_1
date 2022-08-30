package kr.kopo.domain;

public class SampleVO {
	
	private Integer mno;
	private String firstName;
	private String lastName;
	
	public SampleVO() {
		super();
	}
	
	public SampleVO(Integer mno, String firstName, String lastName) {
		super();
		this.mno=mno;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public Integer getMno() {
		return mno;
	}

	public void setMno(Integer mno) {
		this.mno = mno;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
}
