#MaxThreadsPerHotkey 4

moveToManualTarget(x, y) { ;shout out to InformaalFrog AV Macro v0.1.12 (1)
    try {
        MouseMove(x, y, 5)
        Sleep(50)
        MouseRelativeMove()
        Sleep(50)
        Send("{Click}")
    }
}

moveToManualTargetNoDELAY(x, y) { ;shout out to InformaalFrog AV Macro v0.1.12 (1)
    try {
        MouseMove(x, y, 5)
        Sleep(10)
        MouseRelativeMoveNoDELAY()
        Sleep(20)
        Send("{Click}")
    }
}

MouseRelativeMoveNoDELAY() { ;shout out to InformaalFrog AV Macro v0.1.12 (1)
    MouseMove(1, 1, 5, "R")
    Sleep(20)
    MouseMove(-1, -1, 5, "R")
}

MouseRelativeMove() { ;shout out to InformaalFrog AV Macro v0.1.12 (1)
    MouseMove(1, 1, 5, "R")
    Sleep(70)
    MouseMove(-1, -1, 5, "R")
}

MouseNoClickRelativeMove(x, y) {
    MouseMove(x, y, 0)
    Sleep(70)
    MouseMove(1, 1, 5, "R")
    Sleep(70)
    MouseMove(-1, -1, 5, "R")
}

checkingDisconnect() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    if ((ImageSearch(&FoundX, &FoundY, 0, 0, W, H, disconnect)) && browserMainAccount != "Roblox App") {
        SetTimer checkingDisconnect() 0
        process_title.Text := "Reconnecting..."
        if WinExist("ahk_exe RobloxPlayerBeta.exe") {
            WinClose("ahk_exe RobloxPlayerBeta.exe")
            Sleep(2000)
            WinClose("ahk_exe RobloxPlayerBeta.exe")
        }

        Sleep(3000)

        if (browserMainAccount == "Chrome") {
            Run("chrome.exe " pslink)
        } else if (browserMainAccount == "Edge") {
            Run("msedge.exe " pslink)
        } else if (browserMainAccount == "Opera") {
            Run("opera.exe " pslink)
        } else if (browserMainAccount == "Opera GX") {
            Run("opera.exe " pslink)
        } else if (browserMainAccount == "Firefox") {
            Run("firefox.exe " pslink)
        } else if (browserMainAccount == "Brave") {
            Run("brave.exe " pslink)
        } else if (browserMainAccount == "Coc coc") {
            Run("coccoc.exe " pslink)
        }

        Sleep(1000)

        longWifiIssue := 0
        while !WinExist("ahk_exe RobloxPlayerBeta.exe") {
            if (longWifiIssue < 300) {
                longWifiIssue += 1
            } else {
                Send "^{F5}"
            }
            Sleep(1000)
        }

        Sleep(1000)
        if WinExist("ahk_exe RobloxPlayerBeta.exe") {
            if (browserMainAccount == "Chrome") {
                WinActivate("ahk_exe chrome.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe chrome.exe") {
                    WinClose("ahk_exe chrome.exe")
                }
            } else if (browserMainAccount == "Edge") {
                WinActivate("ahk_exe msedge.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe msedge.exe") {
                    WinClose("ahk_exe msedge.exe")
                }
            } else if (browserMainAccount == "Opera") {
                WinActivate("ahk_exe opera.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe opera.exe") {
                    WinClose("ahk_exe opera.exe")
                }
            } else if (browserMainAccount == "Opera GX") {
                WinActivate("ahk_exe operagx.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe operagx.exe") {
                    WinClose("ahk_exe operagx.exe")
                }
                WinClose("ahk_exe operagx.exe")
            } else if (browserMainAccount == "Firefox") {
                WinActivate("ahk_exe firefox.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe firefox.exe") {
                    WinClose("ahk_exe firefox.exe")
                }
            } else if (browserMainAccount == "Brave") {
                WinActivate("ahk_exe brave.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe brave.exe") {
                    WinClose("ahk_exe brave.exe")
                }
            } else if (browserMainAccount == "Coc coc") {
                WinActivate("ahk_exe coccoc.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe coccoc.exe") {
                    WinClose("ahk_exe coccoc.exe")
                }
            }
            while !WinExist("ahk_exe RobloxPlayerBeta.exe") {
                Sleep(1000)
            }
            WinActivate("ahk_exe RobloxPlayerBeta.exe")
            if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
                WinMove(0, 0, 816, 638, "ahk_exe RobloxPlayerBeta.exe")
                Sleep(1000)

                ; Wait until game loaded
                global FoundX, FoundY
                WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
                while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby) {
                    Sleep(1000)
                }
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby)) {
                    process_title.Text := "Reconnecting... (Waiting until join completely)"
                    StartMacro()
                }
            }
        }
    } else if ((ImageSearch(&FoundX, &FoundY, 0, 0, W, H, disconnect)) && browserMainAccount == "Roblox App") {
        Sleep(500)
        moveToManualTarget(305, 385)
        MouseMove(410, 540)
        recommended_roblox_app_text :=
            "|<>*100$181.07zzzzzzzzzzzzzzzzzVzzzkzU1zzzU1zzzzzzzzzzzzzzzzzkzzzsTk0zzzk0TzzzzzzzzzzzzzzzzsTzzwDs0TzzsSDzzzzzzzzzzzzzzzzwDzzy7wDzzzwD7UTkT0wEkQEkT0wET07UTU3y7z0wE7XU7U70C00C00D0C0703U7U1z3z0C001U1U303003003030301U1U0zU303001lslvXlXVlXVlXlVlXklslsTk1XlVk1s0MzlsFsslssk0lslsM0MwDs0lsFsMw0ATsy8wQMwQM0MwMwA0AS7wDsy8wACDyDwS4SCASCATwSAS6DyD3y7wS4S777z7iD6D76D76DyD6D37z7Vz3yD6D3VU3U3037XX7XX077X01U3U0zVz037Vss0s1k3XllXllk1Xlk0s0s0Tkzk3XkwD1z1w3lsslssy3lsw8T1y4DsTw3lw"
        anime_vanguard_home_roblox_app_text :=
            "|<>*120$83.7szzzzzzzzzzDzDnzzzzzzzzzyTyD7zzzzzzzzzwzwSA78S4nXUt61kQwk60M1b60k030slbAMlXCAtXXaRlXk9tbaQS1DDADmC0HmDAsk2QSM7UQsbaSNlb4wwy71lVDAMlWA9sliD3k2SM1U60Hk30y7l4wsHUC8bkb3zzzzzr7zzzzzzzzzzzz0Tzzzzzzzzzzzz1zzzzzzzw"
        event_roblox_app_text :=
            "|<>*100$64.03zzzzzzzzw0DzzzzzwTzk0zzzzzzlzz3zzzzzzz7zwDsS61sUk3Ukzlsk3U10A1077W06077U40QAMwMQQSDk1slU1Xlls73zX606D77k4Dy0szswQTkEzw3XzXllzk03kC0CD70U40DVw0MwS20E0y7w7XlwA3U"
        description_roblox_app_text :=
            "|<>*100$108.07zzzzzzzXzzzszzzz03zzzzzzzXzzlszzzz01zzzzzzzXzzlszzzz3Uzzzzzzzzzzlzzzzz3kw3w7sC8X4708w3l13ss1s3U60X0308s1k03sk0k3060X03lsk0k03slslz7i7X3Vlslsks3sk0kD7yDX7llslsFs3sk0s37yDX7llslwFs3klzy37yDX7llslsFs3UlzzV7iDX7Vlslsls01k1k306DX03k8k0ls03s0k3U6DX03s8s1ls07y3s7sCDX0Dw8w3lszzzzzzzzzz7zzzzzzzzzzzzzzzzz7zzzzzzzzzzzzzzzzz7zzzzzzzzzzzzzzzzz7zzzzzzzU"
        server_roblox_app_text_background :=
            "|<>*120$54.kzzzzzzzz4TzzzzzzzDzzzzzzzzDy78TS79VDwn1SQn1AVtvDCNvDDsPtDivtDDyM1Dgs1DVz/zDZvzDwTNzDptzDy6QnDlwnDAUy7Dny7DVU"
        server_roblox_app_text :=
            "|<>*120$54.kzzzzzzzzYTzzzzzzzDzzzzzzzzTy78TS79VDwn7SQn7AVtvDCtvDTwPtDivtDDzM1Dgs1DVzPzDZvzDwzNzDptzDy6QnDlwnDAky7Dny7DVU"
        server_arrow_roblox_app := "|<>*100$14.ztzzDzl00003zlzszyS"
        server_arrow_roblox_app_background := "|<>*100$14.ztzyDzl00003zlzszyS"
        join_server_vip_text := "|<>*150$25.wzwzyTzzzC787aNYHnSmRtD9CwrgbCtaHcS79o"
        ;Wait to leave
        while ((!FindText(&X, &Y, 12, 88, 804, 620, 0, 0, description_roblox_app_text)) && (!FindText(&X, &Y, 12, 88,
            804, 620, 0, 0, anime_vanguard_home_roblox_app_text)) && (!FindText(&X, &Y, 12, 88, 804, 620, 0, 0,
                server_roblox_app_text)) && !FindText(&X, &Y, 12, 88, 804, 620, 0, 0, server_roblox_app_text_background
        ) && !FindText(&X, &Y, 73, 251, 404, 321, 0, 0, recommended_roblox_app_text)) {
            Sleep(100)
        }

        ;Click close game if available
        moveToManualTarget(110, 35)

        ;Wait for Roblox home page
        while (!FindText(&X, &Y, 12, 88, 804, 620, 0, 0, description_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804,
            620, 0, 0, anime_vanguard_home_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804, 620, 0, 0,
                server_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804, 620, 0, 0, server_roblox_app_text_background) &&
        !FindText(&X, &Y, 73, 251, 404, 321, 0, 0, recommended_roblox_app_text)) {
            Sleep(100)
        }

        if FindText(&X, &Y, 73, 251, 404, 321, 0, 0, recommended_roblox_app_text) {
            moveToManualTarget(70, 220)
            loop 4 {
                Send("{WheelDown}")
                Sleep(150)
            }
        }

        ;Click on first countinue game
        moveToManualTarget(195, 385)

        ;Wait for load game page
        while (!FindText(&X, &Y, 12, 88, 804, 620, 0, 0, description_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804,
            620, 0, 0, event_roblox_app_text)) {
            Sleep(100)
        }
        Sleep(250)
        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, roblox_server) {
            moveToManualTarget(90, 370)
            Send "{WheelDown}"
            Sleep(100)
        }
        Sleep(300)
        moveToManualTarget(FoundX, FoundY)

        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, roblox_join_ps) {
            Sleep(100)
        }
        moveToManualTarget(FoundX, FoundY)
        ; Wait until game loaded
        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby) {
            Sleep(1000)
        }
        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby)) {
            process_title.Text := "Reconnecting... (Waiting until join completely)"
            SetTimer , 0
            StartMacro()
        }
    }
}

reConnect() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
    SetTimer(checkingDisconnect, 0)
    process_title.Text := "Reconnecting..."

    if (browserMainAccount != "Roblox App") {
        if WinExist("ahk_exe RobloxPlayerBeta.exe") {
            WinClose("ahk_exe RobloxPlayerBeta.exe")
            Sleep(2000)
            WinClose("ahk_exe RobloxPlayerBeta.exe")
        }

        Sleep(3000)

        if (browserMainAccount == "Chrome") {
            Run("chrome.exe " pslink)
        } else if (browserMainAccount == "Edge") {
            Run("msedge.exe " pslink)
        } else if (browserMainAccount == "Opera") {
            Run("opera.exe " pslink)
        } else if (browserMainAccount == "Opera GX") {
            Run("opera.exe " pslink)
        } else if (browserMainAccount == "Firefox") {
            Run("firefox.exe " pslink)
        } else if (browserMainAccount == "Brave") {
            Run("brave.exe " pslink)
        } else if (browserMainAccount == "Coc coc") {
            Run("coccoc.exe " pslink)
        }

        Sleep(1000)

        longWifiIssue := 0
        while !WinExist("ahk_exe RobloxPlayerBeta.exe") {
            if (longWifiIssue < 300) {
                longWifiIssue += 1
            } else {
                Send "^{F5}"
            }
            Sleep(1000)
        }

        Sleep(1000)
        if WinExist("ahk_exe RobloxPlayerBeta.exe") {
            if (browserMainAccount == "Chrome") {
                WinActivate("ahk_exe chrome.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe chrome.exe") {
                    WinClose("ahk_exe chrome.exe")
                }
            } else if (browserMainAccount == "Edge") {
                WinActivate("ahk_exe msedge.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe msedge.exe") {
                    WinClose("ahk_exe msedge.exe")
                }
            } else if (browserMainAccount == "Opera") {
                WinActivate("ahk_exe opera.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe opera.exe") {
                    WinClose("ahk_exe opera.exe")
                }
            } else if (browserMainAccount == "Opera GX") {
                WinActivate("ahk_exe operagx.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe operagx.exe") {
                    WinClose("ahk_exe operagx.exe")
                }
                WinClose("ahk_exe operagx.exe")
            } else if (browserMainAccount == "Firefox") {
                WinActivate("ahk_exe firefox.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe firefox.exe") {
                    WinClose("ahk_exe firefox.exe")
                }
            } else if (browserMainAccount == "Brave") {
                WinActivate("ahk_exe brave.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe brave.exe") {
                    WinClose("ahk_exe brave.exe")
                }
            } else if (browserMainAccount == "Coc coc") {
                WinActivate("ahk_exe coccoc.exe")
                Sleep(1000)
                Send "^{F4}"
                Sleep(100)

                if WinExist("ahk_exe coccoc.exe") {
                    WinClose("ahk_exe coccoc.exe")
                }
            }
            while !WinExist("ahk_exe RobloxPlayerBeta.exe") {
                Sleep(1000)
            }
            WinActivate("ahk_exe RobloxPlayerBeta.exe")
            if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
                WinMove(0, 0, 816, 638, "ahk_exe RobloxPlayerBeta.exe")
                Sleep(1000)

                ; Wait until game loaded
                global FoundX, FoundY
                WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
                while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby) {
                    Sleep(1000)
                }
                if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby)) {
                    process_title.Text := "Reconnecting... (Waiting until join completely)"
                    StartMacro()
                }
            }
        }
    } else {
        MouseMove(410, 540)
        Send "{Escape}"
        Sleep(100)
        Send "{L}"
        Sleep(100)
        Send "{Enter}"
        Sleep(100)
        recommended_roblox_app_text :=
            "|<>*100$181.07zzzzzzzzzzzzzzzzzVzzzkzU1zzzU1zzzzzzzzzzzzzzzzzkzzzsTk0zzzk0TzzzzzzzzzzzzzzzzsTzzwDs0TzzsSDzzzzzzzzzzzzzzzzwDzzy7wDzzzwD7UTkT0wEkQEkT0wET07UTU3y7z0wE7XU7U70C00C00D0C0703U7U1z3z0C001U1U303003003030301U1U0zU303001lslvXlXVlXVlXlVlXklslsTk1XlVk1s0MzlsFsslssk0lslsM0MwDs0lsFsMw0ATsy8wQMwQM0MwMwA0AS7wDsy8wACDyDwS4SCASCATwSAS6DyD3y7wS4S777z7iD6D76D76DyD6D37z7Vz3yD6D3VU3U3037XX7XX077X01U3U0zVz037Vss0s1k3XllXllk1Xlk0s0s0Tkzk3XkwD1z1w3lsslssy3lsw8T1y4DsTw3lw"
        anime_vanguard_home_roblox_app_text :=
            "|<>*120$83.7szzzzzzzzzzDzDnzzzzzzzzzyTyD7zzzzzzzzzwzwSA78S4nXUt61kQwk60M1b60k030slbAMlXCAtXXaRlXk9tbaQS1DDADmC0HmDAsk2QSM7UQsbaSNlb4wwy71lVDAMlWA9sliD3k2SM1U60Hk30y7l4wsHUC8bkb3zzzzzr7zzzzzzzzzzzz0Tzzzzzzzzzzzz1zzzzzzzw"
        event_roblox_app_text :=
            "|<>*100$64.03zzzzzzzzw0DzzzzzwTzk0zzzzzzlzz3zzzzzzz7zwDsS61sUk3Ukzlsk3U10A1077W06077U40QAMwMQQSDk1slU1Xlls73zX606D77k4Dy0szswQTkEzw3XzXllzk03kC0CD70U40DVw0MwS20E0y7w7XlwA3U"
        description_roblox_app_text :=
            "|<>*100$108.07zzzzzzzXzzzszzzz03zzzzzzzXzzlszzzz01zzzzzzzXzzlszzzz3Uzzzzzzzzzzlzzzzz3kw3w7sC8X4708w3l13ss1s3U60X0308s1k03sk0k3060X03lsk0k03slslz7i7X3Vlslsks3sk0kD7yDX7llslsFs3sk0s37yDX7llslwFs3klzy37yDX7llslsFs3UlzzV7iDX7Vlslsls01k1k306DX03k8k0ls03s0k3U6DX03s8s1ls07y3s7sCDX0Dw8w3lszzzzzzzzzz7zzzzzzzzzzzzzzzzz7zzzzzzzzzzzzzzzzz7zzzzzzzzzzzzzzzzz7zzzzzzzU"
        server_roblox_app_text_background :=
            "|<>*120$54.kzzzzzzzz4TzzzzzzzDzzzzzzzzDy78TS79VDwn1SQn1AVtvDCNvDDsPtDivtDDyM1Dgs1DVz/zDZvzDwTNzDptzDy6QnDlwnDAUy7Dny7DVU"
        server_roblox_app_text :=
            "|<>*120$54.kzzzzzzzzYTzzzzzzzDzzzzzzzzTy78TS79VDwn7SQn7AVtvDCtvDTwPtDivtDDzM1Dgs1DVzPzDZvzDwzNzDptzDy6QnDlwnDAky7Dny7DVU"
        server_arrow_roblox_app := "|<>*100$14.ztzzDzl00003zlzszyS"
        server_arrow_roblox_app_background := "|<>*100$14.ztzyDzl00003zlzszyS"
        join_server_vip_text := "|<>*150$25.wzwzyTzzzC787aNYHnSmRtD9CwrgbCtaHcS79o"
        ;Wait to leave
        while ((!FindText(&X, &Y, 12, 88, 804, 620, 0, 0, description_roblox_app_text)) && (!FindText(&X, &Y, 12, 88,
            804, 620, 0, 0, anime_vanguard_home_roblox_app_text)) && (!FindText(&X, &Y, 12, 88, 804, 620, 0, 0,
                server_roblox_app_text)) && !FindText(&X, &Y, 12, 88, 804, 620, 0, 0, server_roblox_app_text_background
        ) && !FindText(&X, &Y, 73, 251, 404, 321, 0, 0, recommended_roblox_app_text)) {
            Sleep(100)
        }

        ;Click close game if available
        moveToManualTarget(110, 35)

        ;Wait for Roblox home page
        while (!FindText(&X, &Y, 12, 88, 804, 620, 0, 0, description_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804,
            620, 0, 0, anime_vanguard_home_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804, 620, 0, 0,
                server_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804, 620, 0, 0, server_roblox_app_text_background) &&
        !FindText(&X, &Y, 73, 251, 404, 321, 0, 0, recommended_roblox_app_text)) {
            Sleep(100)
        }

        if FindText(&X, &Y, 73, 251, 404, 321, 0, 0, recommended_roblox_app_text) {
            moveToManualTarget(70, 220)
            loop 4 {
                Send("{WheelDown}")
                Sleep(150)
            }
        }

        ;Click on first countinue game
        moveToManualTarget(195, 385)

        ;Wait for load game page
        while (!FindText(&X, &Y, 12, 88, 804, 620, 0, 0, description_roblox_app_text) && !FindText(&X, &Y, 12, 88, 804,
            620, 0, 0, event_roblox_app_text)) {
            Sleep(100)
        }
        Sleep(250)
        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, roblox_server) {
            moveToManualTarget(90, 370)
            Send "{WheelDown}"
            Sleep(100)
        }
        Sleep(300)
        moveToManualTarget(FoundX, FoundY)

        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, roblox_join_ps) {
            Sleep(100)
        }
        moveToManualTarget(FoundX, FoundY)
        ; Wait until game loaded
        global FoundX, FoundY
        WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby) {
            Sleep(1000)
        }
        if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby)) {
            process_title.Text := "Reconnecting... (Waiting until join completely)"
            SetTimer , 0
            StartMacro()
        }
    }

}

AutoAbilities(*) {

    global FoundX, FoundY

    if (process_title.Text != "Playing macro..." && process_title.Text != "Checking your current gems..." &&
        process_title.Text != "Starting") {
        if (ImageSearch(&FoundX, &FoundY, 300, 240, 380, 320, auto_button)) {
            moveToManualTarget(320, 305)
        }
    }
}

ChangeAttackPriorityUnit(attack_priority_type) {
    global OX, OY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    while (!ImageSearch(&OX, &OY, 0, 0, W, H, attack_priority[attack_priority_type])) {
        Send "{R}"
        Sleep(250)
    }
}

startWebhook(*) {
    runTimes := IniRead(A_ScriptDir "\config.ini", "Config", "runTimes")
    runTimes += 1
    IniWrite runTimes, A_ScriptDir "\config.ini", "Config", "runTimes"
    runTimesShow.Text := runTimes + 1
    startGems := IniRead(A_ScriptDir "\config.ini", "Config", "startGems")
    farmGems := IniRead(A_ScriptDir "\config.ini", "Config", "farmGems")
    currentGems := IniRead(A_ScriptDir "\config.ini", "Config", "currentGems")
    cmd := 'curl -X POST -F "payload_json={\"content\":\"' "``[Run Times]: " runTimes "``\n``[Start Gems]: " startGems "``\n``[Farm Gems]: " farmGems "``\n``[Current Gems]: " currentGems "``" '\"}" -F "file1=@' A_ScriptDir '\ext\latest_win.png" ' webhook
    CaptureScreen("0, 0, 1280, 720", 0, A_ScriptDir . "\ext\latest_win.png")
    Sleep(500)
    RunWait('cmd.exe /c ' . '"' . cmd . '"', , "Hide")
}

startWebhookNoRunTimesPlus(*) {
    runTimes := IniRead(A_ScriptDir "\config.ini", "Config", "runTimes")
    startGems := IniRead(A_ScriptDir "\config.ini", "Config", "startGems")
    farmGems := IniRead(A_ScriptDir "\config.ini", "Config", "farmGems")
    currentGems := IniRead(A_ScriptDir "\config.ini", "Config", "currentGems")
    cmd := 'curl -X POST -F "payload_json={\"content\":\"' "``[Run Times]: " runTimes "``\n``[Start Gems]: " startGems "``\n``[Farm Gems]: " farmGems "``\n``[Current Gems]: " currentGems "``" '\"}" -F "file1=@' A_ScriptDir '\ext\latest_win.png" ' webhook
    CaptureScreen("0, 0, 1280, 720", 0, A_ScriptDir . "\ext\latest_win.png")
    Sleep(500)
    RunWait('cmd.exe /c ' . '"' . cmd . '"', , "Hide")
}

testWebhook(*) {
    process_title.Text := "Sending Test Webhook..."
    startWebhookNoRunTimesPlus
    process_title.Text := "Complete"
    Sleep(500)
    process_title.Text := "Waiting for start..."
}

global farmGems := 0

checkingDrop(*) {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
    global farmGems

    try {
        if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, gems) {
            moveToManualTarget(FoundX, FoundY)
        }
        Sleep(1000)
        ImageSearch(&FX, &FY, 0, 0, W, H, gems_pos)

        FX += 60
        FY -= 5
        XEnd := FY + 142
        YEnd := FX + 30
        Sleep(300)

        CaptureScreen(FX ", " FY ", " XEnd ", " YEnd, 0, A_ScriptDir . "\ext\checking_gems.png")
        ; --whitelist "x1234567890,.:()"
        cmd := '"' . A_ScriptDir . '\ext\capture2text\Capture2Text_CLI.exe" -i "' . A_ScriptDir .
            '\ext\checking_gems.png" -o "' . A_ScriptDir . '\ext\result.txt"'
        RunWait('cmd.exe /c ' . '"' . cmd . '"', , "Hide")

        string_gems := FileRead(A_ScriptDir . "\ext\result.txt")
        string_gems := RegExReplace(string_gems, "^\s+|\s+$", "")
        non_string_gems := ""
        for v in StrSplit(string_gems, "") {
            if InStr("1234567890", v) {
                non_string_gems .= v
            }
        }

        farmGems += non_string_gems
        IniWrite farmGems, A_ScriptDir "\config.ini", "Config", "farmGems"
        farmGemsShow.Text := farmGems

        startGems := IniRead(A_ScriptDir "\config.ini", "Config", "startGems")
        currentGems := startGems + farmGems
        IniWrite currentGems, A_ScriptDir "\config.ini", "Config", "currentGems"
        currentGemsShow.Text := currentGems
    }

    ;try {
    ;    if ImageSearch(&FoundX, &FoundY, 0, 0, W, H, gems1100) {
    ;        moveToManualTarget(FoundX, FoundY)
    ;    }
    ;    Sleep(1000)
    ;    ImageSearch(&FoundX, &FoundY, 125, 310, 520, 450, getpos_check_inv_1100)
    ;    ImageSearch(&FoundX, &FoundY, 125, 310, 520, 450, getpos_check_inv_1100)
    ;
    ;    FoundX += 33
    ;    FoundY += 27
    ;    XEnd := FoundX + 80
    ;    YEnd := FoundY + 16
    ;    Sleep(300)
    ;
    ;    CaptureScreen(FoundX ", " FoundY ", " XEnd ", " YEnd, 0, A_ScriptDir . "\ext\checking_gems.png")
    ;    ; --whitelist "x1234567890,.:()"
    ;    cmd := '"' . A_ScriptDir . '\ext\capture2text\Capture2Text_CLI.exe"  -i "' . A_ScriptDir . '\ext\checking_gems.png" -o "' . A_ScriptDir . '\ext\result.txt"'
    ;    RunWait('cmd.exe /c ' . '"' . cmd . '"', , "Hide")
    ;
    ;    string_gems := FileRead(A_ScriptDir . "\ext\result.txt")
    ;    string_gems := RegExReplace(string_gems, "^\s+|\s+$", "")
    ;    non_string_gems := ""
    ;    for v in StrSplit(string_gems, ""){
    ;        if InStr("1234567890", v) {
    ;            non_string_gems .= v
    ;        }
    ;    }
    ;
    ;    currentGems := non_string_gems
    ;    IniWrite currentGems, A_ScriptDir "\config.ini", "Config", "currentGems"
    ;    currentGemsShow.Text := currentGems
    ;
    ;    startGems := IniRead(A_ScriptDir "\config.ini", "Config", "startGems")
    ;    farmGems := IniRead(A_ScriptDir "\config.ini", "Config", "farmGems")
    ;    farmGems := currentGems - startGems
    ;    IniWrite farmGems, A_ScriptDir "\config.ini", "Config", "farmGems"
    ;    farmGemsShow.Text := farmGems
    ;}

}

FileReadLine(file_to_read, line_number) {
    file_object := FileOpen(file_to_read, "r")
    loop line_number
        line_text := file_object.ReadLine()
    file_object.Close
    return line_text
}

GetWaveText(wave_number) {
    wave_text := Map()
    wave_text["1"] := "|<>*170$7.zyyC631swSD7Xlxzs"
    wave_text["2"] := "|<>*175$10.zzVw3U6SNtz7sy7kS0s1U7zs"
    wave_text["3"] := "|<>*175$9.zy7UQFiDVsDVy9t0A3kzzU"
    wave_text["4"] := "|<>*150$13.zzzzzCTaDX7lXslwMw0S0Dz7zXzlzwzzzzy"
    wave_text["5"] := "|<>*175$8.zw70Vsy7UM3sy821kzy"
    wave_text["6"] := "|<>*150$14.zzzzzzzzlzkTs7wDz7zkDw1z4DnXwFz0TsDzzzzzzzzzs"
    wave_text["7"] := "|<>*150$13.zzzzzzz0T07k3zXzlzlzlzszszwTyDz7zzzzzzzU"
    wave_text["8"] := "|<>*150$13.zzzzzzzkzUDl3slw1y0z0TX7nXs1w1z1zzzzzzzU"
    wave_text["9"] := "|<>*150$13.zzzzzzzUzUDl7tlwEy0TUTyDy7s7w7y7zzzzz"
    wave_text["10"] := "|<>*175$17.zzzvsTXUS70MAQsNtsnnlbbXDD6ASC0wQ3xwDzzy"
    wave_text["11"] := "|<>*175$14.xyyD73VUkQC7XlsySDbXtsySDbrvzzs"
    wave_text["12"] := "|<>*175$17.zzzvsTXUS60MAssNlszXlyDXkz71yA1wM1xs3zzy"
    wave_text["13"] := "|<>*175$16.zzzjVwQ3Vl47wMTVlw77sQTllrb64QQ3vsTzzs"
    wave_text["14"] := "|<>*175$17.zzzvvzXbC7AMCMsMlslXlU7X0D7wSDswTtxzrzzy"
    wave_text["15"] := "|<>*175$16.zzzrUyC1kky37wADskDXUSDlsz7XUSA3xsTzzs"
    wave_text["16"] := "|<>*175$15.zzzTllsAC31lwATlUSA1lXCAMlWCC1vsTzzU"
    wave_text["17"] := "|<>*175$16.zzzj0wM1Vw47ssTXlwT7nwSDltz7bwSTvvzzzs"
    wave_text["18"] := "|<>*175$16.zzzjVwQ3VWA6AMQ3lkD60wMllX76AQQ3vsTzzs"
    wave_text["19"] := "|<>*175$17.zzzvsTXUS68sAssMVss3lsDXwT7syC3wMDxtzzzy"
    wave_text["20"] := "|<>*175$21.zzzz3wDkD0w0k3b6CQwnnz6STlnnsSSS3lXUC0Q0s7U7VzzzzU"
    wave_text["21"] := "|<>*175$18.zzzsTrkDXU73b63ba3z7XyDXsTXkTXUDXU7XU7rzzzU"
    wave_text["22"] := "|<>*175$20.zzzy7sT0w3U60NlbaSNtz7wTXyDVy7kT1s3UC0M1U60Tzzy"
    wave_text["23"] := "|<>*175$20.zzzy7sT0w3U74Nlr6STVz7kTXy7VzlkSSM3U60Q1U7Vzzzy"
    wave_text["24"] := "|<>*175$21.zzzz3xzkDCQ0tnb6CQwlnz6ATlk3sS0S3zXUDyQ0znU7zzzzzU"
    wave_text["25"] := "|<>*175$19.zzzwDUw3UA0kyQMzDADz61z70S7yC3z60s30A3U73zzzs"
    wave_text["26"] := "|<>*175$20.zzzy7yT0y3U71tllySMzz61zXUDVsXkSAM3UC0Q3U7Vzzzy"
    wave_text["27"] := "|<>*175$20.zzzy7UD0s1U7kNtyCSTXz7lzXwzVyDkTbs3ly0QTU7jzzzy"
    wave_text["28"] := "|<>*175$20.zzzy7sT0w3U60tlX6SM3z70zXUDVslkSAM3U60Q3U7Vzzzy"
    wave_text["29"] := "|<>*175$19.zzzwDlw3kA0l6QNlDAEz70T7kS7yC3z60w70A7U6Dzzzs"
    wave_text["30"] := "|<>*175$21.zzzz3wDkD0y8k3r6CTknnw6STknnz6SQwlXU60S1s7sTVzzzzU"
    wave_text["31"] := "|<>*175$17.zzzkzj0yC8sRlUz31w7XwD7wSAwwM1ss3lsTrzzy"
    wave_text["32"] := "|<>*175$19.zzzsTVs7UQFU6snnsNtsDsy7szXkttkQ0k70M1kw0zzzs"
    wave_text["33"] := "|<>*175$20.zzzwDky1s7WC8vXiDkz3sDUz3wDszXDAwk30C1s3kz3zzzy"
    wave_text["34"] := "|<>*170$19.zzzsTDs7bA1naslnsMtsAMy60TX09tz40zX0Ttkzxzzzs"
    wave_text["35"] := "|<>*170$18.zzzky3UQ1UA7iATwADsA3wA1yDlDDl0A1UA3ky7U"
    wave_text["36"] := "|<>*170$18.zzzkznUT1UC3iCDwATsA3wA1yAFDAM0A1UC1kz3zzzU"
    wave_text["37"] := "|<>*170$20.zzzy7UD0s1k70RlyDsTXw7lzVwTwSDbbbs1lz0QTsTjzzzy"
    wave_text["38"] := "|<>*170$18.kz3US1UA1iAMwA1sC1wA0yAMDAM0A0UC1kz3U"
    wave_text["39"] := "|<>*170$18.zzzkz3US1UAFiAswAEsC0wD1yDlDDV0C3UA7kwTzzzU"
    wave_text["40"] := "|<>*170$19.zzzxzVwtUSQU6C1n61tX0wk0SM0DDs37wE3zA3zj3zzzs"
    wave_text["41"] := "|<>*170$16.zzzjywtlna6C0Mk1X760QM1lz77wQTtlzjjzzs"
    wave_text["42"] := "|<>*170$20.zzzyzkzCM7nU0ssCCA3XX7ss1wS0Q7z63zk0Ty03zg0zzzy"
    wave_text["43"] := "|<>*170$19.zzzxzVwtUSQV6CPX6DVX7Uk3sM1yDs7bw03zA1zj3zzzs"
    wave_text["44"] := "|<>*170$19.zzzxzjwtbCQn6CFX60lX0Mk00M00Dsz7wTXzDtzjxk"
    wave_text["45"] := "|<>*170$18.zzzvy3nY1nY7XUTX0DX03U01U7lz7lz01zU3zi7U"
    wave_text["46"] := "|<>*170$19.zzzxzswtkSQkSCMz60zX03k00s04Ts37w17zA3zj3zzzs"
    wave_text["47"] := "|<>*170$19.zzzzzzyz0SQ07C836DXX7llXls1sw0szwQzyATzaDzrjzzzw"
    wave_text["48"] := "|<>*170$17.zzzjwCQkAt01kA3416820E0037k6DU0Ta1zS7zzy"
    wave_text["49"] := "|<>*170$17.ry7CE6Q28sC1U83600C00T7syDlUzm3zgTzzz"
    wave_text["50"] := "|<>*170$17.zzz1sS1UMC0FwQUtt0nm07bkDDUAE40UQ3VwDzzy"
    wave_text["51"] := "|<>*170$15.zzy3vkCA7VXsA7VUSA1lyCDllUCA3lkzDzzU"
    wave_text["52"] := "|<>*170$18.zzzkS7kA3Us1XtlVtlUTlUDXyC3yA7U03U81ks1zzzU"
    wave_text["53"] := "|<>*170$18.kS7kA3UwFXxlVzVUT1UDVyDly1tU01UQ1ky7U"

    return wave_text[wave_number]
}

;LeaveOnWave_Feature(*) {
;    if (FindText(&X, &Y, 195, 41, 311, 70, 0, 0, WaveText)) {
;
;		CaptureScreen("0, 0, 1280, 720", 0, A_ScriptDir . "\ext\latest_win.png")
;        runTimes := IniRead(A_ScriptDir "\config.ini", "Config", "runTimes")
;        runTimes += 1
;        IniWrite runTimes, A_ScriptDir "\config.ini", "Config", "runTimes"
;        runTimes += 1
;        runTimesShow.Text := runTimes
;
;		process_title.Text := "Returning to Lobby..."
;
;		global FoundX, FoundY
;		WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
;
;        ;Return to lobby button on end screen
;        moveToManualTarget(610, 420)
;        Sleep(1000)
;
;        ;Settings button
;        moveToManualTarget(20, 575)
;        Sleep(1000)
;
;        ;Teleport to Lobby
;        moveToManualTarget(515, 245)
;        Sleep(1000)
;
;        ;Yes button on teleport screen
;        moveToManualTarget(345, 310)
;        Sleep(2000)
;
;		while (!ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby)) {
;			Sleep(300)
;		}
;
;
;        ;if scheduleMode == "Off" {
;        ;    PlayMacro()
;        ;}
;    }
;}
;
ChangeToMacroSettings(*) {
    cmd := '"' . A_ScriptDir . '\ext\sf_wext.exe" > "' . A_ScriptDir . '\ext\your_windows_settings.txt"'
    if !FileExist(A_ScriptDir . "\ext\your_windows_settings.txt") {
        RunWait("cmd.exe /c " . '"' . cmd . '"', , "Hide")
    }
    RunWait('"' . A_ScriptDir . '/ext/cs_wext.exe" 100', , "Hide")
    RunWait('"' . A_ScriptDir . '/ext/nircmd.exe" setdisplay 1280 720 32 60', , "Hide")
    MsgBox(
        "This only change your windows settings, you need to change your Roblox and Anime Reborn settings manually.",
        "Success!")
}

ReturnWindowsSettings(*) {
    if !FileExist(A_ScriptDir . "\ext\your_windows_settings.txt") {
        MsgBox("Something wrong! App can not return your windows settings. Try to do that manually", "Error!")
    } else {
        ReadSettingsFile := FileRead(A_ScriptDir . "\ext\your_windows_settings.txt")
        SettingsValue := StrSplit(ReadSettingsFile, ",")
        RunWait('"' . A_ScriptDir . '/ext/cs_wext.exe" ' . SettingsValue[3], , "Hide")
        change_cmd := '"' . A_ScriptDir . '/ext/nircmd.exe" setdisplay ' . SettingsValue[1] . ' ' . SettingsValue[2] .
            ' 32 ' . SettingsValue[4]
        RunWait("cmd.exe /c " . '"' . change_cmd . '"', , "Hide")
        FileDelete(A_ScriptDir . "\ext\your_windows_settings.txt")
        MsgBox("Your windows settings has been returned.", "Success!")
    }
}

autoChangeSettings(*) {
    process_title.Text := "Checking settings..."

    ;Open Roblox Settings
    Send "{Escape}"
    Sleep(500)
    moveToManualTarget(250, 85)
    Sleep(500)

    roblox60fps_text := "|<>*75$46.twDw10wDbUTkA1UQyQzDnaTVnnwzCNy1DDkAtUtYwz0k7VD3nwz1zUwbDnwzj861zDny1kwDwzDwC"
    if !FindText(&X, &Y, 332, 339, 492, 376, 0, 0, roblox60fps_text) {
        moveToManualTarget(535, 320)
        Sleep(350)
        moveToManualTarget(400, 275)
    }
    moveToManualTarget(25, 160)
    loop (2) {
        Send "{WheelDown}"
        Sleep(100)
    }
    Sleep(200)

    ;Change Camera Sensitivity
    moveToManualTarget(385, 345)
    moveToManualTarget(340, 345)

    moveToManualTarget(40, 430)
    Sleep(500)
    loop (2) {
        Send "{WheelDown}"
        Sleep(100)
    }

    Sleep(200)
    robloxGraphicsManual_text :=
        "|<>*78$46.DnzzzzzsTDzzzzzZwsx7jQSLfRnixitijvSvrxausBvjQ6PPSrixjNphvSvqxb6rBvaPaQvarj5nO"
    if (!FindText(&X, &Y, 505, 151, 637, 484, 0, 0, robloxGraphicsManual_text)) {
        moveToManualTarget(X + 30, Y - 40)
    }

    Sleep(200)
    Send("{Escape}")
    Sleep(500)

    Send "{Shift Down}"
    loop (10) {
        Send "{F10}"
        Sleep(50)
    }
    Send "{Shift Up}"
    Sleep(500)

    ;Click Settings
    moveToManualTarget(15, 565)
    Sleep(200)

    ;Click Settings Zone
    moveToManualTarget(178, 215)
    top_of_settings_volume_text :=
        "|<>*125$101.zzzbzzzzzzzzzzzzyDXzDzzzzzDlzzwzzwT7yTzzzzyD3zzlzzwQSwzzzzjwA7zzXxzsskNa80Q7sMA221UkMX0HAE0kDk0E4Y21Ul4MaMYN6DY868QMlDkMtAlAm0zAkAEMk6TUsWM2NaTyTW0wtnwzXkAE4nA3wz401kUNzjksk9aQ7tyQ23lUnk"
    if (!FindText(&X, &Y, 159, 157, 386, 481, 0, 0, top_of_settings_volume_text)) {
        loop (5) {
            Send "{WheelUp}"
            Sleep(100)
        }
    }
    Sleep(200)
    loop (1) {
        Send "{Wheeldown}"
        Sleep(100)
    }

    OffSettings_Text := "|<>*150$22.zzzztyAS1sVk36TD80Mw01Xl6CD4NwMlbk36TkyNzzzzU"
    ;Turn On Low GFX Mode
    Sleep(200)
    if FindText(&X, &Y, 518, 372, 629, 412, 0, 0, OffSettings_Text) {
        moveToManualTarget(565, 355)
        Sleep(200)
    }

    ;Turn On Wave auto skip
    Sleep(200)
    if FindText(&X, &Y, 518, 319, 620, 355, 0, 0, OffSettings_Text) {
        moveToManualTarget(565, 305)
        Sleep(200)
    }

    loop (2) {
        Send "{Wheeldown}"
        Sleep(100)
    }

    ;Move to avoid the Off button more bigger
    moveToManualTarget(180, 260)

    ;Turn Off Unit VFX
    Sleep(200)
    if !FindText(&X, &Y, 519, 248, 617, 282, 0, 0, OffSettings_Text) {
        moveToManualTarget(565, 410)
        Sleep(200)
    }

    ;Turn Off Status Effects VFX
    Sleep(200)
    if !FindText(&X, &Y, 520, 302, 618, 338, 0, 0, OffSettings_Text) {
        moveToManualTarget(565, 310)
        Sleep(300)
    }

    ;Move to avoid the Off button more bigger
    moveToManualTarget(180, 260)

    loop (1) {
        Send "{Wheeldown}"
        Sleep(100)
    }

    ;Turn Off Damage Indicator
    Sleep(200)
    if !FindText(&X, &Y, 519, 261, 620, 295, 0, 0, OffSettings_Text) {
        moveToManualTarget(565, 415)
        Sleep(300)
    }

    ;Turn On Performant Windows
    Sleep(200)
    if FindText(&X, &Y, 521, 316, 617, 348, 0, 0, OffSettings_Text) {
        moveToManualTarget(565, 415)
        Sleep(300)
    }

    process_title.Text := "Correct settings..."

    Sleep(300)
    ; Click Close Settings
    moveToManualTarget(640, 150)
}

movePlayBox() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    ;Click Areas Button
    moveToManualTarget(83, 337)
    Sleep(1000)

    ;Click Play button
    moveToManualTarget(500, 240)
    Sleep(500)

    Send("{Shift}")
    loop 3 {
        Send "{A down}"
        Sleep(100)
        Send "{A up}"
    }
    while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, selection_ui) {
        Send "{S down}"
        Sleep(300)
        Send "{S up}"
    }
}

moveRaidBox() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    ;Click Areas Button
    moveToManualTarget(83, 337)
    Sleep(1000)

    ;Click Raid button
    moveToManualTarget(300, 325)
    Sleep(700)

    Send "{S down}"
    Sleep(2250)
    Send "{S up}"

    while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, selection_ui) {
        Send "{A down}"
        Sleep(300)
        Send "{A up}"
    }
}

moveAdventureBox() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")

    ;Click Areas Button
    moveToManualTarget(83, 337)
    Sleep(1000)

    ;Click Adventure button
    moveToManualTarget(300, 400)
    Sleep(500)

    Send("{Shift}")

    Send("{W Down}")
    Sleep(1600)
    Send("{W up}")
    Sleep(100)

    start_button_show := 0
    while (!ImageSearch(&FoundX, &FoundY, 0, 0, W, H, start_button) || start_button_show > 15) {
        Send "{A down}"
        Sleep(300)
        Send "{A up}"
        start_button_show += 1
    }
}

clickRetryButton() {
    global FoundX, FoundY
    WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
    
    if (Act.Text == "Portal") {
        while !ImageSearch(&FoundX, &FoundY, 0, 0, W, H, main_lobby) {
            moveToManualTarget(308, 441)
            Sleep(1000)
        }
        starting_christmas_portal
    }
    else {
        while ImageSearch(&FoundX, &FoundY, 0, 0, W, H, ending_ui) {
            moveToManualTarget(308, 441)
            Sleep(1000)
        }
    }
    
}