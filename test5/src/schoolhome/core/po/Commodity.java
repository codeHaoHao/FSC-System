package schoolhome.core.po;

import java.sql.Timestamp;
import java.util.ArrayList;

public class Commodity {
	private int id;
	private String commodityName;
	private String categoryName;
	private String description;
	private Timestamp createDate;
	private String photo;
	private ArrayList<Teacher> teacherList;//教这个课的老师们
	private Teacher classBeanTeacher;//当前班级这个课程的老师
	private double grade=0;//默认成绩为0
	public Commodity() {
		super();
	}
	public Commodity(int id, String commodityName, String categoryName, String description, Timestamp createDate,
			String photo) {
		super();
		this.id = id;
		this.commodityName = commodityName;
		this.categoryName = categoryName;
		this.description = description;
		this.createDate = createDate;
		this.photo = photo;
	}
	
	
	
	
	public Teacher getClassBeanTeacher() {
		return classBeanTeacher;
	}
	public void setClassBeanTeacher(Teacher classBeanTeacher) {
		this.classBeanTeacher = classBeanTeacher;
	}
	public ArrayList<Teacher> getTeacherList() {
		return teacherList;
	}
	public void setTeacherList(ArrayList<Teacher> teacherList) {
		this.teacherList = teacherList;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "Commodity [id=" + id + ", commodityName=" + commodityName + ", categoryName=" + categoryName
				+ ", description=" + description + ", createDate=" + createDate + ", photo=" + photo + "]";
	}
	
	public String teacherToString(){
		String ss="";
		for(Teacher teacher:teacherList)
			ss+=teacher.getTeacherName()+",";
		return ss;
	}
}
