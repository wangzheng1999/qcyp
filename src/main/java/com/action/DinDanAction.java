package com.action;

import java.util.List;

import com.domain.DinDan;
import com.opensymphony.xwork2.ActionSupport;
import com.service.DinDanService;

public class DinDanAction extends ActionSupport {

	private static final long serialVersionUID = -921631742792083080L;
	private DinDanService dinDanService;
	private Integer uid;//用户id
	private List<DinDan> dinDans;
	private Integer did;//订单id
	private String status;//订单状态


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public DinDanService getDinDanService() {
		return dinDanService;
	}

	public void setDinDanService(DinDanService dinDanService) {
		this.dinDanService = dinDanService;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public List<DinDan> getDinDans() {
		return dinDans;
	}

	public void setDinDans(List<DinDan> dinDans) {
		this.dinDans = dinDans;
	}

	public String selectOrderByUid() {
		dinDans = dinDanService.selectOrderByUid(uid);
		return SUCCESS;
	}
	
	public String selectOrderByDid(){
		DinDan dinDan = new DinDan();
		dinDan = dinDanService.selectOrderByDid(did);
		return SUCCESS;
	}
	public String updateOrderStatus(){
		DinDan dinDan = dinDanService.selectOrderByDid(did);
		dinDan.setStatus(status);
		dinDanService.update(dinDan);
		if(status.equals("已发货")){
			return "sj";
		}else{
			return "yh";
		}
		
	}
	
	public String selectAllOrder(){
		dinDans=dinDanService.selectAllOrder();
		return SUCCESS;
	}
	

}
