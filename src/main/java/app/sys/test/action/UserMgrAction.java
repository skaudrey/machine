package app.sys.test.action;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.test.model.TestUserEntity;
import app.sys.test.service.TestUserMgrService;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2016/2/25 0025.
 */
@Component
public class UserMgrAction extends GenericActionSupport{
    private String username;
    private String password;
    @Autowired
    private TestUserMgrService service;

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    public String UserLogin() {
        TestUserEntity user = service.getUserEntityByParam(username, password);
        user.getUsername();
        if (user != null) {
            mSessionMap.put(Constant.USER_ID, user.getUid());
            mSessionMap.put(Constant.USER_NAME, user.getUsername());
            return "loginSuccess";
        }else {
            return INPUT;
        }
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
