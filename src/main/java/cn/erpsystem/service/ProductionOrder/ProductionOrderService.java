package cn.erpsystem.service.ProductionOrder;

import cn.erpsystem.pojo.ProductionOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductionOrderService {
    //显示全部
    List<ProductionOrder> getshowPro();

    //添加
    int addProOrder(ProductionOrder proOrder);

    //条件查询
    List<ProductionOrder> getByProporderOrProname(String p_porder, String p_pname);

    //修改
    List<ProductionOrder> selPro(Integer pid);

    int updatePro(Integer pid,ProductionOrder pro);

    //删除
    int deletePro(Integer pid);
}
