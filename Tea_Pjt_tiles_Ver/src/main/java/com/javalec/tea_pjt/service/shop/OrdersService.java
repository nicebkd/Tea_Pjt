package com.javalec.tea_pjt.service.shop;

import java.util.List;

import com.javalec.tea_pjt.model.shop.dto.OrdersDTO;

public interface OrdersService {

	//주문 등록 
	public void insert_order(OrdersDTO dto);
	public void insert_orders_detail(OrdersDTO dto);
	
	//주문 번호 
	public int selectRownum();
	// 차트
	public List<OrdersDTO> ordersCount(String option,int number);
	public List<OrdersDTO> ordersMoney(String option,int number);
	//
	public List<OrdersDTO> order_history(String userid);
	public List<OrdersDTO> orders_detail(String userid);
	public List<OrdersDTO> select_orders(int order_id);
	
	
	

}
