package co.jaimecobo.javaspringmaven0724.controller;

import co.jaimecobo.javaspringmaven0724.database.dao.EmployeeDAO;
import co.jaimecobo.javaspringmaven0724.database.entity.Employee;
import co.jaimecobo.javaspringmaven0724.form.CreateEmployeeFormBean;
import co.jaimecobo.javaspringmaven0724.service.EmployeeService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
public class LoginController {

    @Autowired
    private EmployeeDAO employeeDAO;

    @Autowired
    private EmployeeService employeeService;

    @GetMapping({"/employee/{id}"})
    public ModelAndView employeeById(@PathVariable Integer id) {
        ModelAndView response = new ModelAndView("auth/employee");
        log.debug("The user has selected a employee with id = " + id);
        Employee employee = employeeDAO.findById(id);
        response.addObject("employeeKey", employee);
        return response;
    }

    @GetMapping("/create-employee")
    public ModelAndView createEmployee() {
        ModelAndView response = new ModelAndView("auth/create-employee");

        return response;
    }

    @PostMapping("/submit-employee")
    public ModelAndView createEmployeeSubmit(@Valid CreateEmployeeFormBean form, BindingResult bindingResult){
        ModelAndView response = new ModelAndView("auth/create-employee");

        if (bindingResult.hasErrors()) {
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug("Validation error : " + ((FieldError) error).getField() + " = " + error.getDefaultMessage());
            }
            response.addObject("bindingResult", bindingResult);
            response.addObject("form", form);
        }
        else{
            response.setViewName("redirect:/account/" + employeeService.createEmployee(form).getId());
        }
        return response;

    }

    @GetMapping({"/edit-employee"})
    public ModelAndView editEmployee(@RequestParam(required = false) Integer employeeId) {
        ModelAndView response = new ModelAndView("auth/create-employee");
        if(employeeId != null) {
            Employee employee = employeeDAO.findById(employeeId);
            if(employee != null) {
                CreateEmployeeFormBean form = new CreateEmployeeFormBean();
                form.setEmployeeId(employee.getId());
                form.setEmail(employee.getEmail());
                form.setFullName(employee.getFullName());
                form.setPassword(employee.getPassword());
                response.addObject("form", form);
            }
        }
        return response;
    }

}

