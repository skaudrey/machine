package app.sys.dmzMgr.modual;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/3/12.
 */
public class DmzContentmediaEntityPK implements Serializable {
    private int attId;
    private int conId;

    @Column(name = "attID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getAttId() {
        return attId;
    }

    public void setAttId(int attId) {
        this.attId = attId;
    }

    @Column(name = "conID", nullable = false, insertable = true, updatable = true)
    @Id
    public int getConId() {
        return conId;
    }

    public void setConId(int conId) {
        this.conId = conId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DmzContentmediaEntityPK that = (DmzContentmediaEntityPK) o;

        if (attId != that.attId) return false;
        if (conId != that.conId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = attId;
        result = 31 * result + conId;
        return result;
    }
}
