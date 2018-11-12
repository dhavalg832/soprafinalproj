package com.sopra.dao;

import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;

import com.sopra.model.Employee;
import com.sopra.util.HibernateUtil;

public class EmployeeDaoImpl implements EmployeeDao {

	@Override
	public ArrayList<Employee> getAllEmployee() {
		Session session = HibernateUtil.getSessionFactory();
		session.beginTransaction();
		Query query = session.createQuery("from Employee e order by e.id");
		ArrayList<Employee> emp = (ArrayList<Employee>) query.list();
		return emp;

	}

	@Override
	public Employee saveEmp(Employee emp) {
		Session session = HibernateUtil.getSessionFactory();
		session.beginTransaction();
		session.persist(emp);
		session.getTransaction().commit();
		session.close();
		return emp;
	}

	@Override
	public void deleteEmp(int id) {
		Session session = HibernateUtil.getSessionFactory();
		session.beginTransaction();
		Employee emp = (Employee) session.get(Employee.class, id);
		session.delete(emp);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public Employee updateEmp(Employee emp) {
		Session session = HibernateUtil.getSessionFactory();
		session.beginTransaction();
		// Employee employee=(Employee)session.get(Employee.class,emp.getId());
		session.saveOrUpdate(emp);
		session.persist(emp);
		session.getTransaction().commit();
		session.close();
		return emp;
	}

	@Override
	public Employee getEmployee(int id) {
		Session session = HibernateUtil.getSessionFactory();
		Employee emp = (Employee) session.get(Employee.class, id);
		return emp;
	}

}
