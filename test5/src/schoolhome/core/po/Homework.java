package schoolhome.core.po;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class Homework {
	private int H_ID;
	private String H_name;
	private String H_content;
	private Timestamp H_startTime;
	private Timestamp H_endTime;
	public Homework(int h_ID, String h_name, String h_content, Timestamp h_startTime, Timestamp h_endTime) {
		super();
		H_ID = h_ID;
		H_name = h_name;
		H_content = h_content;
		H_startTime = h_startTime;
		H_endTime = h_endTime;
	}
	
	public Homework() {
		super();
	}

	public int getH_ID() {
		return H_ID;
	}
	public void setH_ID(int h_ID) {
		H_ID = h_ID;
	}
	public String getH_name() {
		return H_name;
	}
	public void setH_name(String h_name) {
		H_name = h_name;
	}
	public String getH_content() {
		return H_content;
	}
	public void setH_content(String h_content) {
		H_content = h_content;
	}
	public Timestamp getH_startTime() {
		return H_startTime;
	}
	public void setH_startTime(Timestamp h_startTime) {
		H_startTime = h_startTime;
	}
	public Timestamp getH_endTime() {
		return H_endTime;
	}
	public void setH_endTime(Timestamp h_endTime) {
		H_endTime = h_endTime;
	}
	public String  ToStringStartTimeByDateLOcal(){
		String startTime = "";
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		startTime = sdf.format(H_startTime);
		startTime = startTime.replace(" ", "T");
		return startTime;
	}
	public String  ToStringEndTimeByDateLOcal(){
		String endTime = "";
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		endTime = sdf.format(H_endTime);
		endTime = endTime.replace(" ", "T");
		return endTime;
	}
}
