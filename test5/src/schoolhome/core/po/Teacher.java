package schoolhome.core.po;

import java.util.ArrayList;

public class Teacher {
	private int id;
	private String userName;
	private String password;
	private String teacherName;
	private int age;
	private String telephone;
	private String gender;
	private ArrayList<ClassBean> classBeanList;
	private ArrayList<ClassBeanWithCommodity> classBeanWithCommodityList;
	private ArrayList<TeacherCommodityHomework> teacherCommodityHomeworkList;
	public Teacher(int id, String userName, String password, String teacherName, int age, String telephone,
			String gender) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.teacherName = teacherName;
		this.age = age;
		this.telephone = telephone;
		this.gender = gender;
	}
	
	public ArrayList<TeacherCommodityHomework> getTeacherCommodityHomeworkList() {
		return teacherCommodityHomeworkList;
	}

	public void setTeacherCommodityHomeworkList(ArrayList<TeacherCommodityHomework> teacherCommodityHomeworkList) {
		this.teacherCommodityHomeworkList = teacherCommodityHomeworkList;
	}

	public ArrayList<ClassBeanWithCommodity> getClassBeanWithCommodityList() {
		return classBeanWithCommodityList;
	}

	public void setClassBeanWithCommodityList(ArrayList<ClassBeanWithCommodity> classBeanWithCommodityList) {
		this.classBeanWithCommodityList = classBeanWithCommodityList;
	}

	public ArrayList<ClassBean> getClassBeanList() {
		return classBeanList;
	}

	public void setClassBeanList(ArrayList<ClassBean> classBeanList) {
		this.classBeanList = classBeanList;
	}

	public Teacher() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
