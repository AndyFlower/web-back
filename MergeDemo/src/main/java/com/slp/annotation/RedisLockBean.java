package com.slp.annotation;

public class RedisLockBean {
	private String key;
	private int timeInSecond;
	private String codeName;
	private String msgName;
	private String code;
	private String msg;
	private boolean isAtController;
	private boolean isAtService;
	private boolean isAtParameter;
	private String returnType;
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public int getTimeInSecond() {
		return timeInSecond;
	}
	public void setTimeInSecond(int timeInSecond) {
		this.timeInSecond = timeInSecond;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public String getMsgName() {
		return msgName;
	}
	public void setMsgName(String msgName) {
		this.msgName = msgName;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	public boolean isAtController() {
		return isAtController;
	}
	public void setAtController(boolean isAtController) {
		this.isAtController = isAtController;
	}
	public boolean isAtService() {
		return isAtService;
	}
	public void setAtService(boolean isAtService) {
		this.isAtService = isAtService;
	}
	public boolean isAtParameter() {
		return isAtParameter;
	}
	public void setAtParameter(boolean isAtParameter) {
		this.isAtParameter = isAtParameter;
	}
	public String getReturnType() {
		return returnType;
	}
	public void setReturnType(String returnType) {
		this.returnType = returnType;
	}
	@Override
	public String toString() {
		return "RedisLockBean [key=" + key + ", timeInSecond=" + timeInSecond
				+ ", codeName=" + codeName + ", msgName=" + msgName + ", code="
				+ code + ", msg=" + msg + ", isAtController=" + isAtController
				+ ", isAtService=" + isAtService + ", isAtParameter="
				+ isAtParameter + ", returnType=" + returnType + "]";
	}
}
