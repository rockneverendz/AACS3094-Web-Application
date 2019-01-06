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
        this.em.getTransaction().begin();
    }

    public void addCustorder(Custorder custorder, ArrayList<Orderlist> cart, Customer customer) throws RollbackException {
        em.persist(custorder);
        em.getTransaction().commit();

        OrderlistPK orderlistpk;

        for (Orderlist orderlist : cart) {

            orderlistpk = new OrderlistPK(
                    orderlist.getProduct().getProductid(),
                    custorder.getOrderid()
            );
            
            orderlist.setCustorder(custorder);
            orderlist.setOrderlistPK(orderlistpk);
            
        }
        
        
        em.getTransaction().begin();
        
        custorder.setOrderlistList(cart);
        custorder.setCustid(customer);

        em.getTransaction().commit();
    }

    public boolean deleteCustorder(int id) throws RollbackException {
        Custorder custorder = findCustorderByID(id);
        if (custorder != null) {
            em.remove(custorder);
            em.getTransaction().commit();
            return true;
        }
        return false;
    }

    public Custorder findCustorderByID(int id) {
        return (Custorder) em.find(Custorder.class, id);
    }

    public boolean updateCustorder(Custorder newCustorder) throws RollbackException {
        Custorder thisCustorder = findCustorderByID(newCustorder.getOrderid());
        if (thisCustorder != null) {

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
