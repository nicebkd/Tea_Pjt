package com.javalec.tea_pjt.service.admin;

import java.util.List;

import com.javalec.tea_pjt.model.member.dto.MemberDTO;
import com.javalec.tea_pjt.model.shop.dto.OrdersDTO;

public interface AdminService {
	
	public List<MemberDTO> selectUser(String option);
	public int modifyUser(MemberDTO dto);
	public List<OrdersDTO> product_preparation();
	public void product_status(String status,int order_id);
	
}
