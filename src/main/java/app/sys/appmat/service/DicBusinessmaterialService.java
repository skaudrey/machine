package app.sys.appmat.service;

import app.sys.appmat.model.DicBusinessmaterialEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Skaudrey on 2016/3/11.
 */
@Transactional
public interface DicBusinessmaterialService {
    boolean saveOrUpdateBusinessMat(List<DicBusinessmaterialEntity> businessmaterialEntity);
}
