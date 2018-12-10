package basic.Basic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OffertsController {

	@RequestMapping("/offer")
	private String newOffer(Model model) {
		return "newoffer";
	}

	@RequestMapping("/offerts")
	private String offerts(Model model) {
		return "offerts";
	}

}
