package kr.kopo.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kopo.domain.ProfessorVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	//홈화면을 만드는 컨트롤러.
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@GetMapping(value="getajax")
	public  String getajax(Model model) throws Exception {
		
		List<ProfessorVO> list = null;
		list = new ArrayList<ProfessorVO>();
		ProfessorVO vo = new ProfessorVO();
		String from = "1985-05-29";
		Date to;
		SimpleDateFormat transForm = new SimpleDateFormat("yyyy-MM-dd");
		to = transForm.parse(from);
		
		vo.setPid(1);
		vo.setPname("김상범");
		vo.setDept("컴정");
		vo.setPost("교수");
		vo.setPay(5000000);
		vo.setHire(to);
		vo.setMajor("프로그램");
		vo.setCampus("폴리텍4");
		list.add(vo);
		
		from="1995-06-28";
		transForm = new SimpleDateFormat("yyyy-MM-dd");
		to = transForm.parse(from);
		vo = new ProfessorVO();
		vo.setPid(2);
		vo.setPname("인은숙");
		vo.setDept("컴정");
		vo.setPost("부교수");
		vo.setPay(4000000);
		vo.setHire(to);
		vo.setMajor("프로그램");
		vo.setCampus("폴리텍6");
		list.add(vo);
		
		from="1996-12-01";
		transForm = new SimpleDateFormat("yyyy-MM-dd");
		to = transForm.parse(from);
		vo = new ProfessorVO();
		vo.setPid(3);
		vo.setPname("원종철");
		vo.setDept("전자");
		vo.setPost("부교수");
		vo.setPay(3000000);
		vo.setHire(to);
		vo.setMajor("전자계산기");
		vo.setCampus("폴리텍1");
		list.add(vo);
		
		from="1997-01-28";
		transForm = new SimpleDateFormat("yyyy-MM-dd");
		to = transForm.parse(from);
		vo = new ProfessorVO();
		vo.setPid(4);
		vo.setPname("이우열");
		vo.setDept("정통");
		vo.setPost("조교수");
		vo.setPay(2000000);
		vo.setHire(to);
		vo.setMajor("정보통신");
		vo.setCampus("폴리텍7");
		list.add(vo);
		
		model.addAttribute("list",list);
		
		return "getajax";
	}
	
	@RequestMapping(value = "/practice.do", method = RequestMethod.GET)
	public String practice(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "practice_3";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) throws ParseException {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date to;
		SimpleDateFormat tranForm = new SimpleDateFormat("yyyy-MM-dd");
		
		List<ProfessorVO> list = null;
		list=new ArrayList<ProfessorVO>();
		ProfessorVO vo= new ProfessorVO();
		
		String from="1985-05-29";
		to = tranForm.parse(from);
		vo.setPid(1);
		vo.setPname("김상범");
		vo.setDept("컴정");
		vo.setPost("교수");
		vo.setPay(5000000);
		vo.setHire(to);
		vo.setMajor("프로그램");
		vo.setCampus("폴리텍2");
		list.add(vo);
		
		from="1995-06-28";
		//tranForm= new SimpleDateFormat("yyyy-MM-dd");
		to = tranForm.parse(from);
		vo=new ProfessorVO();
		vo.setPid(2);
		vo.setPname("인은숙");
		vo.setDept("컴정");
		vo.setPost("부교수");
		vo.setPay(4000000);
		vo.setHire(to);
		vo.setMajor("프로그램");
		vo.setCampus("폴리텍6");
		list.add(vo);
		
		from="1996-12-01";
		to = tranForm.parse(from);
		vo=new ProfessorVO();
		vo.setPid(3);
		vo.setPname("원종철");
		vo.setDept("전자");
		vo.setPost("부교수");
		vo.setPay(3000000);
		vo.setHire(to);
		vo.setMajor("전자계산기");
		vo.setCampus("폴리텍1");
		list.add(vo);
		
		from="1997-01-28";
		to = tranForm.parse(from);
		vo=new ProfessorVO();
		vo.setPid(4);
		vo.setPname("이우열");
		vo.setDept("정통");
		vo.setPost("조교수");
		vo.setPay(2000000);
		vo.setHire(to);
		vo.setMajor("정보통신");
		vo.setCampus("폴리텍7");
		list.add(vo);
		
//		for(ProfessorVO v: list) {
//			System.out.println(v.getPid());
//		}
		
		model.addAttribute("list",list);
		
		return "list";
	}
}
