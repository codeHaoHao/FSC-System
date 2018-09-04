package schoolhome.core.po;

public class ClassSchedule {
	private int id;
	private int CCT_id;
	private int classTime;//该课程是星期几上课
	private int classLength;//该课程是第几节上课
	private ClassBeanWithCommodity classBeanWithCommodity;
	
	
	public ClassSchedule() {
		super();
	}
	public ClassSchedule(int id, int CCT_id, int classTime, int classLength) {
		super();
		this.id = id;
		this.CCT_id = CCT_id;
		this.classTime = classTime;
		this.classLength = classLength;
	}
	public ClassBeanWithCommodity getClassBeanWithCommodity() {
		return classBeanWithCommodity;
	}
	public void setClassBeanWithCommodity(ClassBeanWithCommodity classBeanWithCommodity) {
		this.classBeanWithCommodity = classBeanWithCommodity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCCT_id() {
		return CCT_id;
	}
	public void setCCT_id(int CCT_id) {
		this.CCT_id = CCT_id;
	}
	public int getClassTime() {
		return classTime;
	}
	public void setClassTime(int classTime) {
		this.classTime = classTime;
	}
	public int getClassLength() {
		return classLength;
	}
	public void setClassLength(int classLength) {
		this.classLength = classLength;
	}
	
	public String classSchduleToString(){
		String week="星期"+classTime;
		String segment="第"+classLength+"节";
		return week+segment;
	}
}
