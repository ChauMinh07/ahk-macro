#Requires AutoHotkey v2.0

;Get Config
christmas_portal_config() {
    global name_config := "christmas_portal"

    global TierChoice := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "TierChoice")
    global MapChoice := IniRead(A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "MapChoice")

}
christmas_portal_config()

setting_GUI_christmas_portal() {
    christmas_portal_config()
    global portal_settings_GUI := Gui()

    portal_settings_GUI.Add("GroupBox", "x5 y5 w235 h120 +0x200 +Left", "Tier Choice")
    global TierListAvailable := portal_settings_GUI.Add("DropDownList", "x10 y30 w105 h200 +0x200", ["Tier 1", "Tier 2",
        "Tier 3", "Tier 4", "Tier 5"])
    global AddTierButton := portal_settings_GUI.Add("Button", "x120 y29 w30 h23 +0x200 +Center", "Add")
    AddTierButton.OnEvent("Click", christmas_portal_addtier)
    global RemoveTierButton := portal_settings_GUI.Add("Button", "x150 y29 w50 h23 +0x200 +Center", "Remove")
    RemoveTierButton.OnEvent("Click", christmas_portal_removetier)
    global ClearTierButton := portal_settings_GUI.Add("Button", "x200 y29 w35 h23 +0x200 +Center", "Clear")
    ClearTierButton.OnEvent("Click", christmas_portal_cleartier)
    global TierList := portal_settings_GUI.Add("Edit", "x10 y60 w224 h50 +0x200 +ReadOnly", TierChoice)

    MapListBeingAble := ["West City", "Fujisima", "Red Army"]
    portal_settings_GUI.Add("GroupBox", "x245 y5 w235 h120 +0x200 +Left", "Map Choice")
    global MapListAvailable := portal_settings_GUI.Add("DropDownList", "x250 y30 w105 h200 +0x200", MapListBeingAble)
    global AddMapButton := portal_settings_GUI.Add("Button", "x360 y29 w30 h23 +0x200 +Center", "Add")
    AddMapButton.OnEvent("Click", christmas_portal_addmap)
    global RemoveMapButton := portal_settings_GUI.Add("Button", "x390 y29 w50 h23 +0x200 +Center", "Remove")
    RemoveMapButton.OnEvent("Click", christmas_portal_removemap)
    global ClearMapButton := portal_settings_GUI.Add("Button", "x440 y29 w35 h23 +0x200 +Center", "Clear")
    ClearMapButton.OnEvent("Click", christmas_portal_clearmap)
    global MapList := portal_settings_GUI.Add("Edit", "x250 y60 w224 h50 +0x200 +ReadOnly", MapChoice)

    portal_settings_GUI.Add("GroupBox", "x5 y125 w475 h50 +0x200 +Left", "Map Settings")
    global MapSettingListAvailable := portal_settings_GUI.Add("DropDownList", "x10 y145 w385 h200 +0x200",
        MapListBeingAble)
    global MapSettingChangeButton := portal_settings_GUI.Add("Button", "x400 y144 w75 h23 +0x200 +Center", "Change")
    MapSettingChangeButton.OnEvent("Click", christmas_portal_changemapsetting)

    global ChangeButton := portal_settings_GUI.Add("Button", "x10 y190 w465 h35 +BackgroundGreen +Center +0x200",
        "CLICK HERE TO SAVE")
    ChangeButton.OnEvent('Click', ChangeSettingsEvent_christmas_portal)

    portal_settings_GUI.Show("w485 h235")
}

ChangeSettingsEvent_christmas_portal(*) {
    global TierChoice
    global MapChoice
    IniWrite(TierChoice, A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "TierChoice")
    IniWrite(MapChoice, A_ScriptDir "\mmc\" . name_config . ".ini", "Config", "MapChoice")

    christmas_portal_config()
    portal_settings_GUI.Destroy()
}

christmas_portal_changemapsetting(*) {
    if MapSettingListAvailable.Text == "West City" {
        setting_GUI_west_city_ls_1
    }
    else if MapSettingListAvailable.Text == "Fujisima" {
        setting_GUI_fujisima_ls_3
    }
    else if MapSettingListAvailable.Text == "Red Army" {
        setting_GUI_adventure_red_army
    }
}

christmas_portal_cleartier(*) {
    global TierChoice

    TierChoice := ""
    TierList.Text := TierChoice
}

christmas_portal_addtier(*) {
    global name_config := "christmas_portal"
    global TierChoice

    TierChoiceAvailable := StrSplit(TierChoice, ",")
    for i, v in TierChoiceAvailable {
        if (v == TierListAvailable.Text) {
            MsgBox("Already in list!")
            return
        }
    }
    TierChoice := TierChoice TierListAvailable.Text ","

    TierList.Text := TierChoice
}

christmas_portal_removetier(*) {
    global name_config := "christmas_portal"
    global TierChoice

    TierChoiceAvailable := StrSplit(TierChoice, ",")
    TierChoice := ""
    for i, v in TierChoiceAvailable {
        if (v != TierListAvailable.Text && v != "") {
            TierChoice := TierChoice v ","
        }
    }

    TierList.Text := TierChoice
}

christmas_portal_clearmap(*) {
    global MapChoice

    MapChoice := ""
    MapList.Text := MapChoice
}

christmas_portal_addmap(*) {
    global name_config := "christmas_portal"
    global MapChoice

    MapChoiceAvailable := StrSplit(MapChoice, ",")
    for i, v in MapChoiceAvailable {
        if (v == MapListAvailable.Text) {
            MsgBox("Already in list!")
            return
        }
    }
    MapChoice := MapChoice MapListAvailable.Text ","

    MapList.Text := MapChoice
}

christmas_portal_removemap(*) {
    global name_config := "christmas_portal"
    global MapChoice

    MapChoiceAvailable := StrSplit(MapChoice, ",")
    MapChoice := ""
    for i, v in MapChoiceAvailable {
        if (v != MapListAvailable.Text && v != "") {
            MapChoice := MapChoice v ","
        }
    }

    MapList.Text := MapChoice
}

;Macro
starting_christmas_portal() {
    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            global FoundX, FoundY
            WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

            moveToManualTarget(30, 330)
            moveToManualTarget(555, 190)
            moveToManualTarget(235, 235)

            TierChoiceSplit := StrSplit(TierChoice, ",")
            MapChoiceSplit := StrSplit(MapChoice, ",")

            Tier := Map()
            Tier["Tier 1"] := "|<>*150$14.UDE3bbltsSTbbttySTbrtU"
            Tier["Tier 2"] := "|<>*150$16.UCA0kST8ttnbySTVtwDbUDT0U"
            Tier["Tier 3"] := "|<>*150$16.UCA0kST8tz3bwSTsttnbkDTVU"
            Tier["Tier 4"] := "|<>*150$16.UCo0nCTAtwnbWCS0tzXbzDTxU"
            Tier["Tier 5"] := "|<>*150$15.UA81UtwzDXtsDDgtzbD0xwA"

            MapName := Map()
            MapName["West City"] := "|<>*135$54.Cwzzjw5rzCRzzbtrnzANbr3nzVTU0133nwUCU0N7bnwnAVW33bnwnVnaDVbtonlna31Xs4lnzzXXnyBtnzzzzzzzznzzzzzzzzbU"
            MapName["Fujisima"] := "|<>*150$89.0zzznzzzznyTzzwTzzzbzzzzbwzzzszzzzDzzzzDtzzzUwuHS381kSPnUUs3toawuHRAwraNCa7ndANoauRtXAuRCDqGSHdBonnmNYvMTUYVbGPg7YCM9q3zzDbzzzzzwzzzzzzwzzzzzzzzzzzzzzlzzzzzzzzzzzzk"
            MapName["Red Army"] := "|<>*150$75.1zzjxzzzzwxktrzxzDzzzzbhvCzzDszzzzwxDdqr1yrC0Nrbdx0aHDqNnRjwtTdYKRw3CPiDbdxCbvDj9nRlwxb9q71txCPjTbi0zszzzzzzvzztzzzzzzzzyzzzzU"

            TierListAvailableInv := []
            MapSelectedInv_Pos := ""
            MapSelectedInv_Name := ""

            for i, v in TierChoiceSplit {
                x_start := 350
                y_start := 230
                while (x_start < 660 && y_start < 420) {
                    process_title.Text := "Finding " v "..."

                    moveToManualTargetNoDELAY(x_start, y_start)

                    Sleep(100)
                    try {
                        if FindText(&FX, &FY, 104, 364, 220, 385, 0, 0, Tier[v]) {
                            TierListAvailableInv.Push(x_start "," y_start)
                        }
                    }

                    if (x_start < 650) {
                        x_start += 60
                    } else {
                        y_start += 60
                        x_start := 350
                    }
                    Sleep(300)
                }

                if TierListAvailableInv.Length != 0 {
                    break
                }
            }

            ;Handle No Tier Selected Portal Available
            if (TierListAvailableInv.Length == 0) {
                MsgBox("No Tier Selected Portal Available")
                return
            }

            for im, m in MapChoiceSplit {
                for it, t in TierListAvailableInv {
                    process_title.Text := "Finding Map " m "..."
                    xy := StrSplit(t, ",")
                    x := xy[1]
                    y := xy[2]
                    MouseNoClickRelativeMove(x, y)
                    Sleep(75)
                    try {
                        if FindText(&FX, &FY, 20, 87, 803, 565, 0, 0, MapName[m]) {
                            MapSelectedInv_Pos := x "," y
                            MapSelectedInv_Name := m
                        }
                    }
                    Sleep(50)
                    if MapSelectedInv_Pos != "" {
                        break
                    }
                }
                if MapSelectedInv_Pos != "" {
                    break
                }
            }

            ;Handle No Map  Selected Portal Available
            if (MapSelectedInv_Pos == "") {
                MsgBox("No Map Selected Portal Available")
                return
            }

            xy_choice := StrSplit(MapSelectedInv_Pos, ",")
            x_choice := xy_choice[1]
            y_choice := xy_choice[2]
            Sleep(100)
            moveToManualTarget(x_choice, y_choice)

            Sleep(100)
            ;Use Portal Button
            moveToManualTarget(250, 425)

            ;Only Friends Button
            Sleep(100)
            moveToManualTarget(400, 360)

            ;Start Button
            Sleep(250)
            moveToManualTarget(635, 450)

            while (!ImageSearch(&FX, &FY, 0, 0, W, H, A_ScriptDir "\img\votestart.png")) {
                Sleep(150)
            }

            if MapSelectedInv_Name == "West City" {
                starting_west_city_ls_1_ingame
            }
            else if MapSelectedInv_Name == "Fujisima" {
                starting_fujisima_ls_3_ingame
            }
            else if MapSelectedInv_Name == "Red Army" {
                starting_adventure_red_army_ingame
            }
            christmas_portal_config()
        }
    }
}
