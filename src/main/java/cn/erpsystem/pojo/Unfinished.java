package cn.erpsystem.pojo;
/**
 * 半成品类
 */
public class Unfinished {
	/**
	 * 主键
	 */
	private Integer uno;
	/**
	 * 半成品编号
	 */
	private String uid;
	/**
	 * 半成品名称
	 */
	private String uname;
	/**
	 * 半成品规格
	 */
	private String uspecification;
	/**
	 * 半成品数量
	 */
	private Integer uamount;
	/**
	 * 备注
	 */
	private String remarks;
	
	/**
	 * 半成品无参构造
	 */
	public Unfinished(){}
	/**
	 * 半成品构造
	 * @param uid
	 * @param uname
	 * @param uspecification
	 * @param uamount
	 * @param remarks
	 */
	public Unfinished(Integer uno,String uid,String uname, String uspecification,
			Integer uamount, String remarks) {
		super();
		this.uid = uid;
		this.uno=uno;
		this.uname = uname;
		this.uspecification = uspecification;
		this.uamount = uamount;
		this.remarks = remarks;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUspecification() {
		return uspecification;
	}
	public void setUspecification(String uspecification) {
		this.uspecification = uspecification;
	}
	public Integer getUamount() {
		return uamount;
	}
	public void setUamount(Integer uamount) {
		this.uamount = uamount;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
