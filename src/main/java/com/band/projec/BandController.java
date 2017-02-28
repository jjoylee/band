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
import com.band.domain.Band;
import com.band.domain.BandAccount;
import com.band.domain.BandCover;
import com.band.domain.BandImg;
import com.band.domain.Post;
import com.band.domain.Sticker;
import com.band.domain.StickerPost;
import com.band.service.BandAccountService;
import com.band.service.BandCoverService;
import com.band.service.BandImgService;
import com.band.service.BandService;
import com.band.service.PostService;
import com.band.service.StickerPostService;
import com.band.service.StickerService;

@Controller
@RequestMapping("/band/*")
public class BandController {

	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Inject
	private BandService bandService;
	@Inject
	private BandImgService bandImgService;
	@Inject
	private BandCoverService bandCoverService;
	@Inject
	private BandAccountService bandAccountService;
	@Inject
	private PostService postService;
	@Inject
	private StickerService stickerService;
	@Inject
	private StickerPostService stickerPostService;
	@RequestMapping(value = "/bandList" , method = RequestMethod.GET)
	public void bandList(Model model, HttpSession session) throws Exception {
	  logger.info("band");
	  model.addAttribute("list", bandService.findBandList(((Account)(session.getAttribute("login"))).getId()));
	  model.addAttribute("count", bandAccountService.countBand(((Account)(session.getAttribute("login"))).getId()));
	} 
	
	@RequestMapping(value = "/bandList", method = RequestMethod.POST)
	public String bandListPOST(RedirectAttributes rttr, @RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) throws Exception {
	    
		return "redirect:/account/email_login";
	}
	
	@RequestMapping(value = "/bandCreate" , method = RequestMethod.GET)
	public void bandCreate(Model model) throws Exception {
	  logger.info("band");
	} 
	
	@RequestMapping(value = "/bandCreate", method = RequestMethod.POST)
	public String bandCreatePOST(RedirectAttributes rttr, Band vo, @RequestParam("bandImgUrl") String bandImgUrl, @RequestParam("color") String color, HttpSession session) throws Exception {
	    //bandImg찾고 등록
	    BandImg bandImg = bandImgService.findByImgUrl(bandImgUrl);
	    
	    //bandCover 
	    BandCover bandCover = new BandCover();
	    bandCover.setColor(color);
	    if( bandImg != null)bandCover.setBandImgId(bandImg.getId());
	    if(bandCoverService.findBandCover(bandCover) == null) bandCoverService.insert(bandCover);
	    
	    //band
	    vo.setLeaderAccountId(((Account)(session.getAttribute("login"))).getId());
	    vo.setBandCoverId(bandCoverService.findBandCover(bandCover).getId());
	    bandService.insert(vo);

	    int bandId = bandService.findBand(vo).getId();
	    BandAccount bandAccount = new BandAccount();
	    bandAccount.setAccountId(((Account)(session.getAttribute("login"))).getId());
	    bandAccount.setBandId(bandService.findBand(vo).getId());
	    bandAccountService.insert(bandAccount);
	    
		return "redirect:/band/bandBoard?id=" + bandId;
	}
	
	@RequestMapping(value = "/bandBoard" , method = RequestMethod.GET)
	public void bandBoard(Model model,@RequestParam("id") Integer id) throws Exception {
	  logger.info("bandGet");
	  logger.info(String.valueOf(id));
	  model.addAttribute("band", bandService.findBandForBoard(id));
	  model.addAttribute("list", postService.findPostList(id));
	} 
	
	@RequestMapping(value = "/bandBoard", method = RequestMethod.POST)
	public String bandBoardPOST(RedirectAttributes rttr,@RequestParam("sticker") String stickerUrl, @RequestParam("text") String text, @RequestParam("bandId") int bandId, HttpSession session) throws Exception {
	    logger.info(stickerUrl);
	    String stickerArray[] = stickerUrl.split(" ");
		Post post = new Post(); 
	    post.setAccountId(((Account)(session.getAttribute("login"))).getId());
	    post.setText(text);
	    post.setBandId(bandId);
		postService.insert(post);
		if(stickerArray.length >= 1)
		{
			for(String s : stickerArray)
			{
				Sticker sticker = new Sticker();
				sticker.setStickerUrl(s);
				stickerService.insert(sticker);
				StickerPost stickerPost = new StickerPost();
				//stickerPost.setStickerId(stickerId);
			}
		}
		return "redirect:/band/bandBoard?id=" + bandId;
	}
}
