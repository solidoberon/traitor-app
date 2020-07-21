package spring.example;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.example.repo.PersonDB;
import spring.example.service.PersonService;

@Controller
public class IndexController {
	@Autowired
    private PersonService service;
    
    /**
     * Controller function for the index HTML page.
     */
    @RequestMapping("/")
    public String index(Model model) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM d yyyy : HH:mm:ss:SSS z");
        Date now = new Date();
        String dateStr = dateFormat.format( now );
        model.addAttribute("time", dateStr);
        model.addAttribute("text", "Hello");
        return "index";
    }
    
    @RequestMapping("/traitorList")
    public String secondpage(Model model) {
    	List<PersonDB> personList = new ArrayList<PersonDB>();
    	personList = service.getPersons();
    	
    	model.addAttribute("personlist", personList);
        return "traitorList";
    }
}
