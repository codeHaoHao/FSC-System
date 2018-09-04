package schoolhome.core.po;

public class StudentWithHomework {
	private int id;
	private int student_id;
	private int H_ID;
	private double grade;
	private int isDone;
	private String content;
	private String wordFilePath;
	private Student student;
	private Homework homework;
	

	

	public StudentWithHomework(int id, int student_id, int h_ID, double grade, int isDone, String content,
			String wordFilePath) {
		super();
		this.id = id;
		this.student_id = student_id;
		H_ID = h_ID;
		this.grade = grade;
		this.isDone = isDone;
		this.content = content;
		this.wordFilePath = wordFilePath;
	}



	public StudentWithHomework() {
		super();
	}
	
	public String getWordFilePath() {
		return wordFilePath;
	}

	public void setWordFilePath(String wordFilePath) {
		this.wordFilePath = wordFilePath;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public int getH_ID() {
		return H_ID;
	}
	public void setH_ID(int h_ID) {
		H_ID = h_ID;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	public int getIsDone() {
		return isDone;
	}
	public void setIsDone(int isDone) {
		this.isDone = isDone;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Homework getHomework() {
		return homework;
	}
	public void setHomework(Homework homework) {
		this.homework = homework;
	}
	
}
