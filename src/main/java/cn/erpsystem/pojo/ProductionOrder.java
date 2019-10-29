package cn.erpsystem.pojo;

public class ProductionOrder {
	private Integer pid;//序号
	private String p_porder;//编号
	private String p_pname;//产品名称
	private Integer porder;//订单数量
	private String remarks;//备注
	
	//无参构造
	public ProductionOrder(){}
	/**
	 * 带参构造
	 * @param pid
	 * @param p_porder
	 * @param p_pname
	 * @param porder
	 * @param remarks
	 */
	public ProductionOrder(Integer pid, String p_porder, String p_pname,
			Integer porder, String remarks) {
		
		this.pid = pid;
		this.p_porder = p_porder;
		this.p_pname = p_pname;
		this.porder = porder;
		this.remarks = remarks;
	}
	
	//封装方法
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getP_porder() {
		return p_porder;
	}
	public void setP_porder(String p_porder) {
		this.p_porder = p_porder;
	}
	public String getP_pname() {
		return p_pname;
	}
	public void setP_pname(String p_pname) {
		this.p_pname = p_pname;
	}
	public Integer getPorder() {
		return porder;
	}
	public void setPorder(Integer porder) {
		this.porder = porder;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	
	
}
