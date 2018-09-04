package schoolhome.core.po;

public class Parent {
	private int id;
	private String userName;
	private String password;
	private String parentName;
	private String profession;
	private String workspace;
	private Student child;
	private int student_id;
	private String telephone;
	private String gender;
	public Parent() {
		super();
	}

	public Parent(int id, String userName, String password, String parentName, String profession, String workspace,
			int student_id, String telephone) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.parentName = parentName;
		this.profession = profession;
		this.workspace = workspace;
		this.student_id = student_id;
		this.telephone = telephone;
	}
	
	public Parent(String userName, String password, String parentName, String profession, String workspace,
			int student_id, String telephone) {
		super();
		this.userName = userName;
		this.password = password;
		this.parentName = parentName;
		this.profession = profession;
		this.workspace = workspace;
		this.student_id = student_id;
		this.telephone = telephone;
	}
	
	public Parent(int id, String userName, String password, String parentName, String profession, String workspace,
			int student_id, String telephone, String gender) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.parentName = parentName;
		this.profession = profession;
		this.workspace = workspace;
		this.student_id = student_id;
		this.telephone = telephone;
		this.gender = gender;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public int getStudent_id() {
		return student_id;
	}


	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public String getParentName() {
		return parentName;
	}


	public void setParentName(String parentName) {
		this.parentName = parentName;
	}


	public Student getChild() {
		return child;
	}
	public void setChild(Student child) {
		this.child = child;
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
	
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getWorkspace() {
		return workspace;
	}
	public void setWorkspace(String workspace) {
		this.workspace = workspace;
	}
	
	
}
