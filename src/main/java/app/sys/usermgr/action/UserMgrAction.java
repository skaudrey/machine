package app.sys.usermgr.action;

import app.common.Constant;
import app.common.action.GenericActionSupport;
import app.sys.usermgr.model.UserUserEntity;
import app.sys.usermgr.service.UserMgrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2016/2/25 0025.
 */
@Component
public class UserMgrAction extends GenericActionSupport{
    private String account;
    private String password;
    @Autowired
    private UserMgrService service;

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    public String UserLogin() {
        UserUserEntity user = service.getUserEntityByParam(account, password);
        if (user != null) {
            mSessionMap.put(Constant.USER_ID, user.getUpId());
            mSessionMap.put(Constant.USER_NAME, user.getName());
            super.printForAjax("1");
        }else {
            super.printForAjax("0");
        }
        return "";
    }


    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
