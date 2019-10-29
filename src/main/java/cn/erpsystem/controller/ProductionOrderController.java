package cn.erpsystem.controller;

import cn.erpsystem.pojo.ProductionOrder;
import cn.erpsystem.service.ProductionOrder.ProductionOrderService;
import cn.erpsystem.service.User.UserService;
import com.alibaba.fastjson.JSONArray;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.json.JsonArray;
import java.util.List;

@Controller
@RequestMapping("proOrder")
public class ProductionOrderController {
    ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
    ProductionOrderService proService = (ProductionOrderService) ctx.getBean("productionOrderService");


    /*查询全部*/
    @RequestMapping("getallshow")
    @ResponseBody
    public String getshow(){
        List<ProductionOrder> ProOrderList = proService.getshowPro();
        return JSONArray.toJSONString(ProOrderList);
    }

    /*添加*/
    @RequestMapping("add")
    @ResponseBody
    public String add(@RequestParam(value = "pname",required = false) String pname,
                      @RequestParam(value = "pnum",required = false) Integer pnum,
                      @RequestParam(value = "textarea",required = false) String textarea){
        ProductionOrder productionOrder = new ProductionOrder();
        productionOrder.setP_pname(pname);
        productionOrder.setPorder(pnum);
        productionOrder.setRemarks(textarea);
        boolean flag = false;

        if(proService.addProOrder(productionOrder) >=1){
            flag =true;
        }else {
            flag =false;
        }
        return JSONArray.toJSONString(flag);
    }

    /*按条件查询*/
    @RequestMapping("ByProporderOrProname")
    @ResponseBody
    public String getByProporderOrProname(@RequestParam(value = "lorderid",required = false) String lorderid,
                                          @RequestParam(value = "lordername",required = false) String lordername){
        List<ProductionOrder> ProList = proService.getByProporderOrProname(lorderid,lordername);
        return JSONArray.toJSONString(ProList);
    }

    /*删除*/
    @RequestMapping("deletePro")
    @ResponseBody
    public String deletePro(@RequestParam(value = "pid",required = false) Integer pid){
        boolean delPid = false;
        if (proService.deletePro(pid)>=1){
            delPid = true;
        }else {
            delPid = false;
        }
        return  JSONArray.toJSONString(delPid);
    }
    /*修改前查询*/
    @RequestMapping("selPro")
    @ResponseBody
    public  String selPro(@RequestParam(value = "pid",required = false) Integer pid){
        return JSONArray.toJSONString(proService.selPro(pid));
    }

    /*修改*/
    @RequestMapping("updatePro")
    @ResponseBody
    public  String updatePro(@RequestParam(value = "pid",required = false) Integer pid,
                             @RequestParam(value = "pname",required = false) String pname,
                             @RequestParam(value = "pnum",required = false) Integer pnum,
                             @RequestParam(value = "textarea",required = false) String textarea){
        ProductionOrder pro = new ProductionOrder();
        pro.setP_pname(pname);
        pro.setPorder(pnum);
        pro.setRemarks(textarea);
        boolean flag = false;
        if (proService.updatePro(pid,pro) >=1){
            flag = true;
        }else {
            flag = false;
        }
        return JSONArray.toJSONString(flag);
    }
}
