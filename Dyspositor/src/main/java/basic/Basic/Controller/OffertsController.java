package basic.Basic.Controller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import basic.Basic.model.AddresPoint;
import basic.Basic.model.Offert;
import basic.Basic.model.User;
import basic.Basic.repository.UserRepository;

@Controller
public class OffertsController {

	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/offer", method = RequestMethod.GET)
	private String newOffer(@Valid AddresPoint point, Model model, Principal principal) {
		String userName = (principal != null ? principal.getName() : "ANONYMOUS");
		if (userName.equals("ANONYMOUS")) {
			return "login";
		} else {
			User user = userRepository.findByEmail(userName);
			if (user != null) {
				model.addAttribute("userId", user.getId());
			}
			return "offerts/start";
		}
	}

	@RequestMapping(value = "/offer", method = RequestMethod.POST)
	private String postNewOffer(@Valid AddresPoint point, Model model, Principal principal) {
		String userName = (principal != null ? principal.getName() : "ANONYMOUS");
		if (userName.equals("ANONYMOUS")) {
			return "login";
		} else {
			User user = userRepository.findByEmail(userName);
			if (user != null) {
				model.addAttribute("userId", user.getId());
				user.setOffert(new Offert());
				user.getOffert().setUser(user);
				user.getOffert().setStartPoint(point);
				userRepository.save(user);
				return "offerts/end";
			} else {
				return "login";
			}

		}
	}

	@RequestMapping(value = "/step", method = RequestMethod.GET)
	private String endPoint(@Valid AddresPoint point, Model model, Principal principal) {
		String userName = (principal != null ? principal.getName() : "ANONYMOUS");
		if (userName.equals("ANONYMOUS")) {
			return "login";
		} else {
			User user = userRepository.findByEmail(userName);
			if (user != null) {
				model.addAttribute("userId", user.getId());
			}
			return "offerts/start";
		}
	}

	@RequestMapping(value = "/step", method = RequestMethod.POST)
	private String postEndPoint(@Valid AddresPoint point, Model model, Principal principal) {
		String userName = (principal != null ? principal.getName() : "ANONYMOUS");
		if (userName.equals("ANONYMOUS")) {
			return "login";
		} else {
			User user = userRepository.findByEmail(userName);
			if (user != null) {
				user.getOffert().setEndPoint(point);
				userRepository.save(user);
				return "home";
			} else {
				return "login";
			}

		}
	}

	@RequestMapping("/offerts")
	private String offerts(Model model) {
		return "offerts";
	}

}
