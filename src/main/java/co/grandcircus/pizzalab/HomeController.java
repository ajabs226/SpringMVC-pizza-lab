package co.grandcircus.pizzalab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showIndex() {
		return "index";
	}

	@RequestMapping("/specialty")
	public String displaySpecialty() {
		return "specialty";
	}

	@RequestMapping("/specialtyPizza")
	public String displaySpecialtyPizza(@RequestParam String name, @RequestParam double price, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "specialty";
	}

	@RequestMapping("/review")
	public String displaySubmitReview() {
		return "review";
	}

	@PostMapping("/review")
	public String submitReviewForm(@RequestParam String name, @RequestParam String comment, @RequestParam int rating,
			Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		return "confirmation";
	}

	@RequestMapping("/confirmation")
	public String displayConfirmation() {
		return "confirmation";
	}

	@RequestMapping("/customPizzaBuilder")
	public String displayCustomPizzaBuilder() {
		return "customPizzaBuilder";
	}

	@RequestMapping("/customPizza")
	public String displayCustomPizza() {
		return "customPizza";
	}

	@PostMapping("/customPizza")
	public String submitCustomPizza(@RequestParam String size, @RequestParam int toppings,
			@RequestParam(defaultValue = "false") Boolean glutenFree, @RequestParam String special, Model model) {
		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("glutenFree", glutenFree);
		model.addAttribute("special", special);
		double price = 0;
		String glutenChoice = "";

		if (size.equals("Small")) {
			price = 7 + (toppings * .5);
		} else if (size.equals("Medium")) {
			price = 10 + (toppings * 1);
		} else if (size.equals("Large")) {
			price = 12 + (toppings * 1.25);
		}

		if (glutenFree) {
			glutenChoice = "Yes";
		} else {
			glutenChoice = "No";
		}

		if (glutenFree) {
			price += 2;
		}
		model.addAttribute("glutenChoice", glutenChoice);
		model.addAttribute("price", price);
		return "customPizza";
	}

}
