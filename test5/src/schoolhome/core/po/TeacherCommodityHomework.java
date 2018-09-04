package schoolhome.core.po;

public class TeacherCommodityHomework {
	private int id;
	private int H_ID;
	private int commodity_id;
	private int teacher_id;
	private Homework homework;
	private Commodity commodity;
	private Teacher teacher;
	
	
	
	public TeacherCommodityHomework(int id, int h_ID, int commodity_id, int teacher_id) {
		super();
		this.id = id;
		H_ID = h_ID;
		this.commodity_id = commodity_id;
		this.teacher_id = teacher_id;
	}
	
	public TeacherCommodityHomework() {
		super();
	}
	
	public int getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getH_ID() {
		return H_ID;
	}
	public void setH_ID(int h_ID) {
		H_ID = h_ID;
	}
	public int getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(int commodity_id) {
		this.commodity_id = commodity_id;
	}
	public Homework getHomework() {
		return homework;
	}
	public void setHomework(Homework homework) {
		this.homework = homework;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	
	
}
