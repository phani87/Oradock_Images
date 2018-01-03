package com.oracle.oradocs.folders;

public class FileVO {
	
	private String file_name;
	private boolean isFileUpdated;
	private String folder_name;
	private String folder_id;
	private String file_id;
	private String prev_folder_id;
	private String display_name;
	private String description;
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public boolean isFileUpdated() {
		return isFileUpdated;
	}
	public void setFileUpdated(boolean isFileUpdated) {
		this.isFileUpdated = isFileUpdated;
	}
	public String getFolder_name() {
		return folder_name;
	}
	public void setFolder_name(String folder_name) {
		this.folder_name = folder_name;
	}
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public String getFolder_id() {
		return folder_id;
	}
	public void setFolder_id(String folder_id) {
		this.folder_id = folder_id;
	}
	public String getPrev_folder_id() {
		return prev_folder_id;
	}
	public void setPrev_folder_id(String prev_folder_id) {
		this.prev_folder_id = prev_folder_id;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
