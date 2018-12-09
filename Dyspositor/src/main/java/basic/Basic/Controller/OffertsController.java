package basic.Basic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OffertsController {

	@RequestMapping("/offerts")
	private String offerts(Model model) {
		return "offerts";
	}

}
