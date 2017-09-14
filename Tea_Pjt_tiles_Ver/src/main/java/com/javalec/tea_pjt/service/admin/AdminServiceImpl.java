package com.javalec.tea_pjt.service.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.javalec.tea_pjt.model.member.dao.MemberDAO;
import com.javalec.tea_pjt.model.member.dto.MemberDTO;
import com.javalec.tea_pjt.model.shop.dao.OrdersDAO;
import com.javalec.tea_pjt.model.shop.dto.OrdersDTO;
import com.javalec.tea_pjt.service.chart.GoogleChartService;

@Repository
public class AdminServiceImpl implements AdminService{
	
	@Inject
	MemberDAO memberDAO;
	@Inject
	OrdersDAO orderDao;
	
	@Override
	public List<MemberDTO> selectUser(String option) {
		return memberDAO.selectUser(option);
	}

	@Override
	public int modifyUser(MemberDTO dto) {
		return memberDAO.modifyUser(dto);
	}

	@Override
	public List<OrdersDTO> product_preparation() {
		// TODO Auto-generated method stub
		return orderDao.product_preparation();
	}

	@Override
	public void product_status(String status,int order_id) {
		orderDao.product_status(status,order_id);		
	}
	
	

}
