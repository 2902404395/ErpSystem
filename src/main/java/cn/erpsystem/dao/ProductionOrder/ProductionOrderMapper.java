package cn.erpsystem.dao.ProductionOrder;

import cn.erpsystem.pojo.ProductionOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductionOrderMapper {
    //显示全部
    List<ProductionOrder> getshowPro();

    //添加
    int addProOrder(ProductionOrder proOrder);

    //条件查询
    List<ProductionOrder> getByProporderOrProname(@Param("p_porder")String p_porder,
                                                  @Param("p_pname") String p_pname);

    //修改
    List<ProductionOrder> selPro(Integer pid);

    int updatePro(Integer pid,ProductionOrder pro);

    //删除
    int deletePro(Integer pid);
}
