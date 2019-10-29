package cn.erpsystem.service.User;

import cn.erpsystem.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {
    /***
     * 登录
     * @param username
     * @return
     */
    User login(@Param("username") String username,
               @Param("password") String password);
}
