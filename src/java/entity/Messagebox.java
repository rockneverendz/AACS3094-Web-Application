/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author User
 */
@Entity
@Table(name = "MESSAGEBOX")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Messagebox.findAll", query = "SELECT m FROM Messagebox m")
    , @NamedQuery(name = "Messagebox.findByMessageid", query = "SELECT m FROM Messagebox m WHERE m.messageid = :messageid")
    , @NamedQuery(name = "Messagebox.findByMcomment", query = "SELECT m FROM Messagebox m WHERE m.mcomment = :mcomment")
    , @NamedQuery(name = "Messagebox.findByMdate", query = "SELECT m FROM Messagebox m WHERE m.mdate = :mdate")})
public class Messagebox implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MESSAGEID")
    private Integer messageid;
    @Size(max = 500)
    @Column(name = "MCOMMENT")
    private String mcomment;
    @Column(name = "MDATE")
    @Temporal(TemporalType.DATE)
    private Date mdate;
    @JoinColumn(name = "CUSTID", referencedColumnName = "CUSTID")
    @ManyToOne
    private Customer custid;

    public Messagebox() {
    }

    public Messagebox(Integer messageid) {
        this.messageid = messageid;
    }

    public Integer getMessageid() {
        return messageid;
    }

    public void setMessageid(Integer messageid) {
        this.messageid = messageid;
    }

    public String getMcomment() {
        return mcomment;
    }

    public void setMcomment(String mcomment) {
        this.mcomment = mcomment;
    }

    public Date getMdate() {
        return mdate;
    }

    public void setMdate(Date mdate) {
        this.mdate = mdate;
    }

    public Customer getCustid() {
        return custid;
    }

    public void setCustid(Customer custid) {
        this.custid = custid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (messageid != null ? messageid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Messagebox)) {
            return false;
        }
        Messagebox other = (Messagebox) object;
        if ((this.messageid == null && other.messageid != null) || (this.messageid != null && !this.messageid.equals(other.messageid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Messagebox[ messageid=" + messageid + " ]";
    }
    
}
