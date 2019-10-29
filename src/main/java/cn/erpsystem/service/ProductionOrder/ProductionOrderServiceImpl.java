package cn.erpsystem.service.ProductionOrder;

import cn.erpsystem.dao.ProductionOrder.ProductionOrderMapper;
import cn.erpsystem.pojo.ProductionOrder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service("productionOrderService")
public class ProductionOrderServiceImpl implements ProductionOrderService {

    @Resource
    ProductionOrderMapper proOrderMapper;
    @Override
    public List<ProductionOrder> getshowPro() {
        return proOrderMapper.getshowPro();
    }

    @Override
    public int addProOrder(ProductionOrder proOrder) {
        List<ProductionOrder> list=proOrderMapper.getshowPro();
        int poID =(list.get(list.size()-1).getPid())+1;
        Date now = new Date();//获取当前时间
        SimpleDateFormat sim = new SimpleDateFormat("yyMMddhhmm");
        String datenow = sim.format(now);
        String p_porder ="Pro"+datenow+poID;
        proOrder.setP_porder(p_porder);
        return proOrderMapper.addProOrder(proOrder);
    }

    @Override
    public List<ProductionOrder> getByProporderOrProname(String p_porder, String p_pname) {
        return proOrderMapper.getByProporderOrProname(p_porder,p_pname);
    }

    @Override
    /*修改前查询*/
    public List<ProductionOrder> selPro(Integer pid) {
        return proOrderMapper.selPro(pid);
    }

    @Override
    public int updatePro(Integer pid,ProductionOrder pro) {
        return proOrderMapper.updatePro(pid,pro);
    }

    @Override
    public int deletePro(Integer pid) {
        return proOrderMapper.deletePro(pid);
    }
}
