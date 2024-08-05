package co.jaimecobo.javaspringmaven0724.controller;

import co.jaimecobo.javaspringmaven0724.database.entity.Employee;
import co.jaimecobo.javaspringmaven0724.security.AuthenticatedEmployeeUtilities;
import co.jaimecobo.javaspringmaven0724.security.AuthenticatedUserUtilities;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAnyAuthority('ADMIN')")           // This annotation can be used here at the class level or directly on a method
public class AdminController {
//
//    @Autowired
//    private final AuthenticatedUserUtilities authenticatedUserUtilities;
//
//    public AdminController(AuthenticatedUserUtilities authenticatedUserUtilities) {
//        this.authenticatedUserUtilities = authenticatedUserUtilities;
//    }

    @Autowired
    private AuthenticatedEmployeeUtilities authenticatedEmployeeUtilities;

    public AdminController(AuthenticatedEmployeeUtilities authenticatedEmployeeUtilities) {
        this.authenticatedEmployeeUtilities = authenticatedEmployeeUtilities;
    }


    //    @PreAuthorize("hasAnyAuthority('ADMIN')")     // This annotation can be used here on the method level or at the class
    @GetMapping("dashboard")
    public ModelAndView dashboard() {
        ModelAndView response = new ModelAndView("admin/dashboard");
//        Employee employee  = authenticatedUserUtilities.getCurrentUser();
        Employee employee  = authenticatedEmployeeUtilities.getCurrentEmployee();
        log.info(employee.toString());
        response.addObject("employeeKey", employee);
        return response;
    }

}
