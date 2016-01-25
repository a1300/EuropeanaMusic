package eu.europeana.model;

import java.util.List;

public class GenreObj {

		private List<String> genre;
		private List<String> shownBy;
		private String url;
		
		
		public GenreObj (List<String> genre,List<String> shownBy,String url) {
			this.setGenre(genre);
			this.setGenre(shownBy);
			this.url = url;
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
		
		
		
}
