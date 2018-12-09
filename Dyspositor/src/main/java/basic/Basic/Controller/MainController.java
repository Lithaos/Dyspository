package basic.Basic.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/")
	private String main(Model model) {
		return "home";
	}

	@RequestMapping("/login")
	private String login(Model model) {
		return "login";
	}

}
