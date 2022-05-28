package kr.or.abnext.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {

	@Autowired
	private ProductService productServ;
	
	@RequestMapping(value = "productList", method = RequestMethod.GET)
	public String productListCtrl(Model model) {
		System.out.println("상품구매~!!");
		
		return "product/productList";
	}
	
}
