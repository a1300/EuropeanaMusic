package eu.europeana.model;


public class QueryString {
	private String queryString;

	
	public void setQueryString(String queryString) {
		

String queryStart 	= "http://www.europeana.eu/api/v2/search.json?wskey=iiiHVMLBw&profile=rich&query=europeana_isShownBy:*mp3"; 

String queryArtist 	= "&qf=who:\"" + queryString + "\""; 	//it's yet only an example

String queryRoyalty	= "&f[REUSABILITY]=restricted";			//it's yet only an example

String queryCountry = "&f[COUNTRY]=austria";				//it's yet only an example



// Here we will search the query string that we become from the post and 
// if the words appear in  the Post string that we get we add that filterString to the totalQuery String
String filterString="";
//country 
if (queryString.contains("germany")){
		filterString = filterString+"&f[COUNTRY][]=germany";
}		                		
if (queryString.contains("austria")){
		filterString = filterString+"&f[COUNTRY][]=austria";
}

if (queryString.contains("france")){
		filterString = filterString+"&f[COUNTRY][]=france";
}
if (queryString.contains("spain")){
		filterString = filterString+"&f[COUNTRY][]=spain";
}
//language
if (queryString.contains("english")){
		filterString = filterString+"&f[LANGUAGE][]=en";
}
if (queryString.contains("german")){
		filterString = filterString+"&f[LANGUAGE][]=de";
}
if (queryString.contains("french")){
	filterString = filterString+"&f[LANGUAGE][]=fr";
}
if (queryString.contains("spanish")){
		filterString = filterString+"&f[LANGUAGE][]=it";
}


String totalQuery = queryStart + queryArtist + queryRoyalty +filterString;
	
	this.queryString = totalQuery;
	}
	
	public String getQueryString() {
		return queryString;
	}


	}
