package com.csis3275.controller_yde_89;



import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csis3275.model_yde_89.Order_yde_89;
import com.csis3275.model_yde_89.Pizza_yde_89;



@Controller
public class PizzaOrderController_yde_89{
	@RequestMapping("/")
	public String orderForm(ModelMap model) {
		model.addAttribute("newOrder", new Pizza_yde_89());
		return "PizzaOrder";
	}

	@PostMapping("/order")
	public String orderPizza(Pizza_yde_89 pizza, BindingResult result, ModelMap model) {
		
		model.addAttribute("newOrder", pizza);
		String orderResult = pizza.toString();
		model.addAttribute("orderResult", orderResult);
		return "BillView";
	}
}
