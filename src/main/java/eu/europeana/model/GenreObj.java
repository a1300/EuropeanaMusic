package eu.europeana.model;

import java.util.List;

public class GenreObj {

		private List<String> genre;
		private List<String> shownBy;
		private String url;
		private List<String> country;
		
		
		public GenreObj (List<String> genre, List<String> shownBy, String url, List<String> country) {
			this.setGenre(genre);
			this.setShownBy(shownBy);
			this.url = url;
			this.setCountry(country);
		}
		
		public List<String> getGenre() {
			return genre;
		}

		public void setGenre(List<String> genre) {
			this.genre=genre;
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

		public List<String> getCountry() {
			return country;
		}

		public void setCountry(List<String> country) {
			this.country = country;
		}
		
		
		
}
