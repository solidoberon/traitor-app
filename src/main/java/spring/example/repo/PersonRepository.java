package spring.example.repo;

import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

@Repository
public interface PersonRepository extends CrudRepository<PersonDB, Long> {}
