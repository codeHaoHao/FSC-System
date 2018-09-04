package schoolhome.core.po;

public class StudentGrade {
	private int id;
	private int student_id;
	private int commodity_id;
	private double grade;
	private Student student;
	private Commodity commodity;
	public StudentGrade(int id, int student_id, int commodity_id, double grade) {
		super();
		this.id = id;
		this.student_id = student_id;
		this.commodity_id = commodity_id;
		this.grade = grade;
	}
	
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}

	public StudentGrade() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public int getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(int commodity_id) {
		this.commodity_id = commodity_id;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	
	
}
