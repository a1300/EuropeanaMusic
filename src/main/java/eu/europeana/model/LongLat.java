package eu.europeana.model;

public class LongLat {

	private double latitude;
	private double longitude;
	private double count;
	
	/**
	 * 
	 * @param latitude
	 * @param longitude
	 * @param count
	 */
	public LongLat(double latitude, double longitude, double count) {
		
		this.latitude = latitude;
		this.longitude = longitude;
		this.count = count;
	}
	
	
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getCount() {
		return count;
	}
	public void setCount(double count) {
		this.count = count;
	}
}
