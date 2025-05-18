package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.beans.Employee;

public class EmployeeDao {
private HibernateTemplate ht;
public void setSessionFactory(SessionFactory sf) {
	ht = new HibernateTemplate(sf);
}
public void save(Employee e) {
	ht.saveOrUpdate(e);
}
public List<Employee> getEmployees() {
    return ht.loadAll(Employee.class);
}
public void update(Employee e) {
	ht.saveOrUpdate(e);
}
public Employee getEmpById(Integer id)
{  
	Employee e = (Employee) ht.get(Employee.class, id);
	return e;
    
}
public void delete(Integer id) {
	Employee e = ht.get(Employee.class, id);
	ht.delete(e);
}
}
