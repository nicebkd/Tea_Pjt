package com.javalec.tea_pjt.controller.admin;




import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javalec.tea_pjt.model.member.dto.MemberDTO;
import com.javalec.tea_pjt.model.shop.dto.OrdersDTO;
import com.javalec.tea_pjt.service.admin.AdminService;
import com.javalec.tea_pjt.service.shop.OrdersService;


@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Inject
	AdminService adminService;
	
	@Inject 
	OrdersService ordersService;
	
	
	@RequestMapping("adminPage.do")
	public String adminPage(){
		return "admin/adminPage";
	}
	
	@RequestMapping("selectUser.do")
	public ModelAndView userAll(ModelAndView mav,@RequestParam(defaultValue="user") String option){
		mav.addObject("selectUser",adminService.selectUser(option));
		mav.setViewName("admin/selectUser");
		return mav;
	}
	
/*	@RequestMapping("modifyUser.do")
	public ResponseEntity<String> modifyUser(MemberDTO dto){
		
		ResponseEntity<String> entity = null;
		int result = -1;
		
		result = adminService.modifyUser(dto);
		
		System.out.println("~~~~~~~~~~~~~~~result 값 : " + result);
		if(result >=1 ){
			entity = new ResponseEntity<String>("success", HttpStatus.OK);		
		}else{
			entity = new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);		
		}
		
		return entity;
	}*/
	
	@RequestMapping("modifyUser.do")
	public String modifyUser(MemberDTO dto){
		adminService.modifyUser(dto);
		return "redirect:selectUser.do";
	}
	
	@RequestMapping("order_page.do")
	public String order_page(){
		return "admin/order_page";
	}
	
	@RequestMapping("order_list.do")
	public String order_list(Model model){
		
		List<OrdersDTO> list = new ArrayList<>();
		list = adminService.product_preparation();
		model.addAttribute("list",list);
		return "admin/order_list";
	}
	
	@RequestMapping("order_list_detail")
	public String order_list_detail(int order_id
			,Model model){
		List<OrdersDTO> list = new ArrayList<>();
		list = ordersService.select_orders(order_id);
		model.addAttribute("list",list);
		return "admin/order_detail";
	}
	
	@RequestMapping("product_status.do")
	public String product_status(String status,int order_id){
		
		adminService.product_status(status, order_id);
		return "redirect:/admin/order_page.do";
	}

	
}
