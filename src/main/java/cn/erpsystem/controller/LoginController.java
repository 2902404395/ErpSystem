package cn.erpsystem.controller;

import cn.erpsystem.pojo.User;
import cn.erpsystem.service.User.UserService;
import cn.erpsystem.tools.Constants;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class LoginController {
    ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
    UserService userService = (UserService) ctx.getBean("userService");


    /*跳转登陆页面*/
    @RequestMapping("/init")
    public String init(){
        return "ProductionOrder";
    }

    /*登录*/
    @RequestMapping("/login")
    public String login(@RequestParam("username")  String username,
                        @RequestParam("password") String password, HttpSession session){
        System.out.println("用户登录================>");
        User user = userService.login(username,password);
        if (user !=null){
            System.out.println(user);
            session.setAttribute(Constants.USER_SESSION,user);
            return "homepage";
        }
        return  "Login";
    }
}
