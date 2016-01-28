package eu.europeana.model;

public class Results {

	private boolean hasResults = true;

	public Results(boolean hasResults) {
		this.hasResults = hasResults;
	}
	
	public boolean isHasResults() {
		return hasResults;
	}

	public void setHasResults(boolean hasResults) {
		this.hasResults = hasResults;
	}
	
	
}
