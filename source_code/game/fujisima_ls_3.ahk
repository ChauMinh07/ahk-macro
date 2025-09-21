#Requires AutoHotkey v2.0

;Get Config
fujisima_ls_3_config() {
    global name_config := "fujisima_ls_3"

    global Slot1Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Place")
    global Slot1Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Type")
    global Slot1Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Upgrade")

    global Slot2Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Place")
    global Slot2Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Type")
    global Slot2Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Upgrade")

    global Slot3Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Place")
    global Slot3Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Type")
    global Slot3Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Upgrade")

    global Slot4Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Place")
    global Slot4Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Type")
    global Slot4Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Upgrade")

    global Slot5Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Place")
    global Slot5Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Type")
    global Slot5Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Upgrade")

    global Slot6Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Place")
    global Slot6Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Type")
    global Slot6Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Upgrade")

    global MainDPS := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "MainDPS")
}
fujisima_ls_3_config()

setting_GUI_fujisima_ls_3() {
    fujisima_ls_3_config()
    global act_settings_GUI := Gui()

    act_settings_GUI.Add("GroupBox", "x5 y5 w300 h200 +0x200 +Left", "Place Amount")

    act_settings_GUI.Add("Text", "x10 y30 w80 h16 +0x200", "Unit 1 Place")
    global Slot1PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y25 w40 h150 +0x200", [1, 2, 3, 4, 5, 6
    ])
    Slot1PlaceValue.Text := Slot1Place
    global Slot1TypeValue := act_settings_GUI.Add("DropDownList", "x145 y25 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot1TypeValue.Text := Slot1Type
    global Slot1UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y25 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot1UpgradeValue.Text := Slot1Upgrade

    act_settings_GUI.Add("Text", "x10 y60 w80 h16 +0x200", "Unit 2 Place")
    global Slot2PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y55 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot2PlaceValue.Text := Slot2Place
    global Slot2TypeValue := act_settings_GUI.Add("DropDownList", "x145 y55 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot2TypeValue.Text := Slot2Type
    global Slot2UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y55 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot2UpgradeValue.Text := Slot2Upgrade

    act_settings_GUI.Add("Text", "x10 y90 w80 h16 +0x200", "Unit 3 Place")
    global Slot3PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y85 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot3PlaceValue.Text := Slot3Place
    global Slot3TypeValue := act_settings_GUI.Add("DropDownList", "x145 y85 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot3TypeValue.Text := Slot3Type
    global Slot3UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y85 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot3UpgradeValue.Text := Slot3Upgrade

    act_settings_GUI.Add("Text", "x10 y120 w80 h16 +0x200", "Unit 4 Place")
    global Slot4PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y115 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot4PlaceValue.Text := Slot4Place
    global Slot4TypeValue := act_settings_GUI.Add("DropDownList", "x145 y115 w65 h150 +0x200", ["Ground", "Hill",
        "Farm"])
    Slot4TypeValue.Text := Slot4Type
    global Slot4UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y115 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot4UpgradeValue.Text := Slot4Upgrade

    act_settings_GUI.Add("Text", "x10 y150 w80 h16 +0x200", "Unit 5 Place")
    global Slot5PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y145 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot5PlaceValue.Text := Slot5Place
    global Slot5TypeValue := act_settings_GUI.Add("DropDownList", "x145 y145 w65 h150 +0x200", ["Ground", "Hill",
        "Farm"])
    Slot5TypeValue.Text := Slot5Type
    global Slot5UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y145 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot5UpgradeValue.Text := Slot5Upgrade

    act_settings_GUI.Add("Text", "x10 y180 w80 h16 +0x200", "Unit 6 Place")
    global Slot6PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y175 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot6PlaceValue.Text := Slot6Place
    global Slot6TypeValue := act_settings_GUI.Add("DropDownList", "x145 y175 w65 h150 +0x200", ["Ground", "Hill",
        "Farm"])
    Slot6TypeValue.Text := Slot6Type
    global Slot6UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y175 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot6UpgradeValue.Text := Slot6Upgrade

    act_settings_GUI.Add("Text", "x85 y215 w80 h16 +0x200 +BackgroundTrans", "Main DPS")
    global MainDPSValue := act_settings_GUI.Add("DropDownList", "x145 y212 w80 h250 +Center +0x200", ["None", "Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5", "Slot 6"])
    MainDPSValue.Text := MainDPS

    Notes := act_settings_GUI.Add("Text", "x0 y245 w310 h16 +Center +0x200 +BackgroundTrans", "Choose '0' = Disable")
    Notes := act_settings_GUI.Add("Text", "x0 y265 w310 h16 +Center +0x200 +BackgroundTrans",
        "Place Priority: Slot 1 > 2 > 3 > 4 > 5 > 6")
    Notes := act_settings_GUI.Add("Text", "x0 y285 w310 h16 +Center +0x200 +BackgroundTrans",
        "Choose Card Priority: 1 > 2 > 3 > 4 > 5 > 6")

    global ChangeButton := act_settings_GUI.Add("Button", "x10 y315 w290 h35 +BackgroundGreen +Center +0x200",
        "CLICK HERE TO CHANGE")
    ChangeButton.OnEvent('Click', ChangeSettingsEvent_fujisima_ls_3)

    act_settings_GUI.Show("w310 h360")
}

ChangeSettingsEvent_fujisima_ls_3(*) {
    global totalPlace := Map()
    totalPlace["Ground"] := 0
    totalPlace["Hill"] := 0
    totalPlace["Farm"] := 0

    i := 1
    while (i <= 6) {
        if (i == 1) {
            totalPlace[Slot1TypeValue.Text] += Slot1PlaceValue.Text
        } else if (i == 2) {
            totalPlace[Slot2TypeValue.Text] += Slot2PlaceValue.Text
        } else if (i == 3) {
            totalPlace[Slot3TypeValue.Text] += Slot3PlaceValue.Text
        } else if (i == 4) {
            totalPlace[Slot4TypeValue.Text] += Slot4PlaceValue.Text
        } else if (i == 5) {
            totalPlace[Slot5TypeValue.Text] += Slot5PlaceValue.Text
        } else if (i == 6) {
            totalPlace[Slot6TypeValue.Text] += Slot6PlaceValue.Text
        }
        i += 1
    }

    if (totalPlace["Ground"] > 0) {
        try {
            fujisima_ls_3_getGroundPos(totalPlace["Ground"])
        } catch Error {
            MsgBox "You have exceeded the maximum Ground Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Hill"] > 0 {
        try {
            fujisima_ls_3_getHillPos(totalPlace["Hill"])
        } catch Error {
            MsgBox "You have exceeded the maximum Hill Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Farm"] > 0 {
        try {
            fujisima_ls_3_getFarmPos(totalPlace["Farm"])
        } catch Error {
            MsgBox "You have exceeded the maximum Farm Place Amount that can be placed on this map, please lower it"
            return
        }
    }

    IniWrite Slot1PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Place'
    IniWrite Slot1TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Type'
    IniWrite Slot2PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Place'
    IniWrite Slot2TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Type'
    IniWrite Slot3PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3Place'
    IniWrite Slot3TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3Type'
    IniWrite Slot4PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4Place'
    IniWrite Slot4TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4Type'
    IniWrite Slot5PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5Place'
    IniWrite Slot5TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5Type'
    IniWrite Slot6PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6Place'
    IniWrite Slot6TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6Type'
    IniWrite Slot1UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Upgrade'
    IniWrite Slot2UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Upgrade'
    IniWrite Slot3UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3Upgrade'
    IniWrite Slot4UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4Upgrade'
    IniWrite Slot5UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5Upgrade'
    IniWrite Slot6UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6Upgrade'

    fujisima_ls_3_config()
    act_settings_GUI.Destroy()
}

;Macro
starting_fujisima_ls_3() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            movePlayBox()

            ;Click map button
            moveToManualTarget(260, 370)
            Sleep(300)

            ;Click ls button
            moveToManualTarget(550, 190)
            Sleep(300)

            ;Click on Act
            if (Act.Text == "Legend Stages 1") {
                moveToManualTarget(365, 245)
            } else if (Act.Text == "Legend Stages 2") {
                moveToManualTarget(365, 270)
            } else if (Act.Text == "Legend Stages 3") {
                moveToManualTarget(365, 295)
            }

            Sleep(500)

            ;Click on Select button
            moveToManualTarget(350, 400)
            Sleep(500)

            ;Click "START"
            moveToManualTarget(635, 390)
            Sleep(500)

            ;Wait until joining game
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, votestart) {
                Sleep(500)
            }
            Sleep(1000)

            fujisima_ls_3_config()
            starting_fujisima_ls_3_ingame()
        }
    }
}

starting_fujisima_ls_3_ingame() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {

            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            chatbox :=
                "|<>*100$24.000000000000000000000400070007k007w007k00700040000000000000000000000s003zk3zzs7zzwDzU"

            if (FindText(&X, &Y, 125, 42, 175, 85, 0, 0, chatbox)) {
                moveToManualTarget(140, 35)
            }
            Sleep(100)

            Send "{Tab}"

            ;Zoom In
            Sleep(100)
            MouseMove(400, 300, 5)
            Sleep(1000)
            Click()
            Sleep(100)
            MouseMove(0, -30, 0, "R")
            loop (10) {
                Send "{Wheelup}"
                Sleep(100)
            }

            ;Zoom Out
            MouseMove(0, 0, 0, "R")
            loop (30) {
                Send "{Wheeldown}"
                Sleep(100)
            }

            ;Click Settings
            moveToManualTarget(15, 565)
            Sleep(300)

            ;Click Settings Zone
            moveToManualTarget(178, 215)
            Sleep(300)

            loop (10) {
                Send "{Wheeldown}"
                Sleep(100)
            }

            Sleep(300)
            process_title.Text := "Checking spawn condition"

            ;Tele to spawn
            moveToManualTarget(565, 335)

            ;while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, fujisima_spawn_condition) {
            ;    if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, votestart) {
            ;        reConnect()
            ;    }
            ;    process_title.Text := "Checking spawn condition."
            ;    moveToManualTarget(560, 360)
            ;    Sleep(500)
            ;    process_title.Text := "Checking spawn condition.."
            ;    Sleep(500)
            ;    process_title.Text := "Checking spawn condition..."
            ;    Sleep(500)
            ;}

            process_title.Text := "Correct spawn!"
            ;Close Settings
            moveToManualTarget(640, 150)
            Sleep(1000)

            ;Start button
            Sleep(100)
            moveToManualTarget(400, 130)
            Sleep(100)

            fujisima_ls_3_duringGame()
        }
    }

}

fujisima_ls_3_duringGame() {
    global totalPlace := Map()
    totalPlace["Ground"] := 0
    totalPlace["Hill"] := 0
    totalPlace["Farm"] := 0

    i := 1
    while (i <= 6) {
        if (i == 1) {
            totalPlace[Slot1Type] += Slot1Place
        } else if (i == 2) {
            totalPlace[Slot2Type] += Slot2Place
        } else if (i == 3) {
            totalPlace[Slot3Type] += Slot3Place
        } else if (i == 4) {
            totalPlace[Slot4Type] += Slot4Place
        } else if (i == 5) {
            totalPlace[Slot5Type] += Slot5Place
        } else if (i == 6) {
            totalPlace[Slot6Type] += Slot6Place
        }
        i += 1
    }

    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    ;Update Projess
    process.Value := 1
    process_title.Text := "Placing 1st Slot Unit!"

    groundPlaced := 0
    hillPlaced := 0
    farmPlaced := 0

    unitPlacedPos := []

    ;1st Unit
    placed := 1
    if (placed <= Slot1Place) {
        while (placed <= Slot1Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                if Slot1Type == "Ground" {
                    getPos := fujisima_ls_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Hill") {
                    getPos := fujisima_ls_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Farm") {
                    getPos := fujisima_ls_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 1st - " . placed
                Send("{1}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                ;Make sure no upgrade UI
                moveToManualTarget(400, 588)
                Sleep(500)
            }
            ;Make sure no upgrade UI
            moveToManualTarget(400, 588)
            Sleep(500)

            if Slot1Type == "Ground" {
                groundPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade)
            } else if (Slot1Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade)
            } else if (Slot1Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade . ",Farm")
            }

            placed += 1
        }
    }

    process.Value := 10

    ;2nd Unit
    placed := 1
    if (placed <= Slot2Place) {
        while (placed <= Slot2Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                if Slot2Type == "Ground" {
                    getPos := fujisima_ls_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Hill") {
                    getPos := fujisima_ls_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Farm") {
                    getPos := fujisima_ls_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 2nd - " . placed
                Send("{2}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                ;Make sure no upgrade UI
                moveToManualTarget(400, 588)
                Sleep(500)
            }
            ;Make sure no upgrade UI
            moveToManualTarget(400, 588)
            Sleep(500)

            if Slot2Type == "Ground" {
                groundPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade)
            } else if (Slot2Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade)
            } else if (Slot2Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade . ",Farm")
            }

            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)
    process.Value := 20

    ;3rd Unit
    placed := 1
    if (placed <= Slot3Place) {
        while (placed <= Slot3Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                if Slot3Type == "Ground" {
                    getPos := fujisima_ls_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Hill") {
                    getPos := fujisima_ls_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Farm") {
                    getPos := fujisima_ls_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 3rd - " . placed
                Send("{3}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                ;Make sure no upgrade UI
                moveToManualTarget(400, 588)
                Sleep(500)
            }
            ;Make sure no upgrade UI
            moveToManualTarget(400, 588)
            Sleep(500)

            if Slot3Type == "Ground" {
                groundPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade)
            } else if (Slot3Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade)
            } else if (Slot3Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade . ",Farm")
            }

            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)
    process.Value := 35

    ;4th Unit
    placed := 1
    if (placed <= Slot4Place) {
        while (placed <= Slot4Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                if Slot4Type == "Ground" {
                    getPos := fujisima_ls_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Hill") {
                    getPos := fujisima_ls_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Farm") {
                    getPos := fujisima_ls_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 4th - " . placed
                Send("{4}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                ;Make sure no upgrade UI
                moveToManualTarget(400, 588)
                Sleep(500)
            }
            ;Make sure no upgrade UI
            moveToManualTarget(400, 588)
            Sleep(500)

            if Slot4Type == "Ground" {
                groundPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade)
            } else if (Slot4Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade)
            } else if (Slot4Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade . ",Farm")
            }

            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)
    process.Value := 55

    ;5th Unit
    placed := 1
    if (placed <= Slot5Place) {
        while (placed <= Slot5Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                if Slot5Type == "Ground" {
                    getPos := fujisima_ls_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Hill") {
                    getPos := fujisima_ls_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Farm") {
                    getPos := fujisima_ls_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 5th - " . placed
                Send("{5}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                ;Make sure no upgrade UI
                moveToManualTarget(400, 588)
                Sleep(500)
            }
            ;Make sure no upgrade UI
            moveToManualTarget(400, 588)
            Sleep(500)

            if Slot5Type == "Ground" {
                groundPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade)
            } else if (Slot5Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade)
            } else if (Slot5Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade . ",Farm")
            }

            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)
    process.Value := 70

    ;6th Unit
    placed := 1
    if (placed <= Slot6Place) {
        while (placed <= Slot6Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                if Slot6Type == "Ground" {
                    getPos := fujisima_ls_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Hill") {
                    getPos := fujisima_ls_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Farm") {
                    getPos := fujisima_ls_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 6th - " . placed
                Send("{6}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                ;Make sure no upgrade UI
                moveToManualTarget(400, 588)
                Sleep(500)
            }
            ;Make sure no upgrade UI
            moveToManualTarget(400, 588)
            Sleep(500)

            if Slot6Type == "Ground" {
                groundPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade)
            } else if (Slot6Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade)
            } else if (Slot6Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade . ",Farm")
            }

            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)

    Upgrade := 0
    while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
        ;Upgrade DPS Unit until end screen
        process_title.Text := "Upgrade units while waiting for end screen... (" Upgrade ")"
        process.Value := 90

        for pos in unitPlacedPos {
            xy := StrSplit(pos, ",")
            x_place := xy[1]
            y_place := xy[2]
            if (xy[3] != "No Upgrade") {
                moveToManualTarget(x_place, y_place)
                Sleep(500)

                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, adventure_red_army_wave_25)) {
                    try {
                        if xy[4] == "Farm" {
                            Send("{X}")
                        }
                    }
                }

                if xy[3] == "MAX" {
                    try {
                        if totalPlace["Ground"] < 4 {
                            if Upgrade == 10 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(2000)
                                    }
                                }
                            } else if Upgrade == 20 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            } else if Upgrade == 35 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            }
                        } else if ((totalPlace["Ground"] > 4) && (totalPlace["Ground"] < 10)) {
                            if Upgrade == 5 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            } else if Upgrade == 10 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            } else if Upgrade == 20 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            }
                        } else if ((totalPlace["Ground"] > 4) && (totalPlace["Ground"] > 10)) {
                            if Upgrade == 3 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            } else if Upgrade == 7 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            } else if Upgrade == 15 {
                                if xy[4] == "Farm" {
                                    loop 20 {
                                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(4000)
                                    }
                                }
                            }
                        }

                    }
                    Send("{F}")
                } else {
                    try {
                        if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img[xy[3]]) {
                            Send("{F}")
                        }
                    }
                }

                Sleep(500)
                ;Make sure no upgrade UI
                moveToManualTarget(400, 588)
                Sleep(500)
                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                    break
                }
            } else {
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, adventure_red_army_wave_25)) {
                    try {
                        Sleep(500)
                        moveToManualTarget(x_place, y_place)
                        Sleep(500)
                        if xy[4] == "Farm" {
                            Send("{X}")
                        }
                        ;Make sure no upgrade UI
                        moveToManualTarget(400, 588)
                        Sleep(500)
                        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                            break
                        }
                    }
                }
            }
        }

        Upgrade += 1
        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)
    }

    ;Wait
    Sleep(100)

    fujisima_ls_3_retryGame()
}

fujisima_ls_3_retryGame() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    Sleep(500)

    process_title.Text := "Claiming"
    process.Value := 98
    ;Skip Items
    if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
        moveToManualTarget(408, 297)
        Sleep(850)
        moveToManualTarget(408, 297)
        Sleep(850)
        moveToManualTarget(408, 297)
        Sleep(850)
        moveToManualTarget(408, 297)
        Sleep(850)
        moveToManualTarget(408, 297)
        Sleep(850)
    }

    ;Checking Drop
    if (statsMode == "On") {
        checkingDrop()
        Sleep(100)
    }

    ;Sending Result to Discord Webhook
    startWebhook()
    Sleep(100)

    ;Retry Button
    clickRetryButton()

    process.Value := 100

    fujisima_ls_3_duringGame()
}

fujisima_ls_3_getFarmPos(index) {
    ;x,y
    farmPos := Map()
    farmPos[1] := "384,246"
    farmPos[2] := "590,260"
    farmPos[3] := "590,280"
    farmPos[4] := "348,261"

    return farmPos[index]
}

fujisima_ls_3_getHillPos(index) {
    ;x,y
    HillPos := Map()

    HillPos[1] := "368,254"
    HillPos[2] := "380,255"
    HillPos[3] := "364,265"
    HillPos[4] := "376,264"
    HillPos[5] := "309,301"
    HillPos[6] := "309,315"
    HillPos[7] := "299,307"
    HillPos[8] := "300,319"
    HillPos[9] := "512,191"
    HillPos[10] := "526,188"
    HillPos[11] := "534,194"
    HillPos[12] := "525,197"
    HillPos[13] := "431,371"
    HillPos[14] := "416,377"
    HillPos[15] := "415,391"
    HillPos[16] := "429,381"
    HillPos[17] := "426,395"
    HillPos[18] := "569,346"

    return HillPos[index]
}

fujisima_ls_3_getGroundPos(index) {
    ;x,y
    GroundPos := Map()

    GroundPos[1] := "395,274"
    GroundPos[2] := "395,264"
    GroundPos[3] := "395,254"
    GroundPos[4] := "395,244"
    GroundPos[5] := "395,234"
    GroundPos[6] := "395,224"
    GroundPos[7] := "418,232"
    GroundPos[8] := "418,242"
    GroundPos[9] := "418,252"
    GroundPos[10] := "418,262"
    GroundPos[11] := "418,272"
    GroundPos[12] := "418,282"
    GroundPos[13] := "408,198"
    GroundPos[14] := "398,198"
    GroundPos[15] := "378,198"
    GroundPos[16] := "368,198"
    GroundPos[17] := "358,198"
    GroundPos[18] := "348,198"
    GroundPos[19] := "338,198"
    GroundPos[20] := "328,198"
    GroundPos[21] := "351,275"
    GroundPos[22] := "341,275"
    GroundPos[23] := "331,275"
    GroundPos[24] := "321,275"
    GroundPos[25] := "311,275"
    GroundPos[26] := "405,211"
    GroundPos[27] := "415,211"
    GroundPos[28] := "425,211"
    GroundPos[29] := "435,211"
    GroundPos[30] := "553,260"
    GroundPos[31] := "539,270"
    GroundPos[32] := "530,281"
    GroundPos[33] := "466,383"
    GroundPos[34] := "466,393"
    GroundPos[35] := "476,383"
    GroundPos[36] := "520,348"

    return GroundPos[index]
}
