package co.grandcircus.gradingmongo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
public class GradeController {
	
	@Autowired
	private GradeRepository repo;
	
	
	@RequestMapping("/")
	public String listGrades(Model model) {
		
		List<Grade> grades = repo.findAll();
		
		model.addAttribute("grades",grades);
		
		return "grades";
	}
	
	@RequestMapping("/gradeForm")
	public String showGradeForm() {
		return "gradeForm";
	}
	
	@PostMapping("/gradeconfirmation")
	public String saveGrade(Model model, @RequestParam String name, @RequestParam String type, @RequestParam Double score,@RequestParam Double total) {
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);

		Grade newGrade = new Grade(name, type, score, total);
		repo.save(newGrade);
		
		
		return "gradeconfirmation";
	}
	
	@RequestMapping("/delete")
	public String deleteGrade(@RequestParam String id) {
		repo.deleteById(id);
		
		return "redirect:/";
	}
	
	
	
	
	
	

}
