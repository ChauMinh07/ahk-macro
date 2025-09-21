#Requires AutoHotkey v2.0

;Get Config Values
getConfigValues()
getConfigValues() {
	global startHotkey := IniRead(A_ScriptDir "\config.ini", "Config", "startHotkey")
	global stopHotkey := IniRead(A_ScriptDir "\config.ini", "Config", "stopHotkey")
	global ResizeHotkey := IniRead(A_ScriptDir "\config.ini", "Config", "ResizeHotkey")
	global AutoClickHotkey := IniRead(A_ScriptDir "\config.ini", "Config", "AutoClickHotkey")
	if (startHotkey == "") {
		startHotkey := "F8"
	}
	if (stopHotkey == "") {
		stopHotkey := "F9"
	}
	if (ResizeHotkey == "") {
		ResizeHotkey := "F10"
	}
	if (AutoClickHotkey == "") {
		AutoClickHotkey := "F6"
	}

	global currentMode := IniRead(A_ScriptDir "\config.ini", "Config", "currentMode")
	global currentMap := IniRead(A_ScriptDir "\config.ini", "Config", "currentMap")
	global currentAct := IniRead(A_ScriptDir "\config.ini", "Config", "currentAct")

	global delayStart := IniRead(A_ScriptDir "\config.ini", "Config", "delayStart")
	global autoClickDelay := IniRead(A_ScriptDir "\config.ini", "Config", "autoClickDelay")
	global webhook := IniRead(A_ScriptDir "\config.ini", "Config", "webhook")
	global browserMainAccount := IniRead(A_ScriptDir "\config.ini", "Config", "browserMainAccount")
	global pslink := IniRead(A_ScriptDir "\config.ini", "Config", "pslink")
	;global leaveOnWave := IniRead(A_ScriptDir "\config.ini", "Config", "leaveOnWave")
	;global scheduleMode := IniRead(A_ScriptDir "\config.ini", "Config", "scheduleMode")
	global statsMode := IniRead(A_ScriptDir "\config.ini", "Config", "statsMode")

	global installRequire := IniRead(A_ScriptDir "\config.ini", "Config", "installRequire")
	global license := IniRead(A_ScriptDir "\config.ini", "Config", "license")

	global runTimes := IniRead(A_ScriptDir "\config.ini", "Config", "runTimes")
	global startGems := IniRead(A_ScriptDir "\config.ini", "Config", "startGems")
	global farmGems := IniRead(A_ScriptDir "\config.ini", "Config", "farmGems")
	global currentGems := IniRead(A_ScriptDir "\config.ini", "Config", "currentGems")

	global autoChangeSettingsMode := IniRead(A_ScriptDir "\config.ini", "Config", "autoChangeSettingsMode")
}