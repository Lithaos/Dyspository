package basic.Basic.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import basic.Basic.model.Company;
import basic.Basic.model.Driver;
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
	public String registerDriver(@Valid Driver user, BindingResult result) {
		return "register/driver";
	}

	@RequestMapping(value = "/driver", method = RequestMethod.POST)
	public String saveDriver(HttpServletRequest request, @Valid Driver user, BindingResult result) {
		if (result.hasErrors()) {
			return "/register/driver";
		} else {
			user.setRole("driver");
			userRepository.save(user);
			try {
				request.login(user.getEmail(), user.getPassword());
			} catch (ServletException e) {
				e.printStackTrace();
			}
			return "home";
		}
	}

	@RequestMapping(value = "/company", method = RequestMethod.GET)
	public String registerCompany(@Valid Company user, BindingResult result) {
		return "register/company";
	}

	@RequestMapping(value = "/company", method = RequestMethod.POST)
	public String saveCompany(HttpServletRequest request, @Valid Company user, BindingResult result) {
		if (result.hasErrors()) {
			return "/register/company";
		} else {
			user.setRole("company");
			userRepository.save(user);
			try {
				request.login(user.getEmail(), user.getPassword());
			} catch (ServletException e) {
				e.printStackTrace();
			}
			return "home";
		}
	}

}
