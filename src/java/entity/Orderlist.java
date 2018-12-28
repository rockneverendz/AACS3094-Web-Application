/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author User
 */
@Entity
@Table(name = "ORDERLIST")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Orderlist.findAll", query = "SELECT o FROM Orderlist o")
    , @NamedQuery(name = "Orderlist.findByProductid", query = "SELECT o FROM Orderlist o WHERE o.orderlistPK.productid = :productid")
    , @NamedQuery(name = "Orderlist.findByOrderid", query = "SELECT o FROM Orderlist o WHERE o.orderlistPK.orderid = :orderid")
    , @NamedQuery(name = "Orderlist.findByQty", query = "SELECT o FROM Orderlist o WHERE o.qty = :qty")})
public class Orderlist implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected OrderlistPK orderlistPK;
    @Column(name = "QTY")
    private Integer qty;
    @JoinColumn(name = "ORDERID", referencedColumnName = "ORDERID", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Custorder custorder;
    @JoinColumn(name = "PRODUCTID", referencedColumnName = "PRODUCTID", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Product product;

    public Orderlist() {
    }

    public Orderlist(OrderlistPK orderlistPK) {
        this.orderlistPK = orderlistPK;
    }

    public Orderlist(int productid, int orderid) {
        this.orderlistPK = new OrderlistPK(productid, orderid);
    }

    public OrderlistPK getOrderlistPK() {
        return orderlistPK;
    }

    public void setOrderlistPK(OrderlistPK orderlistPK) {
        this.orderlistPK = orderlistPK;
    }

    public Integer getQty() {
        return qty;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }

    public Custorder getCustorder() {
        return custorder;
    }

    public void setCustorder(Custorder custorder) {
        this.custorder = custorder;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderlistPK != null ? orderlistPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Orderlist)) {
            return false;
        }
        Orderlist other = (Orderlist) object;
        if ((this.orderlistPK == null && other.orderlistPK != null) || (this.orderlistPK != null && !this.orderlistPK.equals(other.orderlistPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Orderlist[ orderlistPK=" + orderlistPK + " ]";
    }
    
}
