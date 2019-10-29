package cn.erpsystem.dao.User;

import cn.erpsystem.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    /***
     * 登录
     * @param username
     * @return
     */
    User login(@Param("username") String username);
}
