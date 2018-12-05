package basic.Basic.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import basic.Basic.model.User;
import basic.Basic.repository.UserRepository;

@Controller
@RequestMapping("/register")
public class RegisterController {

	@Autowired
	UserRepository userRepository;

	@RequestMapping("/")
	public String register() {
		return "register/register";
	}

	@RequestMapping(value = "/driver", method = RequestMethod.GET)
	public String registerDriver(@Valid User user, BindingResult result) {
		return "register/driver";
	}

	@RequestMapping(value = "/driver", method = RequestMethod.POST)
	public String saveDriver(@Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return "/register/driver";
		} else {
			userRepository.save(user);
			return "home";
		}
	}

	@RequestMapping("/company")
	public String registerCompany() {
		return "register/company";
	}

}
