package schoolhome.core.po;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import schoolhome.core.dao.CommodityDao;

public class Student {
	
	private int id;
	private String studentName;
	private String idCard;//登录账号
	private String password;
	private int classNum;
	private String idnumber;
	private String gender;
	private String enrollyear;
	private ClassBean classBean;
	private ArrayList<Commodity> commodityList;
	private	ArrayList<StudentWithHomework> studentWithHomeworkList;
	public ArrayList<Commodity> getCommodityList() {
		return commodityList;
	}

	public void setCommodityList(ArrayList<Commodity> commodityList) {
		this.commodityList = commodityList;
	}



	public Student(int id, String studentName, String idCard, String password, int classNum) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.idCard = idCard;
		this.password = password;
		this.classNum = classNum;
	}
	
	public Student(int id, String studentName, String idCard, String password, int classNum, String idnumber,
			String gender, String enrollyear, ClassBean classBean, ArrayList<Commodity> commodityList) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.idCard = idCard;
		this.password = password;
		this.classNum = classNum;
		this.idnumber = idnumber;
		this.gender = gender;
		this.enrollyear = enrollyear;
		this.classBean = classBean;
		this.commodityList = commodityList;
	}


	
	public ArrayList<StudentWithHomework> getStudentWithHomeworkList() {
		return studentWithHomeworkList;
	}

	public void setStudentWithHomeworkList(ArrayList<StudentWithHomework> studentWithHomeworkList) {
		this.studentWithHomeworkList = studentWithHomeworkList;
	}

	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getEnrollyear() {
		return enrollyear;
	}



	public void setEnrollyear(String enrollyear) {
		this.enrollyear = enrollyear;
	}



	public String getIdnumber() {
		return idnumber;
	}



	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}



	public ClassBean getClassBean() {
		return classBean;
	}



	public void setClassBean(ClassBean classBean) {
		this.classBean = classBean;
	}



	public Student() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getClassNum() {
		return classNum;
	}
	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}
	
	public String studentGradeListToString(){
		
		String ss="";
		for(Commodity commodity:commodityList){
			ss+=commodity.getCommodityName()+":"+commodity.getGrade()+",";
		}
		return ss;
		
	}
	
	public double studentGradeByCommodityId(int id){
		
		for(Commodity commodity:commodityList){
			if(commodity.getId()==id)
				return commodity.getGrade();
		}
		
		return 0;
	}
}
