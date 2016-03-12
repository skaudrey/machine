package app.sys.appmat.service;

import app.sys.appmat.model.DicBusinesstypeEntity;
import app.sys.appmat.model.DicMaterialEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Transactional
public interface AppApplyService {
    List<Object[]> findAppSimpleByDeptId(int nDeptId);

    List<Object[]> findDeptByUserId(String sUserID);

    List<Object[]> findAppMatByAppId(int nBusinessTypeId);

    Integer saveMatType(DicMaterialEntity materialEntity);

    Integer saveBusinessType(DicBusinesstypeEntity businesstypeEntity);

}
