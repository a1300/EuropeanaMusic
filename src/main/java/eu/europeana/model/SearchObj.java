package eu.europeana.model;

import java.util.List;

public class SearchObj {

	private String Name;
	private List<String> Titel;
	
	public SearchObj(String name, List<String> titel) {
		
		this.Name = name;
		this.Titel = titel;
	}
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public List<String> getTitel() {
		return Titel;
	}
	public void setTitel(List<String> titel) {
		Titel = titel;
	}

}
