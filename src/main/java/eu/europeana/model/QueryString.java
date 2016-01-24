package eu.europeana.model;

import java.util.ArrayList;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

public class QueryString {

	private String queryString;
	
	/**
	 * @param list here we need to become the values of our form 
	 */
	public QueryString(ArrayList<String> list) {
		
		this.queryString = process(list);
	}
	
	private String process(ArrayList<String> list) {
	
		System.out.println("list.size: " + list.size());

		String queryTotal 	= "http://www.europeana.eu/api/v2/search.json?wskey=iiiHVMLBw&profile=rich&query=europeana_isShownBy:*mp3"; 

		try {
			if(! (list.get(0).isEmpty()) ) { 
				String author = list.get(0);
				String queryAuthor= "&qf=who:\"" + author + "\""; 	//it's yet only an examples
				 queryTotal += queryAuthor; 
			}
		} catch( IndexOutOfBoundsException e) {
			System.out.println("fehler bei list author in query string");
		}
		
		if(! (list.get(1).isEmpty()) ) { 
			String title = list.get(1);
			String queryTitle= "&qf=title:\"" + title + "\""; 	//it's yet only an examples
			 queryTotal += queryTitle; 
		}
		
		String filterString = "";
		
		
		for(int i = 0; i < list.size(); ++i) {
			
			//String darf nicht null sein
			if(list.get(i) != null) {
				//if (list.get(i).trim().equals("languageGerman"))
					//System.out.println("HURRAY"  );
				
				 //countries
				 if (list.get(i).trim().equals("countryEngland")){
					 	String help = "&f[COUNTRY][]=united kingdom";
				 		queryTotal += help;
				 }
				 if (list.get(i).trim().equals("countryGermany")){
					 String help = "&f[COUNTRY][]=germany";
					 queryTotal += help;
				 }
				 if (list.get(i).trim().equals("countryFrance")){
					 String help = "&f[COUNTRY][]=france";
				 	 queryTotal += help;
				 }
				 if (list.get(i).trim().equals("countrySpain")){
					 String help = "&f[COUNTRY][]=spain";
				 	 queryTotal += help;
				 }
				 
				 //language
				 if (list.get(i).trim().equals("languageEnglish")){
					 String help = "&f[LANGUAGE][]=en";
				 	 queryTotal += help;
				 }
				 if (list.get(i).trim().equals("languageGerman")){
					String help = "&f[LANGUAGE][]=de";
				 	queryTotal += help;
				 }
				 if (list.get(i).trim().equals("languageFrench")){
					String help = "&f[LANGUAGE][]=fr";
				 	queryTotal += help;
				 }
				 if (list.get(i).trim().equals("languageSpanish")){
					String help = "&f[LANGUAGE][]=es";
				 	queryTotal += help;
				 }
				 
				 //royalty free
				if (list.get(i).trim().equals("open")){
					String help = "&f[REUSABILITY]=open";
					queryTotal += help;
				}
				if (list.get(i).trim().equals("restricted")){
					String help = "&f[REUSABILITY]=restricted";
					queryTotal += help;
				}
				if (list.get(i).trim().equals("permission")) {
					String help = "&f[REUSABILITY]=permission";
					queryTotal += help;
				}
			}
		}
		
		queryTotal += filterString;
		
		System.out.println("this is the final query: " + queryTotal);
		
		return queryTotal;
	}

	public void setQueryString(String queryString) {
		this.queryString = queryString;
	}
	
	public String getQueryString() {
		return queryString;
	}
}
