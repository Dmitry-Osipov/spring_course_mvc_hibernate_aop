package com.osipov.spring.mvc.dao;

import com.osipov.spring.mvc.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    List<Employee> getAllEmployees();
}
