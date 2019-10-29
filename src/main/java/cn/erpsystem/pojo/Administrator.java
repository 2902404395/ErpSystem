package cn.erpsystem.pojo;
/**
 * 管理员类
 */
public class Administrator {
	/**
	 * 管理员编号
	 */
	private Integer admin_id;
	/**
	 * 管理员名称
	 */
	private String admin_name;
	/**
	 * 管理员密码
	 */
	private String password;
	/**
	 * 管理员无参构造
	 */
	public Administrator(){}
	/**
	 * 管理员构造方法
	 * @param admin_id
	 * @param admin_name
	 * @param password
	 */
	public Administrator(Integer admin_id, String admin_name, String password) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.password = password;
	}
	public Integer getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(Integer admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
