package schoolhome.core.po;

import java.util.ArrayList;

public class ClassBean {
	private int id;
	private int classBeanName;
	private ArrayList<Commodity> commodityList;
	private ArrayList<Student> studentList;
	private ArrayList<Teacher> teacherList;
	private ArrayList<ClassBeanWithCommodity> classBeanWithCommodityList;
	public ClassBean(int id, int classBeanName) {
		super();
		this.id = id;
		this.classBeanName = classBeanName;
	}
	
	public ArrayList<ClassBeanWithCommodity> getClassBeanWithCommodityList() {
		return classBeanWithCommodityList;
	}

	public void setClassBeanWithCommodityList(ArrayList<ClassBeanWithCommodity> classBeanWithCommodityList) {
		this.classBeanWithCommodityList = classBeanWithCommodityList;
	}

	public ArrayList<Teacher> getTeacherList() {
		return teacherList;
	}

	public void setTeacherList(ArrayList<Teacher> teacherList) {
		this.teacherList = teacherList;
	}

	public ArrayList<Student> getStudentList() {
		return studentList;
	}
	public void setStudentList(ArrayList<Student> studentList) {
		this.studentList = studentList;
	}
	public ArrayList<Commodity> getCommodityList() {
		return commodityList;
	}
	public void setCommodityList(ArrayList<Commodity> commodityList) {
		this.commodityList = commodityList;
	}
	public int getClassBeanName() {
		return classBeanName;
	}
	public void setClassBeanName(int classBeanName) {
		this.classBeanName = classBeanName;
	}
	public ClassBean() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String printCommodityName(){
		String commodityListName="";
		for(Commodity commodity:commodityList){
			commodityListName+=commodity.getCommodityName();
			commodityListName+=",";
		}
		return commodityListName;
	}
}
