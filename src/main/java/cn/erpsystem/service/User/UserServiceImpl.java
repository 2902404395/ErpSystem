package cn.erpsystem.service.User;

import cn.erpsystem.dao.User.UserMapper;
import cn.erpsystem.pojo.User;
import cn.erpsystem.service.User.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Override
    public User login(String username,String password) {
        User user =userMapper.login(username);
        if (user !=null){
            if (user.getPassword().equals(password)){
                System.out.println(user.getUsername()+user.getPassword());
                return user;
            }
        }
        return null;
    }
}
