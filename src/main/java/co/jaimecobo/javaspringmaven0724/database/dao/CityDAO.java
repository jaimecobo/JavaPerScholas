package co.jaimecobo.javaspringmaven0724.database.dao;

import co.jaimecobo.javaspringmaven0724.database.entity.City;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CityDAO extends JpaRepository<City, Long> {
    City findById(Integer id);

    List<City> findByNameIgnoreCase(String name);
    City findByNameAndStateProvinceDepartmentTerritoryAndCountryIgnoreCase(String name, String stateProvinceDepartmentTerritory, String country);

}
