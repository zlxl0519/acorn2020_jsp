package test.japan.dto;

public class JapanDto {
	private int num;
	private String name;
	private String note;
	
	public JapanDto() {}

	public JapanDto(int num, String name, String note) {
		super();
		this.num = num;
		this.name = name;
		this.note = note;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
	
}
