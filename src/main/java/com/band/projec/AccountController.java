package com.band.projec;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.band.domain.Account;
import com.band.service.AccountService;

@Controller
@RequestMapping("/account/*")
public class AccountController {
	
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Inject
	private AccountService accountService;
	
	@RequestMapping(value = "/email_login" , method = RequestMethod.GET)
	public void emailLogin(Model model) throws Exception {
	  logger.info("show all list......................");
	} 
	
	@RequestMapping(value = "/email_login", method = RequestMethod.POST)
	public String emailLoginPOST(RedirectAttributes rttr, @RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) throws Exception {
	    Account guest = accountService.findByEmail(email);
		if(guest != null)
		{
			if(guest.getPassword().equals(password))
			{
				session.setAttribute("login", guest);
				return "redirect:/band/bandList";
			}
			else return "redirect:/account/email_login";
		}
		return "redirect:/account/email_login";
	}
	
	@RequestMapping(value = "/email_sign_up" , method = RequestMethod.GET)
	public void emailSignUp(Model model) throws Exception {
	  logger.info("show all list......................");
	} 
	
	@RequestMapping(value = "/email_sign_up", method = RequestMethod.POST)
	public String emailSignUpPOST(Model model, Account vo,RedirectAttributes rttr, HttpSession session) throws Exception {
		Account a = accountService.findByEmail(vo.getEmail());
		if(a != null)
		{
			rttr.addFlashAttribute("result", "registered");
			return "redirect:/account/email_sign_up";
		}
		else accountService.insert(vo);
	    return "redirect:/account/email_login";
	}
}
