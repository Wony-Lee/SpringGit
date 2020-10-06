package com.tis.youhu;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tis.common.util.CommonUtil;
import com.tis.domain.AnimalVO;
import com.tis.service.AnimalService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class AnimController {
	
	@Inject
	private CommonUtil util;	
	
	@Inject
	private AnimalService animSvc;
	
	//��ȣ���� ���� �ҷ����� �޼��� 4��
	@RequestMapping(value="/animSecure", method=RequestMethod.GET)
	public String animByformS(Model model,@RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimSecureCount();
		List<AnimalVO> animSecure=this.animSvc.selectByFormS(form);
		System.out.println(animSecure);
		model.addAttribute("animSecure", animSecure);
		//model.addAttribute("count", count);
		
		return "Input/animSecure";
	}
	
	@RequestMapping(value="/formDOG_S", method=RequestMethod.GET)
	public String animByformSDog(Model model, @RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimAdoptCount();
		List<AnimalVO> animSecure=this.animSvc.selectByFormS(form);
		model.addAttribute("animSecure", animSecure);
		
		List<AnimalVO> dogList=this.animSvc.selectByFormS("1");//��
		
		model.addAttribute("form1", "��");
		model.addAttribute("DOGList", dogList);
		
		//model.addAttribute("count", count);
		
		return "Input/formDOG_S";
	}
	@RequestMapping(value="/formCAT_S", method=RequestMethod.GET)
	public String animByformSCAT(Model model, @RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimAdoptCount();
		List<AnimalVO> animSecure=this.animSvc.selectByFormS(form);
		model.addAttribute("animSecure", animSecure);
		
		List<AnimalVO> catList=this.animSvc.selectByFormS("2");//�����
		
		model.addAttribute("form2", "�����");
		model.addAttribute("CATList", catList);
		
		//model.addAttribute("count", count);
		
		return "Input/formCAT_S";
	}
	
	@RequestMapping(value="/formGITA_S", method=RequestMethod.GET)
	public String animByformSGITA(Model model, @RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimAdoptCount();
		List<AnimalVO> animSecure=this.animSvc.selectByFormS(form);
		model.addAttribute("animSecure", animSecure);
		
		List<AnimalVO> gitaList=this.animSvc.selectByFormS("3");//��Ÿ
		
		//model.addAttribute("count", count);
		model.addAttribute("form3", "��Ÿ");
		model.addAttribute("GITAList", gitaList);
		
		return "Input/formGITA_S";
	}
	
	//�Ծ�Ϸ� ���� �ҷ����� �޼��� 4��
	@RequestMapping(value="/animAdopt", method=RequestMethod.GET)
	public String animByformA(Model model, @RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimAdoptCount();
		List<AnimalVO> animAdopt=this.animSvc.selectByFormA(form);
		System.out.println(animAdopt);
		model.addAttribute("animAdopt", animAdopt);
		
		//model.addAttribute("count", count);
		
		return "Input/animAdopt";
	}
	
	@RequestMapping(value="/formDOG_A", method=RequestMethod.GET)
	public String animByformADog(Model model, @RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimAdoptCount();
		List<AnimalVO> animAdopt=this.animSvc.selectByFormA(form);
		model.addAttribute("animAdopt", animAdopt);
		
		List<AnimalVO> dogList=this.animSvc.selectByFormA("1");//��
		
		model.addAttribute("form1", "��");
		model.addAttribute("DOGList", dogList);
		
		//model.addAttribute("count", count);
		
		return "Input/formDOG_A";
	}
	@RequestMapping(value="/formCAT_A", method=RequestMethod.GET)
	public String animByformACAT(Model model, @RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimAdoptCount();
		List<AnimalVO> animAdopt=this.animSvc.selectByFormA(form);
		model.addAttribute("animAdopt", animAdopt);
		
		List<AnimalVO> catList=this.animSvc.selectByFormA("2");//�����
		
		model.addAttribute("form2", "�����");
		model.addAttribute("CATList", catList);
		
		//model.addAttribute("count", count);
		
		return "Input/formCAT_A";
	}
	
	@RequestMapping(value="/formGITA_A", method=RequestMethod.GET)
	public String animByformAGITA(Model model, @RequestParam(defaultValue="") String form) {
		
		//int count = this.animSvc.getAnimAdoptCount();
		List<AnimalVO> animAdopt=this.animSvc.selectByFormA(form);
		model.addAttribute("animAdopt", animAdopt);
		
		List<AnimalVO> gitaList=this.animSvc.selectByFormA("3");//��Ÿ
		
		//model.addAttribute("count", count);
		model.addAttribute("form3", "��Ÿ");
		model.addAttribute("GITAList", gitaList);
		
		return "Input/formGITA_A";
	}
	
	//��ȣ���� �μ�Ʈ ��
	@RequestMapping("/anim1InputForm")
	public String anim1InputForm(Model model) {
		
		return "Input/anim1Input";
	}
	
	//�Ծ絿�� �μ�Ʈ ��
	@RequestMapping("/anim2InputForm")
	public String anim2InputForm(Model model) {
		
		return "Input/anim2Input";
	}
	
	//�μ�Ʈ������ �μ�Ʈ�� �߻���
	@PostMapping("/animInsert")
	public String animInsert(Model model, HttpServletRequest req,
			@ModelAttribute("Anim") AnimalVO anim,
			@RequestParam("mfilename") MultipartFile mfilename) {
		
		ServletContext ctx = req.getServletContext();
		String upDir = ctx.getRealPath("/Upload");
		System.out.println(upDir);
		if(!mfilename.isEmpty()) {
			try {
				mfilename.transferTo(new File(upDir,
						mfilename.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			anim.setImage(mfilename.getOriginalFilename());
		}else {
			anim.setImage("noimage.png");
		}
		
		int n = animSvc.animInsert(anim);
		System.out.println(n);
		
		
		String str = (n>0)?"���ۼ� ����":"���ۼ� ����";
		String loc = (n>0)?"animSecure":"javascript:history.back()";
		
		model.addAttribute("message", str);
		model.addAttribute("loc",loc);
		
		
		
		return util.addMSgLoc(model, str, loc);
	}
	
	@RequestMapping("/animInfo")
	public String animInfo(Model model, @RequestParam(defaultValue="") String iidx) {
		//System.out.println(iidx);
		AnimalVO anim=this.animSvc.animInfo(iidx);
		model.addAttribute("anim", anim);
		return "Input/animView";
	}
	
	@RequestMapping("/animUpdForm")
	public String animUpdForm(Model model, @RequestParam(defaultValue="") String iidx) {
		System.out.println(iidx);
		List<AnimalVO> animUpdForm=this.animSvc.selectByUpdForm(iidx);
		model.addAttribute("animal", animUpdForm.get(0));
		System.out.println(animUpdForm);
		return "Input/animUpd";
	}
	
	@PostMapping("/animUpdate")
	public String animUpdate(Model model, HttpServletRequest req,
			@ModelAttribute("Anim") AnimalVO anim,
			@RequestParam("mfilename") MultipartFile mfilename) {
		
		ServletContext ctx = req.getServletContext();
		String upDir = ctx.getRealPath("/Upload");
		System.out.println(upDir);
		if(!mfilename.isEmpty()) {
			try {
				mfilename.transferTo(new File(upDir,
						mfilename.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			anim.setImage(mfilename.getOriginalFilename());
		}else {
			anim.setImage("noimage.png");
		}
		
		int n = animSvc.animUpdate(anim);
		//System.out.println(n);
		
		String str = (n>0)?"�ۼ��� ����":"�ۼ��� ����";
		String loc = (n>0)?"animSecure":"javascript:history.back()";
		
		model.addAttribute("message", str);
		model.addAttribute("loc",loc);
		
		
		
		return util.addMSgLoc(model, str, loc);
		
	}
	
	@RequestMapping("/animDelete")
	public String animDelete(Model model, @RequestParam(defaultValue="") String iidx) {
		log.info("iidx=="+iidx);
		
		//��ȿ�� üũ
		
		int animDelete=this.animSvc.animDelete(iidx);
		model.addAttribute("animDelete", animDelete);
		
		String str = (animDelete>0)?"�� ���� ����":"�� ���� ����";
		String loc = (animDelete>0)?"animSecure":"javascript:history.back()";
		
		model.addAttribute("message", str);
		model.addAttribute("loc",loc);
		
		return util.addMSgLoc(model, str, loc);
		
	}
	
	
}
 