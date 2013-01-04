package com.lihelper.constant;

public class Constants {

	/**
	 * 请求参数
	 */
	public final static String CLIENT_ID = "client_id";

	public final static String COOKIE_ID = "cookie_id";

	public final static String EMAIL = "email";
	public final static String PASSWORD = "password";

	public final static String BEGIN = "begin";
	public final static String END = "end";
	public final static String MONITOR_TYPE = "monitor_type";
	public final static String NIO = "nio";

	public final static String ALARM_TYPE = "alarm_type";
	public final static String ALARM_ITEM = "alarm_item";
	public final static String ALARM_VALUE = "alarm_value";
	public final static String ALARM_MODE = "alarm_mode";

	/**
	 * action层返回视图层的返回变量
	 */
	public final static String ACTION_GET_VM_INFO_SUCCESS = "GetVmInfoSuccess";
	public final static String ACTION_GET_VM_INFO_FAILURE = "GetVmInfoFailure";

	public final static String ACTION_RESTART_SUCCESS = "RestartSuccess";
	public final static String ACTION_RESTART_FAILURE = "RestartFailure";

	public final static String ACTION_MONITOR_ALARM_SUCCESS = "MonitorAlarmSuccess";
	public final static String ACTION_MONITOR_ALARM_FAILURE = "MonitorAlarmFailure";

	public final static String ACTION_JSON_RESULT = "JsonResult";
	/**
	 * 请求客户端的URI常量
	 */
	public final static String METHOD_GET_VM_INFO_URI = "/lihelper/basic?method=getvminfo";
	public final static String METHOD_RESTART_URI = "/lihelper/basic?method=restart";
	public final static String METHOD_MONITOR_ALARM_URI = "/lihelper/monitor?method=monitor_alarm";
	public final static String METHOD_GET_MONITOR_INFO_URI = "/lihelper/monitor?method=get_monitor_info";
	public final static String METHOD_GET_MONITOR_INFOS_URI = "/lihelper/monitor?method=get_monitor_infos";
}