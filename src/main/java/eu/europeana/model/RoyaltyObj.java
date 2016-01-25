package eu.europeana.model;

import java.util.List;

public class RoyaltyObj {

	private String title;
	private String reusability;
	private List<String> shownBy;
	
	public RoyaltyObj(String title, String reusability, List<String> shownBy) {
		this.setTitle(title);
		this.setReusability(reusability);
		this.setShownBy(shownBy);
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getReusability() {
		return reusability;
	}

	public void setReusability(String reusability) {
		this.reusability = reusability;
	}

	public List<String> getShownBy() {
		return shownBy;
	}

	public void setShownBy(List<String> shownBy) {
		this.shownBy = shownBy;
	}

}
