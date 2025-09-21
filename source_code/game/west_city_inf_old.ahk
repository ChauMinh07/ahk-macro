#Requires AutoHotkey v2.0

name_config := "west_city_inf"

;Get Config
west_city_inf_config() {
    global Slot1Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Place")
    global Slot1Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot1Type")
    global Slot2Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Place")
    global Slot2Type := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot2Type")
    global Slot3Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot3Place")
    global Slot4Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot4Place")
    global Slot5Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot5Place")
    global Slot6Place := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "Slot6Place")
}
west_city_inf_config()

setting_GUI_west_city_inf() {
    west_city_inf_config()
    global act_settings_GUI := Gui()

    act_settings_GUI.Add("Text", "x10 y15 w80 h16 +0x200", "Unit 2 Place")
    global Slot1PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y10 w40 h150 +0x200", [1, 2, 3, 4, 5, 6
    ])
    Slot1PlaceValue.Text := Slot1Place
    global Slot1TypeValue := act_settings_GUI.Add("DropDownList", "x145 y10 w65 h150 +0x200", ["Ground", "Hill"])
    Slot1TypeValue.Text := Slot1Type

    act_settings_GUI.Add("Text", "x10 y45 w80 h16 +0x200", "Unit 2 Place")
    global Slot2PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y40 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot2PlaceValue.Text := Slot2Place
    global Slot2TypeValue := act_settings_GUI.Add("DropDownList", "x145 y40 w65 h150 +0x200", ["Ground", "Hill"])
    Slot2TypeValue.Text := Slot2Type

    act_settings_GUI.Add("Text", "x10 y75 w80 h16 +0x200", "Unit 3 Place")
    global Slot3PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y70 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot3PlaceValue.Text := Slot3Place
    global Slot3TypeValue := act_settings_GUI.Add("DropDownList", "x145 y70 w65 h150 +0x200", ["Ground"])
    Slot3TypeValue.Text := "Ground"

    act_settings_GUI.Add("Text", "x10 y105 w80 h16 +0x200", "Unit 4 Place")
    global Slot4PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y100 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot4PlaceValue.Text := Slot4Place
    global Slot4TypeValue := act_settings_GUI.Add("DropDownList", "x145 y100 w65 h150 +0x200", ["Ground"])
    Slot4TypeValue.Text := "Ground"

    act_settings_GUI.Add("Text", "x10 y135 w80 h16 +0x200", "Unit 5 Place")
    global Slot5PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y130 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot5PlaceValue.Text := Slot5Place
    global Slot5TypeValue := act_settings_GUI.Add("DropDownList", "x145 y130 w65 h150 +0x200", ["Ground"])
    Slot5TypeValue.Text := "Ground"

    act_settings_GUI.Add("Text", "x10 y165 w80 h16 +0x200", "Unit 6 Place")
    global Slot6PlaceValue := act_settings_GUI.Add("DropDownList", "x100 y160 w40 h150 +0x200", [0, 1, 2, 3, 4, 5, 6
    ])
    Slot6PlaceValue.Text := Slot6Place
    global Slot6TypeValue := act_settings_GUI.Add("DropDownList", "x145 y160 w65 h150 +0x200", ["Ground"])
    Slot6TypeValue.Text := "Ground"

    Notes := act_settings_GUI.Add("Text", "x0 y210 w230 h16 +Center +0x200", "Choose '0' = Disable")
    global ChangeButton := act_settings_GUI.Add("Button", "x10 y245 w200 h35 +BackgroundGreen +Center +0x200",
        "CLICK HERE TO CHANGE")
    ChangeButton.OnEvent('Click', ChangeSettingsEvent_west_city_inf)

    act_settings_GUI.Show("w220 h290")
}

ChangeSettingsEvent_west_city_inf(*) {
    IniWrite Slot1PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Place'
    IniWrite Slot1TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot1Type'
    IniWrite Slot2PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Place'
    IniWrite Slot2TypeValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot2Type'
    IniWrite Slot3PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot3Place'
    IniWrite Slot4PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot4Place'
    IniWrite Slot5PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot5Place'
    IniWrite Slot6PlaceValue.Text, A_ScriptDir '\mmc\' . name_config . '.ini', 'Config', 'Slot6Place'
    west_city_inf_config()
    act_settings_GUI.Destroy()
}

;Macro
starting_west_city_inf() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            ;Click Areas Button
            moveToManualTarget(83, 337)
            Sleep(1000)

            ;Click Play button
            moveToManualTarget(485, 230)
            Sleep(500)

            Send("{Shift}")
            loop 26 {
                Send "{A down}"
                Sleep(100)
                Send "{A up}"
            }
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, selection_ui) {
                Send "{W down}"
                Sleep(300)
                Send "{W up}"
            }

            ;Click inside Selection button
            moveToManualTarget(365, 245)
            Sleep(300)

            loop 5 {
                Send "{WheelDown}"
                Sleep(100)
            }

            ;Click on Act
            moveToManualTarget(365, 370)
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

            west_city_inf_config()
            starting_west_city_inf_ingame()
        }
    }
}

starting_west_city_inf_ingame() {
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
            MouseMove(0, -10, 0, "R")
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
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, west_inf_spawn_condition) {
                process_title.Text := "Checking spawn condition."
                moveToManualTarget(560, 360)
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

            west_city_inf_duringGame()
        }
    }

}

west_city_inf_duringGame() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    ;Update Projess
    process.Value := 1
    process_title.Text := "Placing 1st Slot Unit!"

    ;1st Unit
    placed := 1
    if (placed <= Slot1Place) {
        global x_place
        global y_place
        if (Slot1Type == "Hill") {
            x_place := 465
            y_place := 270
        } else {
            x_place := 415
            y_place := 240
        }
        while (placed <= Slot1Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
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

            if (Slot1Type == "Hill") {
                if placed == 1 {
                    x_place := 451
                    y_place := 279
                } else if placed == 2 {
                    x_place := 449
                    y_place := 295
                } else if placed == 3 {
                    x_place := 459
                    y_place := 311
                } else if placed == 4 {
                    x_place := 484
                    y_place := 323
                } else if placed == 5 {
                    x_place := 201
                    y_place := 125
                }
            } else {
                y_place += 25
            }
            placed += 1
        }
    }

    process.Value := 10

    ;2nd Unit
    placed := 1
    if (placed <= Slot2Place) {
        global x_place
        global y_place

        if (Slot2Type == "Hill") {
            x_place := 314
            y_place := 304
        } else {
            x_place := 375
            y_place := 260
        }

        while (placed <= Slot2Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                process_title.Text := "Placing 2nd - " . placed
                Send("{2}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(700)
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

            if (Slot2Type == "Hill") {
                if placed == 1 {
                    x_place := 288
                    y_place := 216
                } else if placed == 2 {
                    x_place := 268
                    y_place := 139
                } else if placed == 3 {
                    x_place := 270
                    y_place := 115
                } else if placed == 4 {
                    x_place := 216
                    y_place := 56
                } else if placed == 5 {
                    x_place := 317
                    y_place := 39
                }
            } 
            else {
                y_place += 25
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
        x_place := 315
        y_place := 220
        while (placed <= Slot3Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                process_title.Text := "Placing 3rd - " . placed
                Send("{3}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(700)
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

            x_place += 25
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
        x_place := 295
        y_place := 80
        while (placed <= Slot4Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                process_title.Text := "Placing 4th - " . placed
                Send("{4}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(700)
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

            y_place -= 20
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
        x_place := 240
        y_place := 210
        while (placed <= Slot5Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                process_title.Text := "Placing 5th - " . placed
                Send("{5}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(700)
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

            x_place -= 25
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
        x_place := 165
        y_place := 175
        while (placed <= Slot6Place) {
            while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, upgrade_ui) {
                process_title.Text := "Placing 6th - " . placed
                Send("{6}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(500)
                Send("{Q}")
                Sleep(500)
                moveToManualTarget(x_place, y_place)
                Sleep(700)
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

            x_place += 25
            placed += 1
        }
    }

    ;Make sure no upgrade UI
    moveToManualTarget(400, 588)
    Sleep(500)

    while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
        ;Upgrade DPS Unit until end screen
        process_title.Text := "Waiting until the end screen..."
        process.Value := 90

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
            break
        }

        ;Upgrade Units
        ;1st Unit
        upgraded := 1
        if (upgraded <= Slot1Place) {
            if (Slot1Type == "Hill") {
                x_place := 465
                y_place := 270
            } else {
                x_place := 415
                y_place := 240
            }
            while (upgraded <= Slot1Place) {
                moveToManualTarget(x_place, y_place)
                Sleep(1000)
                Send("{F}")
                Sleep(200)
                moveToManualTarget(400, 588)
                
                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
                    break
                }

                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                    break
                }

                if (Slot1Type == "Hill") {
                    if upgraded == 1 {
                        x_place := 451
                        y_place := 279
                    } else if upgraded == 2 {
                        x_place := 449
                        y_place := 295
                    } else if upgraded == 3 {
                        x_place := 459
                        y_place := 311
                    } else if upgraded == 4 {
                        x_place := 484
                        y_place := 323
                    } else if upgraded == 5 {
                        x_place := 201
                        y_place := 125
                    }
                } else {
                    y_place += 25
                }
                upgraded += 1
            }
        }
        
        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
            break
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
            break
        }
        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)
        
        ;2nd Unit
        upgraded := 1
        if (upgraded <= Slot2Place) {
            if (Slot2Type == "Hill") {
                x_place := 314
                y_place := 304
            } else {
                x_place := 375
                y_place := 260
            }
    
            while (upgraded <= Slot2Place) {
                moveToManualTarget(x_place, y_place)
                Sleep(1000)
                Send("{F}")
                Sleep(200)
                moveToManualTarget(400, 588)
                
                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
                    break
                }

                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                    break
                }
                
                if (Slot2Type == "Hill") {
                    if upgraded == 1 {
                        x_place := 288
                        y_place := 216
                    } else if upgraded == 2 {
                        x_place := 268
                        y_place := 139
                    } else if upgraded == 3 {
                        x_place := 270
                        y_place := 115
                    } else if upgraded == 4 {
                        x_place := 216
                        y_place := 56
                    } else if upgraded == 5 {
                        x_place := 317
                        y_place := 39
                    }
                } 
                else {
                    y_place += 25
                }
                upgraded += 1
            }
        }
        
        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
            break
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
            break
        }
        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)
        
        ;3rd Unit
        upgraded := 1
        if (upgraded <= Slot3Place) {
            x_place := 315
            y_place := 220
            while (upgraded <= Slot3Place) {
                moveToManualTarget(x_place, y_place)
                Sleep(1000)
                Send("{F}")
                Sleep(200)
                moveToManualTarget(400, 588)
                
                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
                    break
                }

                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                    break
                }
                
                x_place += 25
                upgraded += 1
            }
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
            break
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
            break
        }
        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)
        
        ;4th Unit
        upgraded := 1
        if (upgraded <= Slot4Place) {
            x_place := 295
            y_place := 80
            while (upgraded <= Slot4Place) {
                moveToManualTarget(x_place, y_place)
                Sleep(1000)
                Send("{F}")
                Sleep(200)
                moveToManualTarget(400, 588)
                
                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
                    break
                }

                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                    break
                }
                
                y_place -= 20
                upgraded += 1
            }
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
            break
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
            break
        }
        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)

        ;5th Unit
        upgraded := 1
        if (upgraded <= Slot5Place) {
            x_place := 240
            y_place := 210
            while (upgraded <= Slot5Place) {
                moveToManualTarget(x_place, y_place)
                Sleep(1000)
                Send("{F}")
                Sleep(200)
                moveToManualTarget(400, 588)
                
                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
                    break
                }

                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                    break
                }
                
                x_place -= 25
                upgraded += 1
            }
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
            break
        }

        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
            break
        }
        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)

        ;6th Unit
        upgraded := 1
        if (upgraded <= Slot6Place) {
            x_place := 165
            y_place := 175
            while (upgraded <= Slot6Place) {
                moveToManualTarget(x_place, y_place)
                Sleep(1000)
                Send("{F}")
                Sleep(200)
                moveToManualTarget(400, 588)
                
                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_gems) {
                    break
                }

                if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
                    break
                }
                
                x_place += 25
                upgraded += 1
            }
        }

        ;Make sure no upgrade UI
        moveToManualTarget(400, 588)
        Sleep(500)
    }

    ;Wait
    Sleep(100)

    west_city_inf_retryGame()
}

west_city_inf_retryGame() {
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
    while ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
        moveToManualTarget(308, 441)
        Sleep(1000)
    }

    process.Value := 100

    west_city_inf_duringGame()
}

getFarmPos() {
    ;x,y
    farmPos := Map()
    farmPos[1] := "320,445"
    farmPos[2] := "340,445"
    farmPos[3] := "360,445"
    farmPos[4] := "380,445"
}

getHillPos() {
    ;x,y
    HillPos := Map()
    HillPos[1] := "432,284"
    HillPos[2] := "425,290"
    HillPos[3] := "425,299"
    HillPos[4] := "435,301"
    HillPos[5] := "431,308"
    HillPos[6] := "352,299"
    HillPos[7] := "336,251"
    HillPos[8] := "324,206"
    HillPos[9] := "286,197"
    HillPos[10] := "323,193"
    HillPos[11] := "292,157"
    HillPos[12] := "359,134"
    HillPos[13] := "354,141"
    HillPos[14] := "351,150"
    HillPos[15] := "359,156"
    HillPos[16] := "380,134"
    HillPos[17] := "359,85"
    HillPos[18] := "316,63"
    HillPos[19] := "431,49"
    HillPos[20] := "428,45"
}

getGroundPos() {
    ;x,y
    GroundPos := Map()
    GroundPos[1] := "407, 270"
    GroundPos[2] := "407, 285"
    GroundPos[3] := "407, 300"
    GroundPos[4] := "407, 315"
    GroundPos[5] := "407, 330"
    GroundPos[6] := "388, 275"
    GroundPos[7] := "388, 290"
    GroundPos[8] := "388, 305"
    GroundPos[9] := "388, 320"
    GroundPos[10] := "375, 275"
    GroundPos[11] := "360, 275"
    GroundPos[12] := "349, 275"
    GroundPos[13] := "352, 256"
    GroundPos[14] := "367, 256"
    GroundPos[15] := "372, 256"
    GroundPos[16] := "387, 256"
    GroundPos[17] := "402, 256"
    GroundPos[18] := "314, 247"
    GroundPos[19] := "300, 245"
    GroundPos[20] := "285, 245"
    GroundPos[21] := "270, 245"
    GroundPos[22] := "255, 245"
    GroundPos[23] := "332, 227"
    GroundPos[24] := "317, 227"
    GroundPos[25] := "302, 229"
    GroundPos[26] := "287, 229"
    GroundPos[27] := "272, 229"
    GroundPos[28] := "338, 87"
    GroundPos[29] := "338, 100"
    GroundPos[30] := "338, 112"
    GroundPos[31] := "338, 124"
    GroundPos[32] := "338, 136"
    GroundPos[33] := "338, 148"
    GroundPos[34] := "338, 160"
    GroundPos[35] := "320, 112"
    GroundPos[36] := "320, 124"
}