package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Customer> getCustomers() {

        Session currentSession = sessionFactory.getCurrentSession();

        Query<Customer> theQuery = currentSession.createQuery("from Customer order by lastName", Customer.class);

        List<Customer> customers = theQuery.getResultList();

        return customers;
    }

    @Override
    public void saveCustomer(Customer theCustomer) {

        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theCustomer);
    }

    @Override
    public Customer getCustomer(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();

        Customer theCustomer = currentSession.get(Customer.class, theId);

        return theCustomer;
    }
}
