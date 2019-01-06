package service;

import entity.Customer;
import entity.Custorder;
import entity.Orderlist;
import entity.OrderlistPK;
import java.util.ArrayList;
import javax.persistence.*;
import java.util.List;

public class CustOrderService {

    EntityManager em;

    public CustOrderService() {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
        this.em = emfactory.createEntityManager();
    }

    public void addCustorder(Custorder custorder, ArrayList<Orderlist> cart, Customer customer) throws RollbackException {
        em.getTransaction().begin();
        em.persist(custorder);
        em.getTransaction().commit();

        for (Orderlist orderlist : cart) {
            orderlist.setCustorder(custorder);
            orderlist.setOrderlistPK(
                    new OrderlistPK(
                            orderlist.getProduct().getProductid(),
                            custorder.getOrderid()
                    )
            );
        }

        em.getTransaction().begin();
        custorder.setOrderlistList(cart);
        custorder.setCustid(customer);
        em.getTransaction().commit();
    }

    public boolean deleteCustorder(int id) throws RollbackException {
        Custorder custorder = findCustorderByID(id);
        if (custorder != null) {
            em.getTransaction().begin();
            em.remove(custorder);
            em.getTransaction().commit();
            return true;
        }
        return false;
    }

    public Custorder findCustorderByID(int id) {
        return (Custorder) em.find(Custorder.class, id);
    }

    public List<Orderlist> findOrderlistByID(int id) {
        List Orderlist
                = em.createNamedQuery("Orderlist.findByOrderid")
                        .setParameter("orderid", id)
                        .getResultList();
        return Orderlist;
    }
    
    public boolean updateCustorder(Custorder newCustorder) throws RollbackException {
        Custorder thisCustorder = findCustorderByID(newCustorder.getOrderid());
        if (thisCustorder != null) {

            em.getTransaction().begin();
            thisCustorder.setStatus(newCustorder.getStatus());
            thisCustorder.setTrackingno(newCustorder.getTrackingno());
            em.getTransaction().commit();
            
            return true;
        }
        return false;
    }

    public List<Custorder> findAll() {
        List ProductList = em.createNamedQuery("Product.findAll").getResultList();
        return ProductList;
    }

    public void close() {
        this.em.close();
    }
}
