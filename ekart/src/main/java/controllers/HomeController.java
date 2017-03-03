package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
	public class HomeController {

		public HomeController() {

			System.out.println("Creating the instance for home Controller");
		}

		@RequestMapping("/")
		public String home(){
			return "redirect:/home";
		}
		
		@RequestMapping("/home")
		public String homepage() {
			return "home";
		}

		@RequestMapping("/register")
		public String register() {
			return "register";
		}

		
		@RequestMapping("/contacts")
		public String contact() {
			return "ContactUs";
		}
		@RequestMapping("/aboutus")
		public String aboutus() {
			return "aboutus";
		}
		@RequestMapping("/login")
		public String login() {
			return "login";
			
		}
			
	}

