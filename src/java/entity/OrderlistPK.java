package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class OrderlistPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "PRODUCTID")
    private int productid;
    @Basic(optional = false)
    @Column(name = "ORDERID")
    private int orderid;

    public OrderlistPK() {
    }

    public OrderlistPK(int productid, int orderid) {
        this.productid = productid;
        this.orderid = orderid;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) productid;
        hash += (int) orderid;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderlistPK)) {
            return false;
        }
        OrderlistPK other = (OrderlistPK) object;
        if (this.productid != other.productid) {
            return false;
        }
        if (this.orderid != other.orderid) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderlistPK[ productid=" + productid + ", orderid=" + orderid + " ]";
    }
    
}
