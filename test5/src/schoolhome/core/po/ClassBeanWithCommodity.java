package schoolhome.core.po;

import java.util.ArrayList;

public class ClassBeanWithCommodity {
	private int id;
	private int classBean_id;
	private int commodity_id;
	private int teacher_id;
	private ClassBean classBean;
	private Commodity commodity;
	private Teacher teacher;
	private ArrayList<ClassSchedule> classScheduleList;
	
	public ClassBeanWithCommodity(int id, int classBean_id, int commodity_id, int teacher_id) {
		super();
		this.id = id;
		this.classBean_id = classBean_id;
		this.commodity_id = commodity_id;
		this.teacher_id = teacher_id;
	}
	
	
	public ArrayList<ClassSchedule> getClassScheduleList() {
		return classScheduleList;
	}
	public void setClassScheduleList(ArrayList<ClassSchedule> classScheduleList) {
		this.classScheduleList = classScheduleList;
	}
	public ClassBean getClassBean() {
		return classBean;
	}
	public void setClassBean(ClassBean classBean) {
		this.classBean = classBean;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public ClassBeanWithCommodity() {
		super();
	}
	
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getClassBean_id() {
		return classBean_id;
	}
	public void setClassBean_id(int classBean_id) {
		this.classBean_id = classBean_id;
	}
	public int getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(int commodity_id) {
		this.commodity_id = commodity_id;
	}
	
	
	
	public boolean equals(ClassBeanWithCommodity obj) {
		boolean bl = false;
		if(this.classBean_id==obj.getClassBean_id()&&this.commodity_id==obj.commodity_id&&this.teacher_id==obj.getTeacher_id()){
			bl = true;
		}
		return bl;
	}
}
