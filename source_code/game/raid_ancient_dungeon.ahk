#Requires AutoHotkey v2.0

;Get Config
raid_ancient_dungeon_config() {
    global name_config := "raid_ancient_dungeon"

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
raid_ancient_dungeon_config()

setting_GUI_raid_ancient_dungeon() {
    raid_ancient_dungeon_config()
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
    ChangeButton.OnEvent('Click', ChangeSettingsEvent_raid_ancient_dungeon)

    act_settings_GUI.Show("w390 h340")
}

ChangeSettingsEvent_raid_ancient_dungeon(*) {
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
            raid_ancient_dungeon_getGroundPos(totalPlace["Ground"])
        } catch Error {
            MsgBox "You have exceeded the maximum Ground Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Hill"] > 0 {
        try {
            raid_ancient_dungeon_getHillPos(totalPlace["Hill"])
        } catch Error {
            MsgBox "You have exceeded the maximum Hill Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Farm"] > 0 {
        try {
            raid_ancient_dungeon_getFarmPos(totalPlace["Farm"])
        } catch Error {
            MsgBox "You have exceeded the maximum Farm Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Buff"] > 0 {
        try {
            raid_ancient_dungeon_getBuffPos(totalPlace["Buff"])
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

    raid_ancient_dungeon_config()
    act_settings_GUI.Destroy()
}

;Macro
starting_raid_ancient_dungeon() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            moveRaidBox()

            ;Click map button
            moveToManualTarget(260, 370)
            Sleep(300)

            ;Click ls button
            moveToManualTarget(550, 190)
            Sleep(300)

            ;Click on Act
            if (Act.Text == "Act 1") {
                moveToManualTarget(365, 245)
                Sleep(500)
            } else if (Act.Text == "Act 2") {
                moveToManualTarget(365, 270)
                Sleep(500)
            } else if (Act.Text == "Act 3") {
                moveToManualTarget(365, 295)
                Sleep(500)
            } else if (Act.Text == "Act 4") {
                moveToManualTarget(365, 320)
                Sleep(500)
            } else if (Act.Text == "Act 5") {
                moveToManualTarget(365, 345)
                Sleep(500)
            } else if (Act.Text == "Act 6") {
                moveToManualTarget(365, 370)
                Sleep(500)
            }

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

            raid_ancient_dungeon_config()
            starting_raid_ancient_dungeon_ingame()
        }
    }
}

starting_raid_ancient_dungeon_ingame() {
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
            MouseMove(-11, 0, 0, "R")
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

            raid_ancient_dungeon_duringGame()
        }
    }

}

raid_ancient_dungeon_duringGame() {
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
                    getPos := raid_ancient_dungeon_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Hill") {
                    getPos := raid_ancient_dungeon_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Farm") {
                    getPos := raid_ancient_dungeon_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Buff") {
                    getPos := raid_ancient_dungeon_getBuffPos(buffPlaced + 1)
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
                    getPos := raid_ancient_dungeon_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Hill") {
                    getPos := raid_ancient_dungeon_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Farm") {
                    getPos := raid_ancient_dungeon_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Buff") {
                    getPos := raid_ancient_dungeon_getBuffPos(buffPlaced + 1)
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
                    getPos := raid_ancient_dungeon_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Hill") {
                    getPos := raid_ancient_dungeon_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Farm") {
                    getPos := raid_ancient_dungeon_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Buff") {
                    getPos := raid_ancient_dungeon_getBuffPos(buffPlaced + 1)
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
                    getPos := raid_ancient_dungeon_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Hill") {
                    getPos := raid_ancient_dungeon_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Farm") {
                    getPos := raid_ancient_dungeon_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Buff") {
                    getPos := raid_ancient_dungeon_getBuffPos(buffPlaced + 1)
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
                    getPos := raid_ancient_dungeon_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Hill") {
                    getPos := raid_ancient_dungeon_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Farm") {
                    getPos := raid_ancient_dungeon_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Buff") {
                    getPos := raid_ancient_dungeon_getBuffPos(buffPlaced + 1)
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
                    getPos := raid_ancient_dungeon_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Hill") {
                    getPos := raid_ancient_dungeon_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Farm") {
                    getPos := raid_ancient_dungeon_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Farm") {
                    getPos := raid_ancient_dungeon_getBuffPos(buffPlaced + 1)
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
                    if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, boss_health)) {
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
                            if Upgrade == 7 {
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
                            } else if Upgrade == 15 {
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
                            } else if Upgrade == 23 {
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
                        } else if ((totalPlace["Ground"] > 4) && (totalPlace["Ground"] < 10)) {
                            if Upgrade == 6 {
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
                            } else if Upgrade == 12 {
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
                            } else if Upgrade == 18 {
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
                        } else if ((totalPlace["Ground"] > 4) && (totalPlace["Ground"] > 10)) {
                            if Upgrade == 4 {
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
                            } else if Upgrade == 10 {
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
                            } else if Upgrade == 15 {
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
                    if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, boss_health)) {
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

    raid_ancient_dungeon_retryGame()
}

raid_ancient_dungeon_retryGame() {
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

    raid_ancient_dungeon_duringGame()
}

raid_ancient_dungeon_getBuffPos(index) {
    BuffPos := Map()

    BuffPos[1] := "277, 444"

    return BuffPos[index]
}

raid_ancient_dungeon_getFarmPos(index) {
    ;x,y
    farmPos := Map()
    farmPos[1] := "234,487"
    farmPos[2] := "16,439"
    farmPos[3] := "66,423"
    farmPos[4] := "115,408"

    return farmPos[index]
}

raid_ancient_dungeon_getHillPos(index) {
    ;x,y
    HillPos := Map()

    HillPos[1] := "201,402"
    HillPos[2] := "226,402"
    HillPos[3] := "240,411"
    HillPos[4] := "196,435"
    HillPos[5] := "138,592"
    HillPos[6] := "375,319"
    HillPos[7] := "387,318"
    HillPos[8] := "398,317"
    HillPos[9] := "411,316"
    HillPos[10] := "512,326"
    HillPos[11] := "527,327"
    HillPos[12] := "540,328"
    HillPos[13] := "104,349"
    HillPos[14] := "83,361"
    HillPos[15] := "309,297"
    HillPos[16] := "318,296"
    HillPos[17] := "328,294"
    HillPos[18] := "336,293"

    return HillPos[index]
}

raid_ancient_dungeon_getGroundPos(index) {
    ;x,y
    GroundPos := Map()

    GroundPos[1] := "273,473"
    GroundPos[2] := "298,461"
    GroundPos[3] := "320,450"
    GroundPos[4] := "294,435"
    GroundPos[5] := "274,429"
    GroundPos[6] := "194,521"
    GroundPos[7] := "385,431"
    GroundPos[8] := "364,424"
    GroundPos[9] := "341,418"
    GroundPos[10] := "170,508"
    GroundPos[11] := "157,543"
    GroundPos[12] := "195,558"
    GroundPos[13] := "325,407"
    GroundPos[14] := "310,402"
    GroundPos[15] := "285,399"
    GroundPos[16] := "191,371"
    GroundPos[17] := "208,367"
    GroundPos[18] := "222,371"
    GroundPos[19] := "360,325"
    GroundPos[20] := "353,327"
    GroundPos[21] := "345,329"
    GroundPos[22] := "339,332"
    GroundPos[23] := "332,334"
    GroundPos[24] := "322,336"
    GroundPos[25] := "315,339"
    GroundPos[26] := "304,341"
    GroundPos[27] := "424,324"
    GroundPos[28] := "432,325"
    GroundPos[29] := "440,327"
    GroundPos[30] := "450,327"
    GroundPos[31] := "562,338"

    return GroundPos[index]
}
