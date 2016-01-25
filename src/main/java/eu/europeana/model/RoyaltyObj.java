package eu.europeana.model;

import java.util.List;

public class RoyaltyObj {

	private List<String> title;
	private List<String> shownBy;
	
	public RoyaltyObj(List<String> title, List<String> shownBy) {
		this.setTitle(title);
		this.setShownBy(shownBy);
	}

	public List<String> getTitle() {
		return title;
	}

	public void setTitle(List<String> title) {
		this.title = title;
	}


	public List<String> getShownBy() {
		return shownBy;
	}

	public void setShownBy(List<String> shownBy) {
		this.shownBy = shownBy;
	}

}
