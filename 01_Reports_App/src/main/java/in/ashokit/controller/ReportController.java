package in.ashokit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import in.ashokit.request.SearchRequest;
import in.ashokit.service.ReportService;

@Controller
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	
	//SearchRequest contains the forms data
	
	@PostMapping("/search")
	public String handleSearch(SearchRequest request,Model model)
	{
		System.out.println(request);
		init(model);
		
		return "index";
	}
	
	
	
	//i want bind these request to ui page
	@GetMapping("/")
	public String indexPage(Model model)
	{
	
		init(model);
		
		
		
		return "index";
		
	}



	private void init(Model model) {
		
		model.addAttribute("search", new SearchRequest());
		model.addAttribute("names",reportService.getPlanNames());
		model.addAttribute("status",reportService.getPlanStatus());
	}
	
	
	

}
