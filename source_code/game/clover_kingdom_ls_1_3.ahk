#Requires AutoHotkey v2.0

;Get Config
clover_kingdom_ls_1_3_config() {
    global name_config := "clover_kingdom_ls_1_3"

    global Slot1Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Place")
    global Slot1Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Type")
    global Slot1Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Upgrade")
    global Slot1AttackPriority := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1AttackPriority")

    global Slot2Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Place")
    global Slot2Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Type")
    global Slot2Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Upgrade")
    global Slot2AttackPriority := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2AttackPriority")

    global Slot3Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Place")
    global Slot3Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Type")
    global Slot3Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Upgrade")
    global Slot3AttackPriority := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3AttackPriority")

    global Slot4Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Place")
    global Slot4Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Type")
    global Slot4Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Upgrade")
    global Slot4AttackPriority := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4AttackPriority")

    global Slot5Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Place")
    global Slot5Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Type")
    global Slot5Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Upgrade")
    global Slot5AttackPriority := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5AttackPriority")

    global Slot6Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Place")
    global Slot6Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Type")
    global Slot6Upgrade := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Upgrade")
    global Slot6AttackPriority := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6AttackPriority")

    global MainDPS := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "MainDPS")
}
clover_kingdom_ls_1_3_config()

setting_GUI_clover_kingdom_ls_1_3() {
    clover_kingdom_ls_1_3_config()
    global act_settings_GUI := Gui()

    act_settings_GUI.Add("GroupBox", "x5 y5 w380 h200 +0x200 +Left", "Unit Settings")

    act_settings_GUI.Add("Text", "x10 y30 w80 h16 +0x200", "Unit 1 Place")

    act_settings_GUI.SetFont("s6")
    act_settings_GUI.Add("Text", "x110 y10 w80 h16 +0x200 +BackgroundTrans", "Place")
    act_settings_GUI.Add("Text", "x167 y10 w80 h16 +0x200 +BackgroundTrans", "Type")
    act_settings_GUI.Add("Text", "x240 y10 w80 h16 +0x200 +BackgroundTrans", "Upgrade")
    act_settings_GUI.Add("Text", "x320 y10 w80 h16 +0x200 +BackgroundTrans", "Attack Priority")
    act_settings_GUI.SetFont("s8")

    global Slot1PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y25 w40 h150 +0x200", [1, 2, 3, 4, 5, 6
    ])
    Slot1PlaceValue.Text := Slot1Place
    global Slot1TypeValue := act_settings_GUI.Add("DropDownList", "x145 y25 w65 h150 +0x200", ["Ground", "Hill", "Farm", "Buff"])
    Slot1TypeValue.Text := Slot1Type
    global Slot1UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y25 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot1UpgradeValue.Text := Slot1Upgrade
    global Slot1AttackPriorityValue := act_settings_GUI.Add("DropDownList", "x305 y25 w75 h150 +0x200", ["First", "Last", "Weakest", "Strongest", "Close", "Far", "Air", "Boss", "Shields"])
    Slot1AttackPriorityValue.Text := Slot1AttackPriority

    act_settings_GUI.Add("Text", "x10 y60 w80 h16 +0x200", "Unit 2 Place")
    global Slot2PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y55 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot2PlaceValue.Text := Slot2Place
    global Slot2TypeValue := act_settings_GUI.Add("DropDownList", "x145 y55 w65 h150 +0x200", ["Ground", "Hill", "Farm", "Buff"])
    Slot2TypeValue.Text := Slot2Type
    global Slot2UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y55 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot2UpgradeValue.Text := Slot2Upgrade
    global Slot2AttackPriorityValue := act_settings_GUI.Add("DropDownList", "x305 y55 w75 h150 +0x200", ["First", "Last", "Weakest", "Strongest", "Close", "Far", "Air", "Boss", "Shields"])
    Slot2AttackPriorityValue.Text := Slot2AttackPriority

    act_settings_GUI.Add("Text", "x10 y90 w80 h16 +0x200", "Unit 3 Place")
    global Slot3PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y85 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot3PlaceValue.Text := Slot3Place
    global Slot3TypeValue := act_settings_GUI.Add("DropDownList", "x145 y85 w65 h150 +0x200", ["Ground", "Hill", "Farm", "Buff"])
    Slot3TypeValue.Text := Slot3Type
    global Slot3UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y85 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot3UpgradeValue.Text := Slot3Upgrade
    global Slot3AttackPriorityValue := act_settings_GUI.Add("DropDownList", "x305 y85 w75 h150 +0x200", ["First", "Last", "Weakest", "Strongest", "Close", "Far", "Air", "Boss", "Shields"])
    Slot3AttackPriorityValue.Text := Slot3AttackPriority

    act_settings_GUI.Add("Text", "x10 y120 w80 h16 +0x200", "Unit 4 Place")
    global Slot4PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y115 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot4PlaceValue.Text := Slot4Place
    global Slot4TypeValue := act_settings_GUI.Add("DropDownList", "x145 y115 w65 h150 +0x200", ["Ground", "Hill",
        "Farm", "Buff"])
    Slot4TypeValue.Text := Slot4Type
    global Slot4UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y115 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot4UpgradeValue.Text := Slot4Upgrade
    global Slot4AttackPriorityValue := act_settings_GUI.Add("DropDownList", "x305 y115 w75 h150 +0x200", ["First", "Last", "Weakest", "Strongest", "Close", "Far", "Air", "Boss", "Shields"])
    Slot4AttackPriorityValue.Text := Slot4AttackPriority

    act_settings_GUI.Add("Text", "x10 y150 w80 h16 +0x200", "Unit 5 Place")
    global Slot5PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y145 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot5PlaceValue.Text := Slot5Place
    global Slot5TypeValue := act_settings_GUI.Add("DropDownList", "x145 y145 w65 h150 +0x200", ["Ground", "Hill",
        "Farm", "Buff"])
    Slot5TypeValue.Text := Slot5Type
    global Slot5UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y145 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot5UpgradeValue.Text := Slot5Upgrade
    global Slot5AttackPriorityValue := act_settings_GUI.Add("DropDownList", "x305 y145 w75 h150 +0x200", ["First", "Last", "Weakest", "Strongest", "Close", "Far", "Air", "Boss", "Shields"])
    Slot5AttackPriorityValue.Text := Slot5AttackPriority

    act_settings_GUI.Add("Text", "x10 y180 w80 h16 +0x200", "Unit 6 Place")
    global Slot6PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y175 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot6PlaceValue.Text := Slot6Place
    global Slot6TypeValue := act_settings_GUI.Add("DropDownList", "x145 y175 w65 h150 +0x200", ["Ground", "Hill",
        "Farm", "Buff"])
    Slot6TypeValue.Text := Slot6Type
    global Slot6UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y175 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot6UpgradeValue.Text := Slot6Upgrade
    global Slot6AttackPriorityValue := act_settings_GUI.Add("DropDownList", "x305 y175 w75 h150 +0x200", ["First", "Last", "Weakest", "Strongest", "Close", "Far", "Air", "Boss", "Shields"])
    Slot6AttackPriorityValue.Text := Slot6AttackPriority

    act_settings_GUI.Add("Text", "x135 y215 w80 h16 +0x200 +BackgroundTrans", "Main DPS")
    global MainDPSValue := act_settings_GUI.Add("DropDownList", "x195 y212 w80 h250 +Center +0x200", ["None", "Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5", "Slot 6"])
    MainDPSValue.Text := MainDPS

    Notes := act_settings_GUI.Add("Text", "x0 y245 w390 h16 +Center +0x200 +BackgroundTrans", "Choose '0' = Disable")
    Notes := act_settings_GUI.Add("Text", "x0 y265 w390 h16 +Center +0x200 +BackgroundTrans",
        "Place Priority: Slot 1 > 2 > 3 > 4 > 5 > 6")

    global ChangeButton := act_settings_GUI.Add("Button", "x10 y295 w370 h35 +BackgroundGreen +Center +0x200",
        "CLICK HERE TO CHANGE")
    ChangeButton.OnEvent('Click', ChangeSettingsEvent_clover_kingdom_ls_1_3)

    act_settings_GUI.Show("w390 h340")
}

ChangeSettingsEvent_clover_kingdom_ls_1_3(*) {
    global totalPlace := Map()
    totalPlace["Ground"] := 0
    totalPlace["Hill"] := 0
    totalPlace["Farm"] := 0
    totalPlace["Buff"] := 0

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
            clover_kingdom_ls_1_3_getGroundPos(totalPlace["Ground"])
        } catch Error {
            MsgBox "You have exceeded the maximum Ground Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Hill"] > 0 {
        try {
            clover_kingdom_ls_1_3_getHillPos(totalPlace["Hill"])
        } catch Error {
            MsgBox "You have exceeded the maximum Hill Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Farm"] > 0 {
        try {
            clover_kingdom_ls_1_3_getFarmPos(totalPlace["Farm"])
        } catch Error {
            MsgBox "You have exceeded the maximum Farm Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Buff"] > 0 {
        try {
            clover_kingdom_ls_1_3_getBuffPos(totalPlace["Buff"])
        } catch Error {
            MsgBox "You have exceeded the maximum Buff Place Amount that can be placed on this map, please lower it"
            return
        }
    }

    IniWrite Slot1PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Place'
    IniWrite Slot1TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Type'
    IniWrite Slot1AttackPriorityValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1AttackPriority'
    IniWrite Slot2PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Place'
    IniWrite Slot2TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Type'
    IniWrite Slot2AttackPriorityValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2AttackPriority'
    IniWrite Slot3PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3Place'
    IniWrite Slot3TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3Type'
    IniWrite Slot3AttackPriorityValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3AttackPriority'
    IniWrite Slot4PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4Place'
    IniWrite Slot4TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4Type'
    IniWrite Slot4AttackPriorityValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4AttackPriority'
    IniWrite Slot5PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5Place'
    IniWrite Slot5TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5Type'
    IniWrite Slot5AttackPriorityValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5AttackPriority'
    IniWrite Slot6PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6Place'
    IniWrite Slot6TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6Type'
    IniWrite Slot6AttackPriorityValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6AttackPriority'
    IniWrite Slot1UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Upgrade'
    IniWrite Slot2UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Upgrade'
    IniWrite Slot3UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3Upgrade'
    IniWrite Slot4UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4Upgrade'
    IniWrite Slot5UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5Upgrade'
    IniWrite Slot6UpgradeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6Upgrade'

    clover_kingdom_ls_1_3_config()
    act_settings_GUI.Destroy()
}

;Macro
starting_clover_kingdom_ls_1_3() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            movePlayBox()

            ;Click map zone button
            moveToManualTarget(260, 370)
            Sleep(300)

            loop 1 {
                Send "{WheelDown}"
                Sleep(100)
            }

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

            clover_kingdom_ls_1_3_config()
            starting_clover_kingdom_ls_1_3_ingame()
        }
    }
}

starting_clover_kingdom_ls_1_3_ingame() {
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
            MouseMove(17, -30, 0, "R")
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
            loop (1) {
                Send "{WheelUp}"
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

            ;Tele to spawn
            while !ImageSearch(&FoundX, &FoundY, 720, 250, 800, 375, clover_kingdom_spawn_condition) {
                if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, votestart) {
                    reConnect()
                }
                process_title.Text := "Checking spawn condition."
                moveToManualTarget(565, 335)
                Sleep(500)
                process_title.Text := "Checking spawn condition.."
                Sleep(500)
                process_title.Text := "Checking spawn condition..."
                Sleep(500)
            }

            process_title.Text := "Correct spawn!"
            ;Close Settings
            moveToManualTarget(640, 150)
            Sleep(1000)

            ;Start button
            Sleep(100)
            moveToManualTarget(400, 130)
            Sleep(100)

            clover_kingdom_ls_1_3_duringGame()
        }
    }

}

clover_kingdom_ls_1_3_duringGame() {
    global totalPlace := Map()
    totalPlace["Ground"] := 0
    totalPlace["Hill"] := 0
    totalPlace["Farm"] := 0
    totalPlace["Buff"] := 0

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
    buffPlaced := 0

    unitPlacedPos := []

    ;1st Unit
    placed := 1
    if (placed <= Slot1Place) {
        while (placed <= Slot1Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                if Slot1Type == "Ground" {
                    getPos := clover_kingdom_ls_1_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Hill") {
                    getPos := clover_kingdom_ls_1_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Farm") {
                    getPos := clover_kingdom_ls_1_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Buff") {
                    getPos := clover_kingdom_ls_1_3_getBuffPos(buffPlaced + 1)
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
                    ChangeAttackPriorityUnit(Slot2AttackPriority)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade ",Slot 1")
            } else if (Slot1Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade ",Slot 1")
            } else if (Slot1Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade ",Slot 1" . ",Farm")
            } else if (Slot1Type == "Buff") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade ",Slot 1" . ",Buff")
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
                    getPos := clover_kingdom_ls_1_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Hill") {
                    getPos := clover_kingdom_ls_1_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Farm") {
                    getPos := clover_kingdom_ls_1_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Buff") {
                    getPos := clover_kingdom_ls_1_3_getBuffPos(buffPlaced + 1)
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
                    ChangeAttackPriorityUnit(Slot2AttackPriority)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade ",Slot 2")
            } else if (Slot2Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade ",Slot 2")
            } else if (Slot2Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade ",Slot 2" . ",Farm")
            } else if (Slot1Type == "Buff") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade ",Slot 2" . ",Buff")
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
                    getPos := clover_kingdom_ls_1_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Hill") {
                    getPos := clover_kingdom_ls_1_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Farm") {
                    getPos := clover_kingdom_ls_1_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Buff") {
                    getPos := clover_kingdom_ls_1_3_getBuffPos(buffPlaced + 1)
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
                    ChangeAttackPriorityUnit(Slot3AttackPriority)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade ",Slot 3")
            } else if (Slot3Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade ",Slot 3")
            } else if (Slot3Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade ",Slot 3" . ",Farm")
            } else if (Slot1Type == "Buff") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade ",Slot 3" . ",Buff")
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
                    getPos := clover_kingdom_ls_1_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Hill") {
                    getPos := clover_kingdom_ls_1_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Farm") {
                    getPos := clover_kingdom_ls_1_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Buff") {
                    getPos := clover_kingdom_ls_1_3_getBuffPos(buffPlaced + 1)
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
                    ChangeAttackPriorityUnit(Slot4AttackPriority)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade ",Slot 4")
            } else if (Slot4Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade ",Slot 4")
            } else if (Slot4Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade ",Slot 4" . ",Farm")
            } else if (Slot1Type == "Buff") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade ",Slot 4" . ",Buff")
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
                    getPos := clover_kingdom_ls_1_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Hill") {
                    getPos := clover_kingdom_ls_1_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Farm") {
                    getPos := clover_kingdom_ls_1_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Buff") {
                    getPos := clover_kingdom_ls_1_3_getBuffPos(buffPlaced + 1)
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
                    ChangeAttackPriorityUnit(Slot5AttackPriority)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade ",Slot 5")
            } else if (Slot5Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade ",Slot 5")
            } else if (Slot5Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade ",Slot 5" . ",Farm")
            } else if (Slot1Type == "Buff") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade ",Slot 5" . ",Buff")
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
                    getPos := clover_kingdom_ls_1_3_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Hill") {
                    getPos := clover_kingdom_ls_1_3_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Farm") {
                    getPos := clover_kingdom_ls_1_3_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Farm") {
                    getPos := clover_kingdom_ls_1_3_getBuffPos(buffPlaced + 1)
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
                    ChangeAttackPriorityUnit(Slot6AttackPriority)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade ",Slot 6")
            } else if (Slot6Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade ",Slot 6")
            } else if (Slot6Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade . ",Slot 6" . ",Farm")
            } else if (Slot1Type == "Buff") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade . ",Slot 6" . ",Buff")
            }

            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)

    Upgrade := 0
    farmUpgradeMaxOne := 0

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

                try {
                    if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, wave_15_clover_kingdom)) {
                        try {
                            if xy[5] == "Farm" {
                                Send("{X}")
                            }
                        }
                    }
                }

                if xy[3] == "MAX" {
                    try {
                        if totalPlace["Ground"] < 4 {
                            if Upgrade == 3 {
                                if xy[5] == "Farm" {
                                    loop 15 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
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
                            } else if Upgrade == 5 {
                                if xy[5] == "Farm" {
                                    loop 20 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
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
                                if xy[5] == "Farm" {
                                    loop 20 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
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
                        } else if ((totalPlace["Ground"] > 4) && (totalPlace["Ground"] < 12)) {
                            if Upgrade == 2 {
                                if xy[5] == "Farm" {
                                    loop 15 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
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
                            } else if Upgrade == 4 {
                                if xy[5] == "Farm" {
                                    loop 20 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(3000)
                                    }
                                }
                            } else if Upgrade == 6 {
                                if xy[5] == "Farm" {
                                    loop 20 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(3000)
                                    }
                                }
                            }
                        } else if (totalPlace["Ground"] > 12) {
                            if Upgrade == 1 {
                                if xy[5] == "Farm" {
                                    loop 15 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
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
                            } else if Upgrade == 3 {
                                if xy[5] == "Farm" {
                                    loop 20 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(3000)
                                    }
                                }
                            } else if Upgrade == 5 {
                                if xy[5] == "Farm" {
                                    loop 20 {
                                        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
                                            farmUpgradeMaxOne := 1
                                            break
                                        }
                                        loop 3 {
                                            Send("{F}")
                                            Sleep(100)
                                        }
                                        Sleep(3000)
                                    }
                                }
                            }
                        }

                    }
                    if (farmUpgradeMaxOne != 0) {
                        if MainDPS == xy[4] {
                            Loop 10 {
                                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) || ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui)) {
                                    break
                                }
                                Loop 3 {
                                    Send("{F}")
                                    Sleep(100)
                                }
                                try {
                                    if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, boss_health)) {
                                        break
                                    }
                                }
                                Sleep(1500)
                                loop 3 {
                                    moveToManualTarget(x_place, y_place)
                                    Sleep(500)
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
                try {
                    if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, wave_15_clover_kingdom)) {
                        try {
                            Sleep(500)
                            moveToManualTarget(x_place, y_place)
                            Sleep(500)
                            if xy[5] == "Farm" {
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
        }

        Upgrade += 1
        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)
    }

    ;Wait
    Sleep(100)

    clover_kingdom_ls_1_3_retryGame()
}

clover_kingdom_ls_1_3_retryGame() {
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

    clover_kingdom_ls_1_3_duringGame()
}

clover_kingdom_ls_1_3_getBuffPos(index) {
    BuffPos := Map()

    BuffPos[1] := "225, 270"
    BuffPos[2] := "156, 283"

    return BuffPos[index]
}

clover_kingdom_ls_1_3_getFarmPos(index) {
    ;x,y
    farmPos := Map()
    farmPos[1] := "225,284"
    farmPos[2] := "350,370"
    farmPos[3] := "375,370"
    farmPos[4] := "400,370"

    return farmPos[index]
}

clover_kingdom_ls_1_3_getHillPos(index) {
    ;x,y
    HillPos := Map()

    HillPos[1] := "215,296"
    HillPos[2] := "228,297"
    HillPos[3] := "214,311"
    HillPos[4] := "228,312"
    HillPos[5] := "129,286"
    HillPos[6] := "373,233"
    HillPos[7] := "384,237"
    HillPos[8] := "367,241"
    HillPos[9] := "379,247"
    HillPos[10] := "449,225"
    HillPos[11] := "516,327"
    HillPos[12] := "533,333"
    HillPos[13] := "513,341"
    HillPos[14] := "526,345"

    return HillPos[index]
}

clover_kingdom_ls_1_3_getGroundPos(index) {
    ;x,y
    GroundPos := Map()

    GroundPos[1] := "225,252"
    GroundPos[2] := "239,282"
    GroundPos[3] := "211,285"
    GroundPos[4] := "235,258"
    GroundPos[5] := "215,258"
    GroundPos[6] := "201,265"
    GroundPos[7] := "225,241"
    GroundPos[8] := "248,260"
    GroundPos[9] := "251,270"
    GroundPos[10] := "250,282"
    GroundPos[11] := "250,294"
    GroundPos[12] := "250,306"
    GroundPos[13] := "250,318"
    GroundPos[14] := "200,278"
    GroundPos[15] := "200,292"
    GroundPos[16] := "199,305"
    GroundPos[17] := "198,319"
    GroundPos[18] := "175,305"
    GroundPos[19] := "175,294"
    GroundPos[20] := "176,282"
    GroundPos[21] := "163,306"
    GroundPos[22] := "152,306"
    GroundPos[23] := "141,306"
    GroundPos[24] := "130,306"
    GroundPos[25] := "109,306"
    GroundPos[26] := "374,220"
    GroundPos[27] := "540,315"
    GroundPos[28] := "552,315"
    GroundPos[29] := "564,315"
    GroundPos[30] := "381,196"
    GroundPos[31] := "390,204"
    GroundPos[32] := "398,209"
    GroundPos[33] := "406,215"
    GroundPos[34] := "415,224"
    GroundPos[35] := "423,231"
    GroundPos[36] := "434,239"
    GroundPos[37] := "448,252"
    GroundPos[38] := "457,260"
    GroundPos[39] := "465,267"
    GroundPos[40] := "474,274"
    GroundPos[41] := "483,283"
    GroundPos[42] := "296,290"
    GroundPos[43] := "509,290"
    GroundPos[44] := "522,288"
    GroundPos[45] := "535,288"
    GroundPos[46] := "548,288"
    GroundPos[47] := "492,315"
    GroundPos[48] := "504,315"
    GroundPos[49] := "516,315"
    GroundPos[50] := "528,315"

    return GroundPos[index]
}
