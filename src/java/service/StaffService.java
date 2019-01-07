package service;

import entity.Staff;
import javax.persistence.*;

public class StaffService {

    EntityManager em;

    public StaffService() {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
        this.em = emfactory.createEntityManager();
        this.em.getTransaction().begin();
    }

    public Staff findStaffByID(String id) {
        Staff staff = em.find(Staff.class, id);
        return staff;
    }
    
    public static void main(String[] args) {
        StaffService ss = new StaffService();
        Staff staff = ss.findStaffByID("tai");
        System.out.println(staff);
    }
}
