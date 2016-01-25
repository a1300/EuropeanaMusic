package eu.europeana.model;

import java.util.List;

public class SearchObj {

	private List<String> name;
	private List<String> titel;
	private List<String> language;
	private List<String> country;
	
	public SearchObj(List<String> name, List<String> titel,List<String> language,List<String> country) {
		
		this.name = name;
		this.titel = titel;
		this.language = language;
		this.country = country;
	}
	
	public List<String> getName() {
		return name;
	}
	public void setName(List<String> name) {
		this.name = name;
	}
	public List<String> getTitel() {
		return titel;
	}
	public void setTitel(List<String> titel) {
		this.titel = titel;
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
