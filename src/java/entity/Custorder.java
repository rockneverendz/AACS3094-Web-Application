/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "CUSTORDER")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Custorder.findAll", query = "SELECT c FROM Custorder c")
    , @NamedQuery(name = "Custorder.findByOrderid", query = "SELECT c FROM Custorder c WHERE c.orderid = :orderid")
    , @NamedQuery(name = "Custorder.findByOrderdate", query = "SELECT c FROM Custorder c WHERE c.orderdate = :orderdate")
    , @NamedQuery(name = "Custorder.findByReceivername", query = "SELECT c FROM Custorder c WHERE c.receivername = :receivername")
    , @NamedQuery(name = "Custorder.findByReceiveraddress", query = "SELECT c FROM Custorder c WHERE c.receiveraddress = :receiveraddress")
    , @NamedQuery(name = "Custorder.findByTrackingno", query = "SELECT c FROM Custorder c WHERE c.trackingno = :trackingno")
    , @NamedQuery(name = "Custorder.findByStatus", query = "SELECT c FROM Custorder c WHERE c.status = :status")
    , @NamedQuery(name = "Custorder.findByCustid", query = "SELECT c FROM Custorder c WHERE c.custid.custid = :custid")})
public class Custorder implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ORDERID")
    private Integer orderid;
    @Column(name = "ORDERDATE")
    @Temporal(TemporalType.DATE)
    private Date orderdate;
    @Column(name = "RECEIVERNAME")
    private String receivername;
    @Column(name = "RECEIVERADDRESS")
    private String receiveraddress;
    @Column(name = "TRACKINGNO")
    private String trackingno;
    @Column(name = "STATUS")
    private String status;
    @JoinColumn(name = "CUSTID", referencedColumnName = "CUSTID")
    @ManyToOne
    private Customer custid;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "custorder")
    private List<Orderlist> orderlistList;

    public Custorder() {
    }

    public Custorder(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Date getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Date orderdate) {
        this.orderdate = orderdate;
    }

    public String getReceivername() {
        return receivername;
    }

    public void setReceivername(String receivername) {
        this.receivername = receivername;
    }

    public String getReceiveraddress() {
        return receiveraddress;
    }

    public void setReceiveraddress(String receiveraddress) {
        this.receiveraddress = receiveraddress;
    }

    public String getTrackingno() {
        return trackingno;
    }

    public void setTrackingno(String trackingno) {
        this.trackingno = trackingno;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Customer getCustid() {
        return custid;
    }

    public void setCustid(Customer custid) {
        this.custid = custid;
    }

    @XmlTransient
    public List<Orderlist> getOrderlistList() {
        return orderlistList;
    }

    public void setOrderlistList(List<Orderlist> orderlistList) {
        this.orderlistList = orderlistList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderid != null ? orderid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Custorder)) {
            return false;
        }
        Custorder other = (Custorder) object;
        if ((this.orderid == null && other.orderid != null) || (this.orderid != null && !this.orderid.equals(other.orderid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Custorder[ orderid=" + orderid + " ]";
    }
    
}
