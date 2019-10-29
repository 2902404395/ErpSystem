import cn.erpsystem.pojo.ProductionOrder;
import cn.erpsystem.service.ProductionOrder.ProductionOrderService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {

    @Test
    public void qw(){
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        ProductionOrderService proService = (ProductionOrderService) ctx.getBean("productionOrderService");

        List<ProductionOrder> pro = proService.getByProporderOrProname("","手");
        System.out.println(pro.size());
    }
}
