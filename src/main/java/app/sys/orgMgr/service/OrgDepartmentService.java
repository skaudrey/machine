package app.sys.orgMgr.service;

import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/3/12.
 */
@Transactional
public interface OrgDepartmentService {
    String getDistrictOfDept(String userId);
}
