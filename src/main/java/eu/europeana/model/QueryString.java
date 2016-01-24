package eu.europeana.model;

import eu.europeana.api.client.EuropeanaApi2Client;
import eu.europeana.api.client.EuropeanaApi2Client;
import eu.europeana.api.client.exception.EuropeanaApiProblem;
import eu.europeana.api.client.model.EuropeanaApi2Results;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

public class QueryString {

	private String queryString;
	
	/**
	 * @param list here we need to become the values of our form 
	 */
	public QueryString(ArrayList<String> list) {
		
		this.queryString = getQueryParam(list);
	}
	
	public String getQueryUri(){
		
		return  "http://www.europeana.eu/api/v2/search.json?";
	}
	
	
	private String getQueryParam(ArrayList<String> list) {
	
		System.out.println("list.size: " + list.size());
		
//		&profile=rich 
//		http://www.europeana.eu/portal/search.html?
//								http://www.europeana.eu/api/v2/search.json?&query=Mozart&profile=standard
//								http://www.europeana.eu/api/v2/search.json?&query=europeana_isShownBy%3A*mp3&profile=rich&qf=who:%22mozart%22&rows=5&start=1&wskey=iiiHVMLBw
//								&profile=rich
	
		String queryTotal 	=  "query=europeana_isShownBy=*mp3"; 
//								http://www.europeana.eu/api/v2/search.json?wskey=iiiHVMLBw&query=europeana_isShownBy%3A*mp3&qf=who:"bach"&f[REUSABILITY]=permission&rows=5&start=1&wskey=iiiHVMLBw
//		try {
			if(! (list.get(0).isEmpty()) ) { 
				String author = list.get(0);
				String queryAuthor= "&qf=who:\"" + author +"\"" ; 	//it's yet only an examples
//				try {
//					queryAuthor = URLEncoder.encode(queryAuthor, "UTF-8");
//				} catch (UnsupportedEncodingException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
				queryTotal += queryAuthor; 
//			}
//		} catch( IndexOutOfBoundsException e) {
//			System.out.println("fehler bei list author in query string");
				}
		
		if(! (list.get(1).isEmpty()) ) { 
			String title = list.get(1);
			String queryTitle= "&qf=title:\"" + title+ "\"" ; 	//it's yet only an examples
//			try {
//				queryTitle= URLEncoder.encode(queryTitle, "UTF-8");
//			} catch (UnsupportedEncodingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			queryTotal += queryTitle; 
		}
		
		for(int i = 0; i < list.size(); ++i) {
			
			//String darf nicht null sein
			if(list.get(i) != null) {
				//if (list.get(i).trim().equals("languageGerman"))
					//System.out.println("HURRAY"  );
				
				 //countries
				 if (list.get(i).trim().equals("countryEngland")){
					 	String help = "&f[COUNTRY][]=united kingdom";
//					 	try {
//							help= URLEncoder.encode(help, "UTF-8");
//						} catch (UnsupportedEncodingException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					 	queryTotal += help;
				 }

				 if (list.get(i).trim().equals("countryGermany")){
					 String help = "&f[COUNTRY][]=germany";
//					 try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//						queryTotal += help;
				 }
				 if (list.get(i).trim().equals("countryFrance")){
					 String help = "&f[COUNTRY][]=france";
//					 try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					 queryTotal += help;
				 }
				 if (list.get(i).trim().equals("countrySpain")){
					 String help = "&f[COUNTRY][]=spain";
//					 try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					 queryTotal += help;
				 }
				 
				 //language
				 if (list.get(i).trim().equals("languageEnglish")){
					 String help = "&f[LANGUAGE][]=en";
//					 try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					 queryTotal += help;
				 }
				 if (list.get(i).trim().equals("languageGerman")){
					String help = "&f[LANGUAGE][]=de";
//					try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					queryTotal += help;
				 }

				 if (list.get(i).trim().equals("languageFrench")){
					String help = "&f[LANGUAGE][]=fr";
//					try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					queryTotal += help;
				 }
				 if (list.get(i).trim().equals("languageSpanish")){
					String help = "&f[LANGUAGE][]=es";
//					try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					queryTotal += help;
				 }
				 
				 //royalty free
				if (list.get(i).trim().equals("open")){
					String help = "&f[REUSABILITY]=open";
//					try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					queryTotal += help;
				}
				if (list.get(i).trim().equals("restricted")){
					String help = "&f[REUSABILITY]=restricted";
//					try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					queryTotal += help;
				}
				if (list.get(i).trim().equals("permission")) {
					String help = "&f[REUSABILITY]=permission";
//					try {
//						help= URLEncoder.encode(help, "UTF-8");
//					} catch (UnsupportedEncodingException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
					queryTotal += help;
				}
			}
		}

		return queryTotal;
	}

	public void setQueryString(String queryString) {
		this.queryString = queryString;
	}
	
	public String getQueryString() {
		return queryString;
	}
}
