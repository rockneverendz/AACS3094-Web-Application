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

    public boolean deleteItem(String email) {
        Customer customer = findCustByEmail(email);
        if (customer != null) {
            em.remove(customer);
            return true;
        }
        return false;
    }

//    public List<Customer> findAll() {
//        List Custlist = em.createNamedQuery("Customer.findAll").getResultList();
//        return Custlist;
//    }

    public boolean updateItem(Customer customer) {
        Customer tempCustomer = findCustByID(customer.getCustid());
        if (tempCustomer != null) {
            tempCustomer.setCustid(customer.getCustid());
            tempCustomer.setCustname(customer.getCustname());
            tempCustomer.setPhoneno(customer.getPhoneno());
            tempCustomer.setAddress(customer.getAddress());
            tempCustomer.setEmail(customer.getEmail());
            tempCustomer.setPassword(customer.getPassword());
            return true;
        }
        return false;
    }
}
