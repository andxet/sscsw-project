public abstract class GenericObject {

	private string name;
	private string type;
	private string vendor;
	private int year;

	public string getName() {
		return this.name;
	}

	public void setName(string name) {
		this.name = name;
	}

	public string getType() {
		return this.type;
	}

	public void setType(string type) {
		this.type = type;
	}

	public string getVendor() {
		return this.vendor;
	}

	public void setVendor(string vendor) {
		this.vendor = vendor;
	}

	public int getYear() {
		return this.year;
	}

	public void setYear(int year) {
		this.year = year;
	}

}