package app.sys.dmzMgr.modual;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/12.
 */
@Entity
@Table(name = "dmz_contentmedia", schema = "", catalog = "toponymy")
@IdClass(DmzContentmediaEntityPK.class)
public class DmzContentmediaEntity {
    private int attId;
    private int conId;

    @Id
    @Column(name = "attID", nullable = false, insertable = true, updatable = true)
    public int getAttId() {
        return attId;
    }

    public void setAttId(int attId) {
        this.attId = attId;
    }

    @Id
    @Column(name = "conID", nullable = false, insertable = true, updatable = true)
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

        DmzContentmediaEntity that = (DmzContentmediaEntity) o;

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
