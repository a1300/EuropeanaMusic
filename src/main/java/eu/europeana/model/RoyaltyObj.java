package eu.europeana.model;

import java.util.List;

public class RoyaltyObj {

	private List<String> title;
	private List<String> shownBy;
	
	private List<String> dataProvider;
	private List<String> rights;
	
	public RoyaltyObj(List<String> title, List<String> shownBy,List<String> dataProvider,List<String> rights) {
		this.setTitle(title);
		this.setShownBy(shownBy);
		this.setDataProvider(dataProvider);
		this.setDataProvider(rights);
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

	public List<String> getDataProvider() {
		return dataProvider;
	}

	public void setDataProvider(List<String> dataProvider) {
		this.dataProvider = dataProvider;
	}

	public List<String> getRights() {
		return rights;
	}

	public void setRights(List<String> rights) {
		this.rights = rights;
	}


}
