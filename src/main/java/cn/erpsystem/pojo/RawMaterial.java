package cn.erpsystem.pojo;
/**
 * 原料类
 */
public class RawMaterial {
	private Integer mno;//主键
	private String mid;//原料编号
	/**
	 * 原料名称
	 */
	private String mname;
	/**
	 * 原料规格
	 */
	private String mspecification;
	/**
	 * 原料数量
	 */
	private Integer mamount;
	/**
	 * 备注
	 */
	private String remarks;
	/**
	 * 原料无参构造
	 */
	public RawMaterial(){}
	/**
	 * 原料构造
	 * @param mid
	 * @param mname
	 * @param mspecification
	 * @param mamount
	 * @param remarks
	 */
	public RawMaterial(Integer mno,String mid, String mname, String mspecification,
			Integer mamount, String remarks) {
		super();
		this.mno=mno;
		this.mid = mid;
		this.mname = mname;
		this.mspecification = mspecification;
		this.mamount = mamount;
		this.remarks = remarks;
	}
	public Integer getMno() {
		return mno;
	}
	public void setMno(Integer mno) {
		this.mno = mno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMspecification() {
		return mspecification;
	}
	public void setMspecification(String mspecification) {
		this.mspecification = mspecification;
	}
	public Integer getMamount() {
		return mamount;
	}
	public void setMamount(Integer mamount) {
		this.mamount = mamount;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
