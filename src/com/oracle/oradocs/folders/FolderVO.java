package com.oracle.oradocs.folders;

public class FolderVO {
	
	private String prev_folder;
	private String curr_folder;
	private boolean isTraversed;
	private String folder_name;
	private boolean isFilesUpdated;
	
	
	public String getPrev_folder() {
		return prev_folder;
	}
	public void setPrev_folder(String prev_folder) {
		this.prev_folder = prev_folder;
	}
	public String getCurr_folder() {
		return curr_folder;
	}
	public void setCurr_folder(String curr_folder) {
		this.curr_folder = curr_folder;
	}
	public boolean isTraversed() {
		return isTraversed;
	}
	public void setTraversed(boolean isTraversed) {
		this.isTraversed = isTraversed;
	}
	public String getFolder_name() {
		return folder_name;
	}
	public void setFolder_name(String folder_name) {
		this.folder_name = folder_name;
	}
	public boolean isFilesUpdated() {
		return isFilesUpdated;
	}
	public void setFilesUpdated(boolean isFilesUpdated) {
		this.isFilesUpdated = isFilesUpdated;
	}

}
