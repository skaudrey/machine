package app.sys.appmat.service.impl;

import app.common.dao.GenericEntityDao;
import app.sys.appmat.dao.AppAppmatDao;
import app.sys.appmat.service.AppAppmatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Component
@Transactional
public class AppAppmatImpl extends GenericEntityDao implements AppAppmatService {

    @Autowired
    AppAppmatDao appAppmatDao;

    @Override
    protected Class entityClass() {
        return null;
    }
}
