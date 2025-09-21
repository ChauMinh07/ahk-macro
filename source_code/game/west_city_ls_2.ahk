#Requires AutoHotkey v2.0

;Get Config
west_city_ls_2_config() {
    global name_config := "west_city_ls_2"

    global Slot1Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Place")
    global Slot1Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Type")
    global Slot2Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Place")
    global Slot2Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Type")
    global Slot3Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Place")
    global Slot3Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Type")
    global Slot4Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Place")
    global Slot4Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Type")
    global Slot5Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Place")
    global Slot5Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Type")
    global Slot6Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Place")
    global Slot6Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Type")
}
west_city_ls_2_config()

setting_GUI_west_city_ls_2() {
    west_city_ls_2_config()
    global act_settings_GUI := Gui()

    act_settings_GUI.Add("Text", "x10 y15 w80 h16 +0x200", "Unit 1 Place")
    global Slot1PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y10 w40 h150 +0x200", [1, 2, 3, 4, 5, 6
    ])
    Slot1PlaceValue.Text := Slot1Place
    global Slot1TypeValue := act_settings_GUI.Add("DropDownList", "x145 y10 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot1TypeValue.Text := Slot1Type

    act_settings_GUI.Add("Text", "x10 y45 w80 h16 +0x200", "Unit 2 Place")
    global Slot2PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y40 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot2PlaceValue.Text := Slot2Place
    global Slot2TypeValue := act_settings_GUI.Add("DropDownList", "x145 y40 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot2TypeValue.Text := Slot2Type

    act_settings_GUI.Add("Text", "x10 y75 w80 h16 +0x200", "Unit 3 Place")
    global Slot3PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y70 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot3PlaceValue.Text := Slot3Place
    global Slot3TypeValue := act_settings_GUI.Add("DropDownList", "x145 y70 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot3TypeValue.Text := Slot3Type

    act_settings_GUI.Add("Text", "x10 y105 w80 h16 +0x200", "Unit 4 Place")
    global Slot4PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y100 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot4PlaceValue.Text := Slot4Place
    global Slot4TypeValue := act_settings_GUI.Add("DropDownList", "x145 y100 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot4TypeValue.Text := Slot4Type

    act_settings_GUI.Add("Text", "x10 y135 w80 h16 +0x200", "Unit 5 Place")
    global Slot5PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y130 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot5PlaceValue.Text := Slot5Place
    global Slot5TypeValue := act_settings_GUI.Add("DropDownList", "x145 y130 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot5TypeValue.Text := Slot5Type

    act_settings_GUI.Add("Text", "x10 y165 w80 h16 +0x200", "Unit 6 Place")
    global Slot6PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y160 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot6PlaceValue.Text := Slot6Place
    global Slot6TypeValue := act_settings_GUI.Add("DropDownList", "x145 y160 w65 h150 +0x200", ["Ground", "Hill", "Farm"])
    Slot6TypeValue.Text := Slot6Type

    Notes := act_settings_GUI.Add("Text", "x0 y205 w220 h16 +Center +0x200", "Choose '0' = Disable")
    Notes := act_settings_GUI.Add("Text", "x0 y220 w220 h16 +Center +0x200", "Place Priority: Slot 1 > 2 > 3 > 4 > 5 > 6")
    global ChangeButton := act_settings_GUI.Add("Button", "x10 y255 w200 h35 +BackgroundGreen +Center +0x200",
        "CLICK HERE TO CHANGE")
    ChangeButton.OnEvent('Click', ChangeSettingsEvent_west_city_ls_2)

    act_settings_GUI.Show("w220 h300")
}

ChangeSettingsEvent_west_city_ls_2(*) {
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
    west_city_ls_2_config()
    act_settings_GUI.Destroy()
}

;Macro
starting_west_city_ls_2() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            movePlayBox()

            ;Click inside Selection button
            moveToManualTarget(545, 190)
            Sleep(300)

            ;Click on Act
            moveToManualTarget(365, 270)
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

            west_city_ls_2_config()
            starting_west_city_ls_2_ingame()
        }
    }
}

starting_west_city_ls_2_ingame() {
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
            moveToManualTarget(385, 275)
            Sleep(300)

            loop (10) {
                Send "{Wheeldown}"
                Sleep(100)
            }

            ;Tele to spawn
            while !ImageSearch(&FoundX, &FoundY, 490, 0, 575, 50, west_inf_spawn_condition) {
                ;if !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, votestart) {
                ;    reConnect()
                ;}
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

            west_city_ls_2_duringGame()
        }
    }

}

west_city_ls_2_duringGame() {
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
                    getPos := west_city_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Hill") {
                    getPos := west_city_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot1Type == "Farm") {
                    getPos := west_city_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot1Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot1Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . ",Farm")
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
                    getPos := west_city_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Hill") {
                    getPos := west_city_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot2Type == "Farm") {
                    getPos := west_city_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot2Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot2Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . ",Farm")
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
                    getPos := west_city_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Hill") {
                    getPos := west_city_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot3Type == "Farm") {
                    getPos := west_city_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot3Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot3Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . ",Farm")
            }

            unitPlacedPos.Push(x_place . "," . y_place)
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
                    getPos := west_city_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Hill") {
                    getPos := west_city_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot4Type == "Farm") {
                    getPos := west_city_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot4Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot4Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . ",Farm")
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
                    getPos := west_city_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Hill") {
                    getPos := west_city_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot5Type == "Farm") {
                    getPos := west_city_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot5Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot5Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . ",Farm")
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
                    getPos := west_city_getGroundPos(groundPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Hill") {
                    getPos := west_city_getHillPos(hillPlaced + 1)
                    xy := StrSplit(getPos, ",")
                    x_place := xy[1]
                    y_place := xy[2]
                } else if (Slot6Type == "Farm") {
                    getPos := west_city_getFarmPos(farmPlaced + 1)
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
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot6Type == "Hill") {
                hillPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place)
            } else if (Slot6Type == "Farm") {
                farmPlaced += 1
                unitPlacedPos.Push(x_place . "," . y_place . ",Farm")
            }

            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)

    while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
        ;Upgrade DPS Unit until end screen
        process_title.Text := "Upgrade units while waiting for end screen..."
        process.Value := 90

        for pos in unitPlacedPos {
            xy := StrSplit(pos, ",")
            x_place := xy[1]
            y_place := xy[2]
            moveToManualTarget(x_place, y_place)
            Sleep(500)
            
            if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, west_city_wave_15)) {
                try {
                    if xy[3] == "Farm" {
                        Send("{X}")
                    }
                }
            }

            Send("{F}")
            Sleep(500)
            ;Make sure no upgrade UI
            moveToManualTarget(400, 588)
            Sleep(500)
            if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                break
            }
        }

        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)
    }

    ;Wait
    Sleep(100)

    west_city_ls_2_retryGame()
}

west_city_ls_2_retryGame() {
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

    west_city_ls_2_duringGame()
}