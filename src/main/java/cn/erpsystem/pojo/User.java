package cn.erpsystem.pojo;
/**
 * 用户类
 */
public class User {
	/**
	 * 用户编号
	 */
	private Integer id;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 用户密码
	 */
	private String password;
	/**
	 * 用户权限
	 * 与部门相关联
	 */
	private Integer power;
	/**
	 * 用户无参构造
	 */
	public User(){}
	/**
	 * 用户构造函数
	 * @param id
	 * @param username
	 * @param password
	 * @param power
	 */
	public User(Integer id, String username, String password, Integer power) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.power = power;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getPower() {
		return power;
	}
	public void setPower(Integer power) {
		this.power = power;
	}
	
	
}
