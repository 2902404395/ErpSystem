package cn.erpsystem.pojo;
/**
 * 成品类
 */
public class Finished {
	/**
	 * 主键
	 */
	private Integer fno;
	/**
	 * 成品编号
	 */
	private String fid;
	/**
	 * 成品名称
	 */
	private String fname;
	/**
	 * 成品规格
	 */
	private String fspecification;
	/**
	 * 成品数量
	 */
	private Integer famount;
	/**
	 * 备注
	 */
	private String remarks;
	/**
	 * 无参构造
	 */
	public Finished(){}
	/**
	 * 成品构造函数
	 * @param fid
	 * @param fname
	 * @param fspecification
	 * @param famount
	 * @param remarks
	 */
	public Finished(Integer fon,String fid, String fname, String fspecification, Integer famount,
			String remarks) {
		super();
		this.fno = fon;
		this.fid=fid;
		this.fname = fname;
		this.fspecification = fspecification;
		this.famount = famount;
		this.remarks = remarks;
	}
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFspecification() {
		return fspecification;
	}
	public void setFspecification(String fspecification) {
		this.fspecification = fspecification;
	}
	public Integer getFamount() {
		return famount;
	}
	public void setFamount(Integer famount) {
		this.famount = famount;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
