package eu.europeana.model;

public class LongLat {

	private double longitude;
	private double latitude;
	private double count;
	
	/**
	 * 
	 * @param longitude
	 * @param latitude
	 * @param count
	 */
	public LongLat(double longitude, double latitude, double count) {
		this.longitude = longitude;
		this.latitude = latitude;
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
