package co.jaimecobo.javaspringmaven0724.controller;

import co.jaimecobo.javaspringmaven0724.database.dao.VisitedCityDAO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/visitedcity")
public class VisitedCityController {

    @Autowired
    private VisitedCityDAO visitedCityDAO;
}
