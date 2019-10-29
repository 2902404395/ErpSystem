package cn.erpsystem.pojo;
/**
 * 部门实体类
 */
public class Department {
	/**
	 * 部门编号
	 */
	private Integer id;
	/**
	 * 部门名称
	 */
	private String department_name;
	/**
	 * 备注
	 */
	private Integer remarks;
	
	public Department() {
		super();
	}
	public Department(Integer id, String department_name, Integer remarks) {
		super();
		this.id = id;
		this.department_name = department_name;
		this.remarks = remarks;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public Integer getRemarks() {
		return remarks;
	}
	public void setRemarks(Integer remarks) {
		this.remarks = remarks;
	}
	
}
