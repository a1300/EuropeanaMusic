package eu.europeana.model;

import java.util.List;

public class SearchObj {

	private List<String> Name;
	private List<String> Titel;
	private List<String> language;
	private List<String> country;
	
	public SearchObj(List<String> name, List<String> titel,List<String> language,List<String> country) {
		
		this.Name = name;
		this.Titel = titel;
		this.language = language;
		this.country = country;
	}
	
	public List<String> getName() {
		return Name;
	}
	public void setName(List<String> name) {
		Name = name;
	}
	public List<String> getTitel() {
		return Titel;
	}
	public void setTitel(List<String> titel) {
		Titel = titel;
	}

	public List<String> getLanguage() {
		return language;
	}

	public void setLanguage(List<String> language) {
		this.language = language;
	}

	public List<String> getCountry() {
		return country;
	}

	public void setCountry(List<String> country) {
		this.country = country;
	}

}
