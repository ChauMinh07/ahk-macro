#Requires AutoHotkey v2.0

;Get Config
adventure_winter_mayhem_config() {
    global name_config := "adventure_winter_mayhem"

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

    global Card1 := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Card1")
    global Card2 := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Card2")
    global Card3 := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Card3")
    global Card4 := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Card4")
    global Card5 := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Card5")
    global Card6 := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Card6")

    global MainDPS := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "MainDPS")
}
adventure_winter_mayhem_config()

setting_GUI_adventure_winter_mayhem() {
    adventure_winter_mayhem_config()
    global act_settings_GUI := Gui()

    act_settings_GUI.Add("GroupBox", "x5 y5 w300 h200 +0x200 +Left", "Place Amount")

    act_settings_GUI.Add("Text", "x10 y30 w80 h16 +0x200", "Slot 1 Place")
    global Slot1PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y25 w40 h150 +0x200", [1, 2, 3, 4, 5, 6
    ])
    Slot1PlaceValue.Text := Slot1Place
    global Slot1TypeValue := act_settings_GUI.Add("DropDownList", "x145 y25 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot1TypeValue.Text := Slot1Type
    global Slot1UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y25 w85 h250 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "Upgrade 7", "Upgrade 8", "MAX"])
    Slot1UpgradeValue.Text := Slot1Upgrade

    act_settings_GUI.Add("Text", "x10 y60 w80 h16 +0x200", "Slot 2 Place")
    global Slot2PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y55 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot2PlaceValue.Text := Slot2Place
    global Slot2TypeValue := act_settings_GUI.Add("DropDownList", "x145 y55 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot2TypeValue.Text := Slot2Type
    global Slot2UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y55 w85 h250 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "Upgrade 7", "Upgrade 8", "MAX"])
    Slot2UpgradeValue.Text := Slot2Upgrade

    act_settings_GUI.Add("Text", "x10 y90 w80 h16 +0x200", "Slot 3 Place")
    global Slot3PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y85 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot3PlaceValue.Text := Slot3Place
    global Slot3TypeValue := act_settings_GUI.Add("DropDownList", "x145 y85 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot3TypeValue.Text := Slot3Type
    global Slot3UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y85 w85 h250 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "Upgrade 7", "Upgrade 8", "MAX"])
    Slot3UpgradeValue.Text := Slot3Upgrade

    act_settings_GUI.Add("Text", "x10 y120 w80 h16 +0x200", "Slot 4 Place")
    global Slot4PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y115 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot4PlaceValue.Text := Slot4Place
    global Slot4TypeValue := act_settings_GUI.Add("DropDownList", "x145 y115 w65 h150 +0x200", ["Ground", "Hill",
        "Farm"])
    Slot4TypeValue.Text := Slot4Type
    global Slot4UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y115 w85 h250 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "Upgrade 7", "Upgrade 8", "MAX"])
    Slot4UpgradeValue.Text := Slot4Upgrade

    act_settings_GUI.Add("Text", "x10 y150 w80 h16 +0x200", "Slot 5 Place")
    global Slot5PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y145 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot5PlaceValue.Text := Slot5Place
    global Slot5TypeValue := act_settings_GUI.Add("DropDownList", "x145 y145 w65 h150 +0x200", ["Ground", "Hill",
        "Farm"])
    Slot5TypeValue.Text := Slot5Type
    global Slot5UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y145 w85 h250 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "Upgrade 7", "Upgrade 8", "MAX"])
    Slot5UpgradeValue.Text := Slot5Upgrade

    act_settings_GUI.Add("Text", "x10 y180 w80 h16 +0x200", "Slot 6 Place")
    global Slot6PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y175 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot6PlaceValue.Text := Slot6Place
    global Slot6TypeValue := act_settings_GUI.Add("DropDownList", "x145 y175 w65 h150 +0x200", ["Ground", "Hill",
        "Farm"])
    Slot6TypeValue.Text := Slot6Type
    global Slot6UpgradeValue := act_settings_GUI.Add("DropDownList", "x215 y175 w85 h150 +0x200", ["No Upgrade",
        "Upgrade 1", "Upgrade 2", "Upgrade 3", "Upgrade 4", "Upgrade 5", "Upgrade 6", "MAX"])
    Slot6UpgradeValue.Text := Slot6Upgrade

    act_settings_GUI.Add("GroupBox", "x310 y5 w180 h200 +0x200 +Left", "Choose Card Priority")

    act_settings_GUI.Add("Text", "x315 y30 w80 h16 +0x200", "Priority 1")
    global Card1Value := act_settings_GUI.Add("DropDownList", "x385 y25 w100 h150 +0x200", ["Give Money", "Ally Attack",
        "Ally Cooldown", "Ally Range", "Enemy Health", "Enemy Shield", "Enemy Speed"])
    Card1Value.Text := Card1

    act_settings_GUI.Add("Text", "x315 y60 w80 h16 +0x200", "Priority 2")
    global Card2Value := act_settings_GUI.Add("DropDownList", "x385 y55 w100 h150 +0x200", ["Give Money", "Ally Attack",
        "Ally Cooldown", "Ally Range", "Enemy Health", "Enemy Shield", "Enemy Speed"])
    Card2Value.Text := Card2

    act_settings_GUI.Add("Text", "x315 y90 w80 h16 +0x200", "Priority 3")
    global Card3Value := act_settings_GUI.Add("DropDownList", "x385 y85 w100 h150 +0x200", ["Give Money", "Ally Attack",
        "Ally Cooldown", "Ally Range", "Enemy Health", "Enemy Shield", "Enemy Speed"])
    Card3Value.Text := Card3

    act_settings_GUI.Add("Text", "x315 y120 w80 h16 +0x200", "Priority 4")
    global Card4Value := act_settings_GUI.Add("DropDownList", "x385 y115 w100 h150 +0x200", ["Give Money",
        "Ally Attack", "Ally Cooldown", "Ally Range", "Enemy Health", "Enemy Shield", "Enemy Speed"])
    Card4Value.Text := Card4

    act_settings_GUI.Add("Text", "x315 y150 w80 h16 +0x200", "Priority 5")
    global Card5Value := act_settings_GUI.Add("DropDownList", "x385 y145 w100 h150 +0x200", ["Give Money",
        "Ally Attack", "Ally Cooldown", "Ally Range", "Enemy Health", "Enemy Shield", "Enemy Speed"])
    Card5Value.Text := Card5

    act_settings_GUI.Add("Text", "x315 y180 w80 h16 +0x200", "Priority 6")
    global Card6Value := act_settings_GUI.Add("DropDownList", "x385 y175 w100 h150 +0x200", ["Give Money",
        "Ally Attack", "Ally Cooldown", "Ally Range", "Enemy Health", "Enemy Shield", "Enemy Speed"])
    Card6Value.Text := Card6

    act_settings_GUI.Add("Text", "x185 y215 w80 h16 +0x200 +BackgroundTrans", "Main DPS")
    global MainDPSValue := act_settings_GUI.Add("DropDownList", "x245 y212 w80 h250 +Center +0x200", ["None", "Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5", "Slot 6"])
    MainDPSValue.Text := MainDPS

    Notes := act_settings_GUI.Add("Text", "x0 y245 w495 h16 +Center +0x200 +BackgroundTrans", "Choose '0' = Disable")
    Notes := act_settings_GUI.Add("Text", "x0 y260 w495 h16 +Center +0x200 +BackgroundTrans",
        "Place Priority: Slot 1 > 2 > 3 > 4 > 5 > 6")
    Notes := act_settings_GUI.Add("Text", "x0 y275 w495 h16 +Center +0x200 +BackgroundTrans",
        "Choose Card Priority: 1 > 2 > 3 > 4 > 5 > 6")

    global ChangeButton := act_settings_GUI.Add("Button", "x10 y305 w475 h35 +BackgroundGreen +Center +0x200",
        "CLICK HERE TO CHANGE")
    ChangeButton.OnEvent('Click', ChangeSettingsEvent_adventure_winter_mayhem)

    act_settings_GUI.Show("w495 h350")
}

ChangeSettingsEvent_adventure_winter_mayhem(*) {
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
    

    if (totalPlace["Ground"] > 0) {
        try {
            adventure_winter_mayhem_getGroundPos(totalPlace["Ground"])
        } catch Error {
            MsgBox "You have exceeded the maximum Ground Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Hill"] > 0 {
        try {
            adventure_winter_mayhem_getHillPos(totalPlace["Hill"])
        } catch Error {
            MsgBox "You have exceeded the maximum Hill Place Amount that can be placed on this map, please lower it"
            return
        }
    }
    if totalPlace["Farm"] > 0 {
        try {
            adventure_winter_mayhem_getFarmPos(totalPlace["Farm"])
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
    IniWrite Card1Value.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Card1'
    IniWrite Card2Value.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Card2'
    IniWrite Card3Value.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Card3'
    IniWrite Card4Value.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Card4'
    IniWrite Card5Value.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Card5'
    IniWrite Card6Value.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Card6'
    IniWrite MainDPSValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'MainDPS'

    adventure_winter_mayhem_config()
    act_settings_GUI.Destroy()
}

;Macro
starting_adventure_winter_mayhem() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            moveAdventureBox()
            
            Sleep(750)
            moveToManualTarget(645, 390)
            ;if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, adventure_winter_mayhem) {
            ;    moveToManualTarget(735, 390)
            ;    Sleep(750)
            ;    while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, start_button) {
            ;        Send "{S down}"
            ;        Sleep(300)
            ;        Send "{S up}"
            ;    }
            ;    Sleep(1000)
            ;    if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, adventure_winter_mayhem) {
            ;        moveToManualTarget(735, 390)
            ;        Sleep(750)
            ;        Send("{W Down}")
            ;        Sleep(300)
            ;        Send("{W up}")
            ;        loop 10 {
            ;            Send("{D Down}")
            ;            Sleep(300)
            ;            Send("{D up}")
            ;        }
            ;        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, start_button) {
            ;            Send "{S down}"
            ;            Sleep(300)
            ;            Send "{S up}"
            ;        }
            ;        Sleep(750)
            ;        if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, adventure_winter_mayhem) {
            ;            moveToManualTarget(735, 390)
            ;            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, start_button) {
            ;                Send "{W down}"
            ;                Sleep(300)
            ;                Send "{W up}"
            ;            }
            ;            ;CLICK START
            ;            Sleep(500)
            ;            moveToManualTarget(645, 390)
            ;        }
;
            ;    }
            ;} else {
            ;    ;CLICK START
            ;    Sleep(500)
            ;    moveToManualTarget(645, 390)
            ;}

            ;Wait until joining game
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, votestart) {
                Sleep(500)
            }
            Sleep(1000)

            adventure_winter_mayhem_config()
            starting_adventure_winter_mayhem_ingame()
        }
    }
}

starting_adventure_winter_mayhem_ingame() {
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

            ;Click Settings
            moveToManualTarget(15, 565)
            Sleep(300)

            ;Click Settings Zone
            moveToManualTarget(178, 215)
            Sleep(300)

            loop (5) {
                Send "{Wheeldown}"
                Sleep(100)
            }

            process_title.Text := "Checking spawn condition"

            Sleep(500)
            ;Tele to checking correct camera spawn
            moveToManualTarget(560, 360)
            moveToManualTarget(560, 360)

            Sleep(750)
            if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, wrongspawn_adventure_winter_mayhem) || ImageSearch(&FoundX, &
                FoundY, 0, 0, W, H, wrongspawn_adventure_winter_mayhem_2)) {
                process_title.Text := "Spawn Camera is wrong. Reconnecting..."
                reConnect()
            } else {
                process_title.Text := "Spawn Camera is correct. Countinue checking spawn location..."
                ;Close Settings
                moveToManualTarget(640, 150)
                Sleep(500)

                ;Zoom In
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
                moveToManualTarget(385, 275)
                Sleep(300)
                loop (10) {
                    Send "{Wheeldown}"
                    Sleep(100)
                }

                ;Tele to spawn
                while !ImageSearch(&FoundX, &FoundY, 505, 0, 585, 60, adventure_winter_mayhem_spawn_condition) {
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
            }

            process_title.Text := "Correct spawn!"
            ;Close Settings
            moveToManualTarget(640, 150)
            Sleep(1000)

            ;Start button
            Sleep(100)
            moveToManualTarget(400, 130)
            Sleep(100)

            adventure_winter_mayhem_duringGame()
        }
    }

}

adventure_winter_mayhem_duringGame() {
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

    SetTimer adventure_winter_mayhem_chooseScreen, 100

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
                    getPos := adventure_winter_mayhem_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Hill") {
                    getPos := adventure_winter_mayhem_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Farm") {
                    getPos := adventure_winter_mayhem_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade . ", Slot 1")
            } else if (Slot1Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade . ", Slot 1")
            } else if (Slot1Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot1Upgrade . ", Slot 1" . ",Farm")
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
                    getPos := adventure_winter_mayhem_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Hill") {
                    getPos := adventure_winter_mayhem_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Farm") {
                    getPos := adventure_winter_mayhem_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade . ", Slot 2")
            } else if (Slot2Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade . ", Slot 2")
            } else if (Slot2Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot2Upgrade . ", Slot 2" . ",Farm")
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
                    getPos := adventure_winter_mayhem_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Hill") {
                    getPos := adventure_winter_mayhem_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Farm") {
                    getPos := adventure_winter_mayhem_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 3rd - " . placed
                Send("{3}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                Send("{3}")
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade . ", Slot 3")
            } else if (Slot3Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade . ", Slot 3")
            } else if (Slot3Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot3Upgrade . ", Slot 3" . ",Farm")
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
                    getPos := adventure_winter_mayhem_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Hill") {
                    getPos := adventure_winter_mayhem_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Farm") {
                    getPos := adventure_winter_mayhem_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade . ", Slot 4")
            } else if (Slot4Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade . ", Slot 4")
            } else if (Slot4Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot4Upgrade . ", Slot 4" . ",Farm")
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
                    getPos := adventure_winter_mayhem_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Hill") {
                    getPos := adventure_winter_mayhem_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Farm") {
                    getPos := adventure_winter_mayhem_getFarmPos(farmPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                }

                process_title.Text := "Placing 5th - " . placed
                Send("{5}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui)) {
                    process.Value += 1
                    break
                }
                Send("{5}")
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade . ", Slot 5")
            } else if (Slot5Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade . ", Slot 5")
            } else if (Slot5Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot5Upgrade . ", Slot 5" . ",Farm")
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
                    getPos := adventure_winter_mayhem_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Hill") {
                    getPos := adventure_winter_mayhem_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Farm") {
                    getPos := adventure_winter_mayhem_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade . ", Slot 6")
            } else if (Slot6Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade . ", Slot 6")
            } else if (Slot6Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . "," . Slot6Upgrade . ", Slot 6" . ",Farm")
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
        process_title.Text := "Upgrade units while waiting for end screen... (" . Upgrade . ")"
        process.Value := 90

        for pos in unitPlacedPos {
            xy := StrSplit(pos, ",")
            x_place := xy[1]
            y_place := xy[2]
            if (xy[3] != "No Upgrade") {
                moveToManualTarget(x_place, y_place)
                Sleep(500)

                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, adventure_winter_mayhem_wave_25)) {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                                if xy[5] == "Farm" {
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
                    if (farmUpgradeMaxOne != 0) {
                        if MainDPS == xy[4] {
                            Loop 10 {
                                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_img["MAX"]) {
                                    break
                                }
                                Loop 3 {
                                    Send("{F}")
                                    Sleep(100)
                                }
                                Sleep(3000)
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
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, adventure_winter_mayhem_wave_25)) {
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

    adventure_winter_mayhem_retryGame()
}

adventure_winter_mayhem_retryGame() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    Sleep(500)

    SetTimer adventure_winter_mayhem_chooseScreen, 0

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

    adventure_winter_mayhem_duringGame()
}

adventure_winter_mayhem_chooseScreen() {
    choosescreen :=
        "|<>*100$71.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz1zzkTzsDzsDs0Ty07y03y07U0Ts07s03s0700TU07k0DU0600S00700S00400w00C1ts008Q0k70A1zk7UFy1UTUQ0DUT0Xw30z0s070017s61y1s06002DkA3w3s0A00AD0M3k7w0M7zs01k00SD0k7vk03k00s21k01U0DU03k03U0300TU07U07U0603zU0z00TU0D0Dzk3zU1zk0zzzzzzzzzzyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"

    if FindText(&X, &Y, 235, 101, 588, 236, 0, 0, choosescreen) {
        SetTimer adventure_winter_mayhem_chooseScreen, 0
        global FoundX, FoundY
        WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

        moveToManualTarget(400, 30)
        Sleep(1500)
        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card1])) {
            moveToManualTarget(FoundX, FoundY)
        } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card2])) {
            moveToManualTarget(FoundX, FoundY)
        } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card3])) {
            moveToManualTarget(FoundX, FoundY)
        } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card4])) {
            moveToManualTarget(FoundX, FoundY)
        } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card5])) {
            moveToManualTarget(FoundX, FoundY)
        } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card6])) {
            moveToManualTarget(FoundX, FoundY)
        } else {
            moveToManualTarget(425, 250)
        }
        Sleep(2500)
        if FindText(&X, &Y, 235, 101, 588, 236, 0, 0, choosescreen) {
            if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card1])) {
                moveToManualTarget(FoundX, FoundY)
            } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card2])) {
                moveToManualTarget(FoundX, FoundY)
            } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card3])) {
                moveToManualTarget(FoundX, FoundY)
            } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card4])) {
                moveToManualTarget(FoundX, FoundY)
            } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card5])) {
                moveToManualTarget(FoundX, FoundY)
            } else if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, cards[Card6])) {
                moveToManualTarget(FoundX, FoundY)
            } else {
                moveToManualTarget(425, 250)
            }
            Sleep(1500)
        }

        SetTimer adventure_winter_mayhem_chooseScreen, 100
    }

}

adventure_winter_mayhem_getFarmPos(index) {

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

    ;x,y
    farmPos := Map()
    if totalPlace["Ground"] <= 10 {
        farmPos[1] := "145,151"
    } else {
        farmPos[1] := "145,138"
    }
    farmPos[2] := "535,275"
    farmPos[3] := "550,275"
    farmPos[4] := "132,140"

    return farmPos[index]
}

adventure_winter_mayhem_getHillPos(index) {
    ;x,y
    HillPos := Map()

    HillPos[1] := "156,139"
    HillPos[2] := "165,142"
    HillPos[3] := "160,130"
    HillPos[4] := "171,132"
    HillPos[5] := "185,125"
    HillPos[6] := "110,109"
    HillPos[7] := "119,113"
    HillPos[8] := "104,119"
    HillPos[9] := "113,122"
    HillPos[10] := "419,361"
    HillPos[11] := "408,356"
    HillPos[12] := "414,372"
    HillPos[13] := "403,367"
    HillPos[14] := "410,340"
    HillPos[15] := "397,343"
    HillPos[16] := "395,333"
    HillPos[17] := "404,330"
    HillPos[18] := "409,211"
    HillPos[19] := "419,207"
    HillPos[20] := "412,220"
    HillPos[21] := "423,215"
    HillPos[22] := "383,191"
    HillPos[23] := "394,194"
    HillPos[24] := "380,200"
    HillPos[25] := "391,203"

    return HillPos[index]
}

adventure_winter_mayhem_getGroundPos(index) {
    ;x,y
    GroundPos := Map()

    GroundPos[1] := "130, 160"
    GroundPos[2] := "140, 160"
    GroundPos[3] := "150, 160"
    GroundPos[4] := "160, 160"
    GroundPos[5] := "170, 160"
    GroundPos[6] := "180, 160"
    GroundPos[7] := "190, 160"
    GroundPos[8] := "200, 160"
    GroundPos[9] := "206, 150"
    GroundPos[10] := "196, 150"
    GroundPos[11] := "186, 150"
    GroundPos[12] := "119, 150"
    GroundPos[13] := "129, 150"
    GroundPos[14] := "139, 150"
    GroundPos[15] := "149, 150"
    GroundPos[16] := "130, 180"
    GroundPos[17] := "141, 180"
    GroundPos[18] := "152, 180"
    GroundPos[19] := "163, 180"
    GroundPos[20] := "174, 180"
    GroundPos[21] := "185, 180"
    GroundPos[22] := "196, 180"
    GroundPos[23] := "268, 156"
    GroundPos[24] := "279, 156"
    GroundPos[25] := "246, 165"
    GroundPos[26] := "257, 165"
    GroundPos[27] := "235, 165"
    GroundPos[28] := "224, 165"
    GroundPos[29] := "268, 165"
    GroundPos[30] := "279, 165"
    GroundPos[31] := "246, 175"
    GroundPos[32] := "257, 175"
    GroundPos[33] := "235, 175"
    GroundPos[34] := "224, 175"
    GroundPos[35] := "268, 175"
    GroundPos[36] := "279, 175"

    return GroundPos[index]
}
