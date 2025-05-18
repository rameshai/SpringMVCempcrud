package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.Employee;
import com.dao.EmployeeDao;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao dao;

	@RequestMapping("/viewemp")
	public String showAllemployees(Model m) {
		List<Employee> emplist = dao.getEmployees();
		m.addAttribute("elist", emplist);
		return "displayall";
	}

	@RequestMapping("/empform")
	public String empform(Model m) {
		m.addAttribute("command", new Employee());
		return "empform";

	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("emp") Employee emp) {
		dao.save(emp);
		return "redirect:/viewemp";
	}

	@RequestMapping(value = "/editemp/{id}")
	public String editEmployee(@PathVariable Integer id, Model m) {
		Employee emp = dao.getEmpById(id);
		m.addAttribute("command", emp);
		System.out.println(emp);
		return "empeditform";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Employee emp) {
		dao.update(emp);
		return "redirect:/viewemp";
	}
     @RequestMapping(value= "/deleteemp/{id}", method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable Integer id) {
		dao.delete(id);
		return "redirect:/viewemp";
	}
}
