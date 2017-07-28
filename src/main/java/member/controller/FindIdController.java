package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;


@Controller
public class FindIdController {
   private static final String getPage = "FindId";
   private static final String gotoPage = "../views/home";
   private static final String command = "/findid.me";

   @Autowired
   @Qualifier("myMemberDao")
   private MemberDao memberDao;

   @RequestMapping(value=command, method=RequestMethod.GET)
   public String doGetAction(){
      return getPage;
   }

   @RequestMapping(value=command, method=RequestMethod.POST)
   public ModelAndView doPostAction(
         Member member,
         HttpSession session,
         HttpServletRequest request,
         HttpServletResponse response) throws IOException{

      ModelAndView mav = new ModelAndView();

/*      Map<String,String>map = new HashMap<String, String>();
      map.put("name", member.getName());
      map.put("ssn", member.getSsn());
      System.out.println("==============map==============");
      System.out.println(map.get("name"));
      System.out.println(map.get("ssn"));
      System.out.println("===============================");
      
      Member login = memberDao.getFindId(map) ;*/
      
      Member memdb =  this.memberDao.GetId(member.getName()) ; //DB mem 정보

      PrintWriter writer;
      response.setContentType("text/html;charset=UTF-8");
      writer = response.getWriter();
      if( memdb == null ){
         System.out.println("존재하지 않는 회원");

         writer.println("<script type='text/javascript'>");
         writer.println("alert('해당 아이디가 존재하지 않습니다.');");
         writer.println("history.back();");  
         writer.println("</script>");
         writer.flush();

         return new ModelAndView( getPage ) ;    

      }else{
         if ( member.getName().equals( memdb.getName() ) && 
               member.getSsn().equals( memdb.getSsn() )) {   

            System.out.println(memdb.getId());
            String id = memdb.getId();

            writer.println("<script type='text/javascript'>");
            writer.println("alert('아이디는 "+id+"입니다.');");
            writer.println("history.back();");  
            writer.println("</script>");
            writer.flush();
            
            
            return new ModelAndView( gotoPage ) ;

         }else{

            System.out.println("개인정보가 일치하지 않습니다.");
            writer = response.getWriter(); 
            writer.println("<script type='text/javascript'>");
            writer.println("alert('개인정보가 일치하지 않습니다.');");
            writer.println("history.back();"); 
            writer.println("</script>");
            writer.flush(); 

            return new ModelAndView( getPage ) ;
         } 
      }
   }

}