package service;

import entity.Customer;
import javax.persistence.*;

//import java.util.List;

public class CustomerService {

    EntityManager em;
    
    public CustomerService() {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
        this.em = emfactory.createEntityManager();
        this.em.getTransaction().begin();
    }

    public void addCust(Customer customer) throws RollbackException{
        em.persist(customer);
        em.getTransaction().commit();
    }

    public Customer findCustByID(int id) {
        Customer customer = em.find(Customer.class, id);
        return customer;
    }
    
    public Customer findCustByEmail(String email) throws NoResultException{
        Customer customer = (Customer) 
                em.createNamedQuery("Customer.findByEmail")
                        .setParameter("email", email)
                        .getSingleResult();
        return customer;
    }

    public boolean deleteCustomer(String email) {
        Customer customer = findCustByEmail(email);
        if (customer != null) {
            em.remove(customer);
            em.getTransaction().commit();
            return true;
        }
        return false;
    }

//    public List<Customer> findAll() {
//        List Custlist = em.createNamedQuery("Customer.findAll").getResultList();
//        return Custlist;
//    }

    public boolean updateCustomer(Customer newCustomer) {
        Customer thisCustomer = findCustByID(newCustomer.getCustid());
        if (thisCustomer != null) {
            thisCustomer.setCustname(newCustomer.getCustname());
            thisCustomer.setDob(newCustomer.getDob());
            thisCustomer.setPassword(newCustomer.getPassword());
            thisCustomer.setPhoneno(newCustomer.getPhoneno());
            thisCustomer.setAddress(newCustomer.getAddress());
            em.getTransaction().commit();
            return true;
        }
        return false;
    }
}
