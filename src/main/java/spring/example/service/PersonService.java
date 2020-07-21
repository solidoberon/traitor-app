package spring.example.service;

import java.util.List;

import spring.example.repo.PersonDB;
import spring.example.repo.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonService {
	
	@Autowired PersonRepository repository;
	
	public List<PersonDB> getPersons() {
		return (List<PersonDB>) repository.findAll();
	}

}
