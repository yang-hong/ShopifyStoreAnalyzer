package model;

public class Info {
	
	private String webaddr;
	private String dailytraffic;
	private String bestselling;
	private String fbcampaigns;
	private int authorityscore;
	private int backlinks;
	private int domains;
	private int ips;
	private int followlinks;
	private int nofollowlinks;
	private int textlinks;
	private int imagelinks;
	public String getWebaddr() {
		return webaddr;
	}
	public void setWebaddr(String webaddr) {
		this.webaddr = webaddr;
	}
	public String getDailytraffic() {
		return dailytraffic;
	}
	public void setDailytraffic(String dailytraffic) {
		this.dailytraffic = dailytraffic;
	}
	public String getBestselling() {
		return bestselling;
	}
	public void setBestselling(String bestselling) {
		this.bestselling = bestselling;
	}
	public String getFbcampaigns() {
		return fbcampaigns;
	}
	public void setFbcampaigns(String fbcampaigns) {
		this.fbcampaigns = fbcampaigns;
	}
	public int getAuthorityscore() {
		return authorityscore;
	}
	public void setAuthorityscore(int authorityscore) {
		this.authorityscore = authorityscore;
	}
	public int getBacklinks() {
		return backlinks;
	}
	public void setBacklinks(int backlinks) {
		this.backlinks = backlinks;
	}
	public int getDomains() {
		return domains;
	}
	public void setDomains(int domains) {
		this.domains = domains;
	}
	public int getIps() {
		return ips;
	}
	public void setIps(int ips) {
		this.ips = ips;
	}
	public int getFollowlinks() {
		return followlinks;
	}
	public void setFollowlinks(int followlinks) {
		this.followlinks = followlinks;
	}
	public int getNofollowlinks() {
		return nofollowlinks;
	}
	public void setNofollowlinks(int nofollowlinks) {
		this.nofollowlinks = nofollowlinks;
	}
	public int getTextlinks() {
		return textlinks;
	}
	public void setTextlinks(int textlinks) {
		this.textlinks = textlinks;
	}
	public int getImagelinks() {
		return imagelinks;
	}
	public void setImagelinks(int imagelinks) {
		this.imagelinks = imagelinks;
	}
	public Info(String webaddr, String dailytraffic, String bestselling, String fbcampaigns, int authorityscore,
			int backlinks, int domains, int ips, int followlinks, int nofollowlinks, int textlinks, int imagelinks) {
		super();
		this.webaddr = webaddr;
		this.dailytraffic = dailytraffic;
		this.bestselling = bestselling;
		this.fbcampaigns = fbcampaigns;
		this.authorityscore = authorityscore;
		this.backlinks = backlinks;
		this.domains = domains;
		this.ips = ips;
		this.followlinks = followlinks;
		this.nofollowlinks = nofollowlinks;
		this.textlinks = textlinks;
		this.imagelinks = imagelinks;
	}
	
	
	
}
