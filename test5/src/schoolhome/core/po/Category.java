package schoolhome.core.po;

public class Category {
	private Integer id;
	private String categoryName;
	private String description;
	private int sort;
	
	
	public Category() {
		super();
	}
	public Category(Integer id, String categoryName, String description, int sort) {
		super();
		this.id = id;
		this.categoryName = categoryName;
		this.description = description;
		this.sort = sort;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	
}
