package cn.erpsystem.pojo;
/**
 * 采购订单类
 */
public class PurchaseOrder {
	/**
	 * 采购编号
	 */
	private Integer pid;
	/**
	 * 采购订单
	 */
	private String p_order;
	/**
	 * 采购名称
	 */
	private String pname;
	/**
	 * 采购数量
	 */
	private Integer pamount;
	/**
	 * 备注
	 */
	private String remarks;
	/**
	 * 无参构造
	 */
	public PurchaseOrder(){}
	/**
	 * 构造函数
	 * @param pid
	 * @param p_order
	 * @param pname
	 * @param pamount
	 * @param remarks
	 */
	public PurchaseOrder(String p_order, String pname, Integer pamount,
			String remarks) {
		super();
		this.p_order = p_order;
		this.pname = pname;
		this.pamount = pamount;
		this.remarks = remarks;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getP_order() {
		return p_order;
	}
	public void setP_order(String p_order) {
		this.p_order = p_order;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getPamount() {
		return pamount;
	}
	public void setPamount(Integer pamount) {
		this.pamount = pamount;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
}
