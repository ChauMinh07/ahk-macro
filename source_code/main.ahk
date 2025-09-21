#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 4

;Auto Save Data
saveMode(*) {
    IniWrite Mode.Text, A_ScriptDir "\config.ini", "Config", "currentMode"

    getConfigValues()
}

saveMapMode(*) {
    IniWrite MapMode.Text, A_ScriptDir "\config.ini", "Config", "currentMap"

    getConfigValues()
}

saveAct(*) {
    IniWrite Act.Text, A_ScriptDir "\config.ini", "Config", "currentAct"

    getConfigValues()
}

saveConfig(*) {
    IniWrite DelayStartBox.Value, A_ScriptDir "\config.ini", "Config", "delayStart"
    IniWrite AutoClickDelayBox.Value, A_ScriptDir "\config.ini", "Config", "autoClickDelay"
    IniWrite WebhookBox.Value, A_ScriptDir "\config.ini", "Config", "webhook"
    IniWrite PSBox.Value, A_ScriptDir "\config.ini", "Config", "pslink"
    IniWrite browserMainAccountBox.Text, A_ScriptDir "\config.ini", "Config", "browserMainAccount"
    ;IniWrite LOWBox.Value, A_ScriptDir "\config.ini", "Config", "leaveOnWave"
    ;IniWrite turnScheduleModeBox.Text, A_ScriptDir "\config.ini", "Config", "scheduleMode"
    IniWrite statsTurnBox.Text, A_ScriptDir "\config.ini", "Config", "statsMode"
    IniWrite autoChangeSettingsBox.Text, A_ScriptDir "\config.ini", "Config", "autoChangeSettingsMode"
    getConfigValues()
}
saveHotkeyValues(Key, A_GuiEvent := "", GuiCtrlObj := "", Info := "") {
    Sleep(2000)

    hotkeyValue := myGui.Submit("0")
    if (Key == "startHotkey") {
        Hotkey(startHotkey, "Off")
        hotkeyString := hotkeyValue.startHotkey
        Hotkey hotkeyString, StartMacro
    } else if (Key == "stopHotkey") {
        Hotkey(stopHotkey, "Off")
        hotkeyString := hotkeyValue.stopHotkey
        Hotkey hotkeyString, ExitMacro
    } else if (Key == "ResizeHotkey") {
        Hotkey(ResizeHotkey, "Off")
        hotkeyString := hotkeyValue.ResizeHotkey
        Hotkey hotkeyString, ResizeApp
    } else if (Key == "AutoClickHotkey") {
        Hotkey(AutoClickHotkey, "Off")
        hotkeyString := hotkeyValue.AutoClickHotkey
        Hotkey hotkeyString, AutoClick
    } else {
        MsgBox("Something error when proccesing new Hotkey. Please try again!")
    }

    getConfigValues()
    Tab.Focus()
    IniWrite hotkeyString, A_ScriptDir "\config.ini", "Config", Key
}

;scheduleModeShow(*) {
;    if turnScheduleModeBox.Text == "On" {
;        ScheduleModeEditButton.Visible := true
;    } else {
;        ScheduleModeEditButton.Visible := false
;    }
;}

;Get Maps
GetMaps(*) {
    Tab.UseTab(1)

    if (Mode.Text == "Story") {
        MapMode.Delete()
        Act.Delete()

        MapMode.Add(["West City", "Fujisima", "Clover Kingdom"])
    }
    else if (Mode.Text == "Raid") {
        MapMode.Delete()
        Act.Delete()

        MapMode.Add(["Ancient Dungeon"])
    }
    else if (Mode.Text == "Adventure") {
        MapMode.Delete()
        Act.Delete()

        MapMode.Add(["Christmas", "Red Army HQ"])
    }

    loadConfig := IniRead(A_ScriptDir "/config.ini", "Config", "loadConfig")
    if (loadConfig == 0) {
        try {
            MapMode.Text := currentMap
            IniWrite 1, A_ScriptDir "/config.ini", "Config", "loadConfig"
        }
    }

    saveMode()
    getConfigValues()
}

;Get Acts
GetActs(*) {
    Tab.UseTab(1)

    ;Story
    if (Mode.Text == "Story" && MapMode.Text == "West City") {
        Act.Delete()
        Act.Add(["Infinite", "Legend Stages 1", "Legend Stages 2"])
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Fujisima") {
        Act.Delete()
        Act.Add(["Legend Stages 1", "Legend Stages 2", "Legend Stages 3"])
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Clover Kingdom") {
        Act.Delete()
        Act.Add(["Legend Stages 1", "Legend Stages 2", "Legend Stages 3"])
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Red Army HQ") {
        Act.Delete()
        Act.Add(["Act 1"])
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Christmas") {
        Act.Delete()
        Act.Add(["Portal"])
    }
    else if (Mode.Text == "Raid" && MapMode.Text == "Ancient Dungeon") {
        Act.Delete()
        Act.Add(["Act 1", "Act 2", "Act 3", "Act 4", "Act 5", "Act 6"])
    }

    loadConfig := IniRead(A_ScriptDir "/config.ini", "Config", "loadConfig")
    if (loadConfig == 1) {
        try {
            Act.Text := currentAct
            IniWrite 2, A_ScriptDir "/config.ini", "Config", "loadConfig"
        }
    }
    saveMapMode()
    getConfigValues()
}

;Adding Act Tip
GetActTip(*) {
    Tab.UseTab(1)

    Tab.UseTab(2)
    if (Mode.Text == "Story" && MapMode.Text == "West City") {
        Slot1.Text := "Slot 1: Any Unit"
        Slot2.Text := "Slot 2: Any Unit"
        Slot3.Text := "Slot 3: Any Unit"
        Slot4.Text := "Slot 4: Any Unit"
        Slot5.Text := "Slot 5: Any Unit"
        Slot6.Text := "Slot 6: Any Unit"

        descriptionUnit1.Text := "You can disable, change max place of your Unit in 'Main' tab"
        descriptionUnit2.Text := ""
        descriptionUnit3.Text := ""
        descriptionUnit4.Text := ""
        descriptionUnit5.Text := ""
        descriptionUnit6.Text := ""
        descriptionUnit7.Text := ""
        descriptionUnit8.Text := ""
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Fujisima") {
        Slot1.Text := "Slot 1: Any Unit"
        Slot2.Text := "Slot 2: Any Unit"
        Slot3.Text := "Slot 3: Any Unit"
        Slot4.Text := "Slot 4: Any Unit"
        Slot5.Text := "Slot 5: Any Unit"
        Slot6.Text := "Slot 6: Any Unit"

        descriptionUnit1.Text := "You can disable, change max place of your Unit in 'Main' tab"
        descriptionUnit2.Text := ""
        descriptionUnit6.Text := ""
        descriptionUnit7.Text := ""
        descriptionUnit8.Text := ""
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Clover Kingdom") {
        Slot1.Text := "Slot 1: Any Unit (default setting is Speedcart)"
        Slot2.Text := "Slot 2: Any Unit (default setting is Yune Gossi evo)"
        Slot3.Text := "Slot 3: Any Unit (default setting is Super Gohun evo)"
        Slot4.Text := "Slot 4: Any Unit (default setting is Darkbeard)"
        Slot5.Text := "Slot 5: Any Unit (default setting is Yuki)"
        Slot6.Text := "Slot 6: Any Unit (default setting is Water Goddess)"

        descriptionUnit1.Text := "You can disable, change max place of your Unit in 'Main' tab"
        descriptionUnit3.Text := "You can customize it for yourself,"
        descriptionUnit4.Text := "DO NOT NEED TO THE SAME AS DEFAULT SETTINGS."
        descriptionUnit7.Text := ""
        descriptionUnit8.Text := ""
    }
    else if (Mode.Text == "Raid" && MapMode.Text == "Ancient Dungeon") {
        Slot1.Text := "Slot 1: Any Unit (default setting is Speedcart)"
        Slot2.Text := "Slot 2: Any Unit (default setting is Yune Gossi evo)"
        Slot3.Text := "Slot 3: Any Unit (default setting is Super Gohun evo)"
        Slot4.Text := "Slot 4: Any Unit (default setting is Darkbeard)"
        Slot5.Text := "Slot 5: Any Unit (default setting is Yuki)"
        Slot6.Text := "Slot 6: Any Unit (default setting is Water Goddess)"

        descriptionUnit2.Text := "DEFAULT SETTING for Act 3."
        descriptionUnit3.Text := "You can customize it for yourself,"
        descriptionUnit4.Text := "DO NOT NEED TO THE SAME AS DEFAULT SETTINGS."
        descriptionUnit5.Text := ""
        descriptionUnit6.Text := ""
        descriptionUnit7.Text := ""
        descriptionUnit8.Text := ""
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Red Army HQ") {
        Slot1.Text := "Slot 1: Any Unit (default setting is Speedcart)"
        Slot2.Text := "Slot 2: Any Unit (default setting is Super Gohun evo)"
        Slot3.Text := "Slot 3: Any Unit (default setting is Yune Gossi evo)"
        Slot4.Text := "Slot 4: Any Unit (default setting is Water Goddess)"
        Slot5.Text := "Slot 5: Any Unit (default setting is Darkbeard)"
        Slot6.Text := "Slot 6: Any Unit (default setting is Yuki)"

        descriptionUnit2.Text := "You can customize it for yourself by click CHANGE SETTINGS"
        descriptionUnit3.Text := "button on Main tab."
        descriptionUnit4.Text := "DO NOT NEED TO THE SAME AS DEFAULT SETTINGS"
        descriptionUnit5.Text := "Default Settings is 90% of winning btw."
        descriptionUnit6.Text := ""
        descriptionUnit7.Text := ""
        descriptionUnit8.Text := ""
    }
    else {
        Slot1.Text := ""
        Slot2.Text := "         Please select Act if you want to see the Units options."
        Slot3.Text := ""
        Slot4.Text := ""
        Slot5.Text := ""
        Slot6.Text := ""

        descriptionUnit1.Text := ""
        descriptionUnit2.Text := ""
        descriptionUnit3.Text := ""
        descriptionUnit4.Text := ""
        descriptionUnit5.Text := ""
        descriptionUnit6.Text := ""
        descriptionUnit7.Text := ""
        descriptionUnit8.Text := ""
    }

    saveAct()
    getConfigValues()
}

ClickSettingsActButton(*) { ;Click Change Settings of This Act button
    if (Mode.Text == "Story" && MapMode.Text == "West City" && Act.Text == "Infinite") {
        setting_GUI_west_city_inf()
    }
    else if (Mode.Text == "Story" && MapMode.Text == "West City" && Act.Text == "Legend Stages 1") {
        setting_GUI_west_city_ls_1
    }
    else if (Mode.Text == "Story" && MapMode.Text == "West City" && Act.Text == "Legend Stages 2") {
        setting_GUI_west_city_ls_2
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Fujisima") {
        setting_GUI_fujisima_ls_3
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Clover Kingdom") {
        setting_GUI_clover_kingdom_ls_1_3
    }
    else if (Mode.Text == "Raid" && MapMode.Text == "Ancient Dungeon") {
        setting_GUI_raid_ancient_dungeon
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Red Army HQ") {
        setting_GUI_adventure_red_army
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Christmas" && Act.Text == "Portal") {
        setting_GUI_christmas_portal
    }
    else {
        MsgBox("This Act do not have any settings available.")
    }
}

; Main Function
ExitMacro(*) {
    Reload
}

global AutoClickTurn := false

AutoClick(*) {
    global AutoClickTurn

    if (!AutoClickTurn) {
        AutoClickTurn := true
        process_title.Text := "Clicking... (Press " AutoClickHotkey " to stop)"
        while (AutoClickTurn) {
            Click()
            Sleep(autoClickDelay)
        }
    } else {
        AutoClickTurn := false
        process_title.Text := "Waiting for start..."
    }
}

ResizeApp(ThisHotkey) {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            WinMove(0, 0, 816, 638, "ahk_exe RobloxPlayerBeta.exe")
        }
    }
}

global currentPlayTask := 1

StartMacro(*) {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {

            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            IniWrite 0, A_ScriptDir "\config.ini", "Config", "runTimes"
            runTimesShow.Text := IniRead(A_ScriptDir "\config.ini", "Config", "runTimes") + 1
            Sleep(delayStart)
            SetTimer checkingDisconnect, 2000
            SetTimer AutoAbilities, 400

            main_spawn_text :=
                "|<>*90$71.zzzzzzzzzzzzzzzzsD1wDzzzzzzDUC1kDsTzzzs70w3UTU7zz9sC0s70S0Dzy1kA1k41s0DzD3UM3UM3UsRyC70k60k73kvwSA1UA10A7VlsMA00M00MT31ksMU0k0Eky63Vkl0VU0XVw873VW132033kkS7362644C7VXwC6A4AM8Q641sQA8AMkkw080sM0Mszvls001k11tzzwIA3F102Q0zzk07wX2U800zzU00164Uk03zzy001k8y07zU3zzU0Uk0Twm003zk0E"
            if (!FindText(&X, &Y, 348, 52, 473, 109, 0, 0, main_spawn_text) && !ImageSearch(&FoundX, &FoundY, 0, 0, W,
                H, main_lobby) && !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby_no_update_logs)) {
                MsgBox('Please rejoin the game and keep "Update Logs! screen" then play macro again.')
                return
            }

            ;if leaveOnWave != 0 {
            ;    global WaveText := GetWaveText(leaveOnWave)
            ;    global testBox := myGui.Add("Text", "x330 y275 w100 h20", WaveText)
            ;    SetTimer LeaveOnWave_Feature, 1000
            ;}
            ;
            ;if scheduleMode == "On" {
            ;    process_title.Text := "Starting Schedule Mode"
            ;    PlayScheduleMode()
            ;} else {
            if (Act.Text == "") {
                MsgBox("Please choose the Act before playing Macro.", "Warning!")
            } else {
                process_title.Text := "Starting"
                PlayMacro()
            }
            ;}
        }
    } else {
        MsgBox("Your Roblox WEB Client is not running.", "Warning!")
    }
}

;Schedule Mode

MaxTask := 7
EditTask := 1

EditScheduleMode(*) {
    global ScheduleGUI := Gui()
    ScheduleGUI.SetFont("s18")
    ScheduleGUI_add := ScheduleGUI.Add("Button", "x60 y260 w30 h30 +BackgroundTrans", "➕")
    ScheduleGUI_add.OnEvent("Click", AddTaskSchedule_UI)

    ScheduleGUI_remove := ScheduleGUI.Add("Button", "x100 y260 w30 h30 +BackgroundTrans", "➖")
    ScheduleGUI_remove.OnEvent("Click", RemoveTaskSchedule_Func)

    ScheduleGUI_edit := ScheduleGUI.Add("Button", "x140 y260 w30 h30 +BackgroundTrans", "✏️")
    ScheduleGUI_edit.OnEvent("Click", EditTaskSchedule_Func)

    ScheduleGUI.SetFont("s16")
    ScheduleGUI_Close := ScheduleGUI.Add("Button", "x180 y260 w260 h30 +BackgroundTrans", "CLOSE")
    ScheduleGUI_Close.OnEvent("Click", CloseScheduleGUI)
    CurrentTask := 1

    while CurrentTask <= MaxTask {
        Task := IniRead(A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" CurrentTask)
        if (Task == "") {
            break
        } else {
            if (CurrentTask == 1) {
                yloc := 10
            } else {
                yloc := 10 + 35 * (CurrentTask - 1)
            }
            ScheduleGUI.SetFont("s9")
            DisplayText := StrSplit(Task, ",")
            ScheduleGUI.Add("Button", "x10 y" yloc " w480 h30", "Task " CurrentTask ": On Run Times " DisplayText[4] " > " DisplayText[
                1] ", " DisplayText[2] ", " DisplayText[3] " (Team " DisplayText[5] ")")
        }
        CurrentTask += 1
    }

    ScheduleGUI.Show("w500 h300")
}

CloseScheduleGUI(*) {
    ScheduleGUI.Destroy()
}

EditTaskSchedule_Func(*) {
    global ScheduleEditGUI := Gui()
    CurrentTask := 1
    ScheduleEditGUI.Add("Text", "x10 y15 w70 h30", "Change Task ")
    global EditTask := ScheduleEditGUI.Add("DropDownList", "x80 y10 w40 h150")
    ScheduleEditGUI.Add("Text", "x130 y15 w85 h30", "to Run Times")
    global EditTask_RunTimes := ScheduleEditGUI.Add("Edit", "x200 y10 w45 h20")
    ScheduleEditGUI.Add("Text", "x255 y15 w30 h30", "and")
    global EditTask_ChangeModes := ScheduleEditGUI.Add("DropDownList", "x285 y10 w70 h70", ["change", "keep"])
    EditTask_ChangeModes.Text := "keep"
    ScheduleEditGUI.Add("Text", "x365 y15 w200 h30 +BackgroundTrans", "current mode and swich to team")
    global EditTask_ChangeTeam := ScheduleEditGUI.Add("DropDownList", "x525 y10 w50 h150", ["0", "1", "2", "3", "4",
        "5"])
    EditTask_ChangeTeam.Text := "0"

    while CurrentTask <= MaxTask {
        Task := IniRead(A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" CurrentTask)
        if (Task == "") {
            break
        }

        EditTask.Add([CurrentTask])
        CurrentTask += 1
    }

    ScheduleEditGUI.SetFont("s16")
    EditTask_button := ScheduleEditGUI.Add("Button", "x10 y50 w565 h30", "EDIT")
    EditTask_button.OnEvent("Click", EditTaskSchedule_Func_Button)

    ScheduleEditGUI.Show("w585 h90")
}

EditTaskSchedule_Func_Button(*) {
    if EditTask {
        try {
            CurrentTaskValue := IniRead(A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" EditTask.Text)
            if CurrentTaskValue != "" {
                if EditTask_ChangeModes.Text == "change" {
                    IniWrite(Mode.Text "," MapMode.Text "," Act.Text "," EditTask_RunTimes.Text "," EditTask_ChangeTeam
                        .Text, A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" EditTask.Text)
                } else {
                    CurrentTaskValue := StrSplit(CurrentTaskValue, ",")
                    IniWrite(CurrentTaskValue[1] "," CurrentTaskValue[2] "," CurrentTaskValue[3] "," EditTask_RunTimes.Text "," EditTask_ChangeTeam
                        .Text, A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" EditTask.Text)
                }
            } else {
                MsgBox("Task " EditTask.Text " is not exist!", "Warning!")
            }
        } catch Error {
            MsgBox("Please fill in the information correctly!", "Warning!")
            return
        }
    }
    ScheduleEditGUI.Destroy()
    ScheduleGUI.GetPos(&X, &Y, ,)
    ScheduleGUI.Destroy()
    EditScheduleMode()
    ScheduleGUI.Move(X, Y)
}

RemoveTaskSchedule_Func(*) {
    CurrentTask := 1
    while CurrentTask <= MaxTask {
        Task := IniRead(A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" CurrentTask)
        if (Task == "") {
            break
        }
        CurrentTask += 1
    }
    if CurrentTask > 1 {
        CurrentTask -= 1
    }
    IniWrite("", A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" CurrentTask)
    ScheduleGUI.GetPos(&X, &Y, ,)
    ScheduleGUI.Destroy()
    EditScheduleMode()
    ScheduleGUI.Move(X, Y)
}

AddTaskSchedule_UI(*) {
    global ScheduleAddGUI := Gui()
    ScheduleAddGUI.Add("Text", "x10 y10 w170 h30", "Play Current Mode On Run Times:")
    ScheduleAddGUI.Add("Text", "x10 y35 w170 h30", "and switch to team slot: (0 = keep)")
    global onRunTimesTask := ScheduleAddGUI.Add("Edit", "x180 y5 w60 h20 +Number")
    global onRunTimesTeams := ScheduleAddGUI.Add("DropDownList", "x180 y30 w60 h120", ["0", "1", "2", "3", "4", "5"])
    onRunTimesTeams.Text := 0
    ScheduleAddGUI_add := ScheduleAddGUI.Add("Button", "x5 y60 w240 h30 +BackgroundTrans", "ADD")
    ScheduleAddGUI.Show("w250 h100")

    ScheduleAddGUI_add.OnEvent("Click", AddTaskSchedule_Func)
}

AddTaskSchedule_Func(*) {

    CurrentTask := 1

    while CurrentTask <= MaxTask {
        Task := IniRead(A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" CurrentTask)
        if (Task == "") {
            break
        }
        CurrentTask += 1
    }

    if CurrentTask > MaxTask {
        MsgBox("You have reached the maximum number of tasks, please remove any task to add.", "Warning!")
    } else if (CurrentTask == 1) {
        if (onRunTimesTask.Text != 1) {
            MsgBox("You need to set the 1st task to Run Times = 1.", "Warning!")
        } else {
            IniWrite(Mode.Text "," MapMode.Text "," Act.Text "," onRunTimesTask.Text "," onRunTimesTeams.Text,
                A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" CurrentTask)
            if (CurrentTask == 1) {
                yloc := 10
            } else {
                yloc := 10 + 35 * (CurrentTask - 1)
            }
            ScheduleGUI.SetFont("s9")
            ScheduleGUI.Add("Button", "x10 y" yloc " w480 h30", "Task " CurrentTask ": On Run Times " onRunTimesTask.Text " > " Mode
                .Text ", " MapMode.Text ", " Act.Text " (Team " onRunTimesTeams.Text ")")
            ScheduleAddGUI.Destroy()
        }
    }
    else {
        IniWrite(Mode.Text "," MapMode.Text "," Act.Text "," onRunTimesTask.Text "," onRunTimesTeams.Text, A_ScriptDir "/mmc/schedule.ini",
            "Config", "Task_" CurrentTask)
        if (CurrentTask == 1) {
            yloc := 10
        } else {
            yloc := 10 + 35 * (CurrentTask - 1)
        }
        ScheduleGUI.SetFont("s9")
        ScheduleGUI.Add("Button", "x10 y" yloc " w480 h30", "Task " CurrentTask ": On Run Times " onRunTimesTask.Text " > " Mode
            .Text ", " MapMode.Text ", " Act.Text " (Team " onRunTimesTeams.Text ")")
        ScheduleAddGUI.Destroy()
    }
}

;Play Schedule Mode

PlayScheduleMode(*) {
    doCurrentTask := IniRead(A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" currentPlayTask)
    if (doCurrentTask != "") {
        TaskValue := StrSplit(doCurrentTask, ",")
        Mode.Text := TaskValue[1]
        GetMaps()
        MapMode.Text := TaskValue[2]
        GetActs()
        Act.Text := TaskValue[3]
        GetActTip()

        if (TaskValue[5] != "0") {
            moveToManualTarget(35, 200)
            Sleep(700)
            moveToManualTarget(430, 200)
            Sleep(700)
            if (TaskValue[5] == "1") {
                moveToManualTarget(585, 230)
            } else if (TaskValue[5] == "2") {
                moveToManualTarget(585, 320)
            } else if (TaskValue[5] == "3") {
                moveToManualTarget(585, 415)
            } else if (TaskValue[5] == "4") {
                moveToManualTarget(380, 285)
                Sleep(700)
                loop 2 {
                    Send("{WheelDown}")
                    Sleep(100)
                }
                Sleep(700)
                moveToManualTarget(585, 205)
            } else if (TaskValue[5] == "5") {
                Sleep(700)
                loop 2 {
                    Send("{WheelDown}")
                    Sleep(100)
                }
                Sleep(700)
                moveToManualTarget(585, 295)
            }
            Sleep(700)
            moveToManualTarget(655, 160)
            Sleep(700)
            moveToManualTarget(635, 150)
            Sleep(700)
        }

        SetTimer checkingRunTimes, 15000
        PlayMacro
    } else {
        MsgBox("You have not set any task! Try add one or turn this feature to off.", "Warning!")
    }

}

checkingRunTimes(*) {
    currentRunTimes := IniRead(A_ScriptDir "\config.ini", "Config", "runTimes")
    doCurrentTask := IniRead(A_ScriptDir "/mmc/schedule.ini", "Config", "Task_" currentPlayTask)
    if (doCurrentTask != "") {
        TaskValue := StrSplit(doCurrentTask, ",")

        if (currentRunTimes + 1) == TaskValue[4] {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            ;Return to lobby button on end screen
            moveToManualTarget(610, 420)
            Sleep(500)

            ;Settings button
            moveToManualTarget(20, 575)
            Sleep(700)

            ;Teleport to Lobby
            moveToManualTarget(515, 245)
            Sleep(700)

            ;Yes button on teleport screen
            moveToManualTarget(345, 310)
            Sleep(700)

            TaskValue := StrSplit(doCurrentTask, ",")
            Mode.Text := TaskValue[1]
            GetMaps()
            MapMode.Text := TaskValue[2]
            GetActs()
            Act.Text := TaskValue[3]
            GetActTip()

            while (!ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby)) {
                Sleep(300)
            }

            Sleep(1000)

            if (TaskValue[5] != "0") {
                moveToManualTarget(35, 200)
                Sleep(700)
                moveToManualTarget(430, 200)
                Sleep(700)
                if (TaskValue[5] == "1") {
                    moveToManualTarget(585, 230)
                } else if (TaskValue[5] == "2") {
                    moveToManualTarget(585, 320)
                } else if (TaskValue[5] == "3") {
                    moveToManualTarget(585, 415)
                } else if (TaskValue[5] == "4") {
                    moveToManualTarget(380, 285)
                    Sleep(700)
                    loop 2 {
                        Send("{WheelDown}")
                        Sleep(100)
                    }
                    Sleep(700)
                    moveToManualTarget(585, 205)
                } else if (TaskValue[5] == "5") {
                    Sleep(700)
                    loop 2 {
                        Send("{WheelDown}")
                        Sleep(100)
                    }
                    Sleep(700)
                    moveToManualTarget(585, 295)
                }
                Sleep(700)
                moveToManualTarget(655, 160)
                Sleep(700)
                moveToManualTarget(635, 150)
                Sleep(700)
            }

            PlayMacro
        }
    }
}

CheckingLeaveANDStartGems(*) {
    moveToManualTarget(400, 300)
    Send("{WheelDown}")
    Sleep(100)
    Send("{WheelDown}")
    moveToManualTarget(30, 340)
    Sleep(750)
    process_title.Text := "Checking your current gems..."
    Send("{Tab}")
    CaptureScreen("292, 530, 370, 558", 0, A_ScriptDir . "\ext\checking_gems.png")
    ; --whitelist "1234567890,.:"
    cmd := '"' . A_ScriptDir . '\ext\capture2text\Capture2Text_CLI.exe" --scale-factor 5.0 -i "' . A_ScriptDir .
        '\ext\checking_gems.png" -o "' . A_ScriptDir . '\ext\result.txt"'
    RunWait('cmd.exe /c ' . '"' . cmd . '"', , "Hide")
    Sleep(500)
    moveToManualTarget(600, 150)
    Sleep(250)
    try {
        string_gem := FileRead(A_ScriptDir . "\ext\result.txt")
        string_gem := RegExReplace(string_gem, "^\s+|\s+$", "")
        non_string_gems := ""
        for v in StrSplit(string_gem, "") {
            if InStr("1234567890", v) {
                non_string_gems .= v
            }
        }
        startGems := IniRead(A_ScriptDir "\config.ini", "Config", "startGems")
        if IniRead(A_ScriptDir "\config.ini", "Config", "runTimes") != 0 {
            if startGems != 0 {
                farmGems := non_string_gems - startGems
                IniWrite farmGems, A_ScriptDir "\config.ini", "Config", "farmGems"
                farmGemsShow.Text := farmGems
                currentGems := startGems + farmGems
                IniWrite currentGems, A_ScriptDir "\config.ini", "Config", "currentGems"
                currentGemsShow.Text := currentGems

                startWebhookNoRunTimesPlus()
            }
        } else {
            IniWrite non_string_gems, A_ScriptDir "\config.ini", "Config", "startGems"
            startGemsShow.Text := non_string_gems
            currentGemsShow.Text := non_string_gems
            farmGemsShow.Text := 0
            IniWrite 0, A_ScriptDir "\config.ini", "Config", "farmGems"
            IniWrite non_string_gems, A_ScriptDir "\config.ini", "Config", "currentGems"
        }
    }
}

PlayMacro(*) { ;Play Macro
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    ;Checking PS Link
    if (pslink == "" && browserMainAccount != "Roblox App") {
        MsgBox("Missing Private Server Link, if you do not want to using Link, please choose Roblox App")
        return
    }

    moveToManualTarget(600, 175)

    if (autoChangeSettingsMode == "ON") {
        Sleep(300)
        autoChangeSettings()
    }

    WinMove(0, 0, 816, 638, "ahk_exe RobloxPlayerBeta.exe")
    if statsMode == "On" {
        CheckingLeaveANDStartGems()
    }

    process_title.Text := "Playing macro..."
    global currentPlayTask
    currentPlayTask += 1
    if (Mode.Text == "Story" && MapMode.Text == "West City" && Act.Text == "Infinite") {
        starting_west_city_inf
    }
    else if (Mode.Text == "Story" && MapMode.Text == "West City" && Act.Text == "Legend Stages 1") {
        starting_west_city_ls_1
    }
    else if (Mode.Text == "Story" && MapMode.Text == "West City" && Act.Text == "Legend Stages 2") {
        starting_west_city_ls_2
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Fujisima" && (Act.Text == "Legend Stages 1" ||  Act.Text == "Legend Stages 2" || Act.Text == "Legend Stages 3")) {
        starting_fujisima_ls_3
    }
    else if (Mode.Text == "Story" && MapMode.Text == "Clover Kingdom" && (Act.Text == "Legend Stages 1" ||  Act.Text == "Legend Stages 2" || Act.Text == "Legend Stages 3")) {
        starting_clover_kingdom_ls_1_3
    }
    else if (Mode.Text == "Raid" && MapMode.Text == "Ancient Dungeon") {
        starting_raid_ancient_dungeon
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Red Army HQ" && Act.Text == "Act 1") {
        starting_adventure_red_army
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Christmas" && Act.Text == "Winter Mayhem") {
        starting_adventure_red_army
    }
    else if (Mode.Text == "Adventure" && MapMode.Text == "Christmas" && Act.Text == "Portal") {
        starting_christmas_portal
    }
}
