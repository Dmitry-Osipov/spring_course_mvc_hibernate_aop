package com.osipov.spring.mvc.service;

import com.osipov.spring.mvc.entity.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getAllEmployees();
    void saveEmployee(Employee employee);
}
