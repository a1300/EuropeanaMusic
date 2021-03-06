package eu.europeana.model;

import java.util.List;

public class SearchObj {

	private List<String> name;
	private List<String> title;
	private List<String> collection;
	private List<String> shownBy;
	private String url;
	
	
	public SearchObj(List<String> name, List<String> title, List<String> collection, 
			List<String> shownBy, String url) {
		
		this.setName(name);
		this.setTitle(title);
		this.setCollection(collection);
		this.setShownBy(shownBy);
		this.url = url;
	}


	
	
	public List<String> getName() {
		return name;
	}

	public void setName(List<String> name) {
		this.name = name;
	}

	public List<String> getTitle() {
		return title;
	}

	public void setTitle(List<String> title) {
		this.title = title;
	}

	public List<String> getCollection() {
		return collection;
	}

	public void setCollection(List<String> collection) {
		this.collection = collection;
	}

	public List<String> getShownBy() {
		return shownBy;
	}

	public void setShownBy(List<String> shownBy) {
		this.shownBy = shownBy;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}


}
