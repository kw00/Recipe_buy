package member.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.model.CheckId;
import member.model.Member;
import member.model.MemberDao;


@Controller
public class SignUpController {
   private static final String getPage = "SignUpForm";
   private static final String gotoPage = "main.hp";
   private static final String command = "/signup.me";
   
   @Autowired
   @Qualifier("myMemberDao")
   private MemberDao memberDao;
   
   @RequestMapping(value=command, method=RequestMethod.GET)
   public String doGetAction(){
      return getPage;
   }
   
   @RequestMapping(value=command, method=RequestMethod.POST)
   public ModelAndView doPostAction(@ModelAttribute("singup") @Valid Member member, BindingResult result){
      System.out.println("---signup Post start---");
      
      ModelAndView mav = new ModelAndView();
      
      boolean check = member.isBool();
      
      System.out.println("=========12231========"+check);
      
      String pwd1 = member.getPassword();
      String pwd2 = member.getPasswordcheck();
      
      System.out.println(pwd1+"============"+pwd2);
      
      if(!pwd1.equals(pwd2)){
         check = false;
      }
      
      member.setBool(check);
      
      System.out.println("================="+check);
      
      if(result.hasErrors()){
         System.out.println("--- 유효성 검사 실패 ---");
         mav.addObject("member", member);
         mav.setViewName(getPage);
         return mav;
      }
      
      String phone = member.getPhone1()+member.getPhone2()+member.getPhone3();
      member.setPhone(phone);
      
      System.out.println(member);
      
      
      int cnt = 0;
      
      cnt = memberDao.InsertMember(member);
      
      if(cnt>0){
         System.out.println(member.getId()+"님 회원가입 축하드립니다.");
         
         mav.addObject("message", member.getId()+"님 회원가입을 축하합니다.");
         mav.addObject("url", gotoPage);
         mav.setViewName("../homepage/result");
         
      }else{
         System.out.println("회원가입 실패.....");

         mav.addObject("message", "회원가입에 실패하였습니다.");
         mav.addObject("url", getPage);
         return new ModelAndView("../homepage/result");
      }
      
      System.out.println("---signup Post end---");
      return mav;
   }
   
   
   //Controller 클래스의 @Controller를 @RestController로 바꾸는 방법과
   //해당 메소드를 @ResponseBody를 사용하는 방법이 있다.
   //RESTful wep 방식으로 통신 시 get방식으로 파라미터를 넘기는 것 보다 파라미터 형식이 깨질 위험이 덜하다.
   @ResponseBody 
   @RequestMapping(value="checkId.me/{id}")//checkId?id=jsp+lesson
   public CheckId checkId(@PathVariable("id") String id){
      //id 사용가능한지 검사 후 id가 없으면 checkId : false
      //jackson lib을 추가해서 vo를 반환하면 자동으로 vo를 json으로 바꾼다.
      CheckId checkIdVo = new CheckId();
      boolean checkId = memberDao.selectId(id);
      checkIdVo.setId(id);
      checkIdVo.setCheckId(checkId);
      
      System.out.println("checkIdVo : "+ checkIdVo);
      //dao에서 id가 있는지 검사
      return checkIdVo;
   }
}