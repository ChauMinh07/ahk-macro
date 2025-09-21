#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 4

;Load this first
#Include source_code\load_configs.ahk
#Include source_code\img.ahk
#Include source_code\functions.ahk

;Game Macro
#Include source_code\game\west_city_place_pos.ahk
#Include source_code\game\west_city_inf.ahk
#Include source_code\game\west_city_ls_1.ahk
#Include source_code\game\west_city_ls_2.ahk
#Include source_code\game\fujisima_ls_3.ahk
#Include source_code\game\clover_kingdom_ls_1_3.ahk
#Include source_code\game\raid_ancient_dungeon.ahk
#Include source_code\game\adventure_red_army.ahk
;#Include source_code\game\adventure_winter_mayhem.ahk
#Include source_code\game\christmas_portal.ahk

;Lib/Main
#Include source_code\hf.ahk
#Include source_code\ftv2.ahk
#Include source_code\cs_lib.ahk
#Include source_code\jsonconvert_lib.ahk
#Include source_code\license.ahk
#Include source_code\main.ahk
#include source_code\BcryptHash_ahk2.ahk

global version := "v1.4.0"
global HWID := "Something wrong!"
;MainSN := ""
;HWID := "If you see this, your computer have problem with WINMGMT,`nso app.exe can not geting your HWID`n`nTo testing:`n1. Open Command Prompt as administrator`n2. Type 'winmgmt /verifyrepository'"
;try {
;    objWMIService := ComObjGet("winmgmts:\\.\root\cimv2")
;    colItems := objWMIService.ExecQuery("SELECT UUID FROM Win32_ComputerSystemProduct")
;    for item in colItems {
;        MainSN := item.UUID
;        break
;    }
;    CPUSN := ComObjGet("winmgmts:").ExecQuery("SELECT ProcessorId FROM Win32_Processor").ItemIndex(0).ProcessorId
;    HWID_unhash := MainSN . CPUSN
;    HWID := hash(&HWID_unhash)
;}

!F1:: {
    MouseGetPos(&x, &y)
    ;;moveToManualTarget(234,487)
    MsgBox(Format("X: {}  &  Y: {}", X, Y))

;
    ;;reConnect
;
    ;;loop 10 {
    ;;    Send "{WheelDown}"
    ;;    Sleep(100)
    ;;}
;
;
    ;;fujisima_ls_3_config
    ;;fujisima_ls_3_duringGame
;
    ;WinGetPos(&X, &Y, &W, &H, "ahk_exe RobloxPlayerBeta.exe")
    ;if (ImageSearch(&FoundX, &FoundY, 0, 0, W, H, wave_15_clover_kingdom)) {
    ;    MsgBox("Found")
    ;} else {
    ;    MsgBox("Not Found")
    ;}

    ;;Zoom In
    ;Sleep(100)
    ;MouseMove(400, 300, 5)
    ;Sleep(1000)
    ;Click()
    ;Sleep(100)
    ;MouseMove(0, -10, 0, "R")
    ;loop (10) {
    ;    Send "{Wheelup}"
    ;    Sleep(100)
    ;}
    ;
    ;;Zoom Out
    ;MouseMove(0, 0, 0, "R")
    ;loop (30) {
    ;    Send "{Wheeldown}"
    ;    Sleep(100)
    ;}
}

if (installRequire != 1) {
    checkingInstallGUI := Gui()
    checkingInstallGUI.Add("Text", "x10 y10 w200 h20 +0x2000", "Checking install dependencies...")
    checkingInstallGUI.Show("w200 h30")
    RunWait("ext\VC_redist.x64.exe /quiet InstallAllUsers=0 PrependPath=1 Include_test=0")
    checkingInstallGUI.Destroy()

    IniWrite 1, A_ScriptDir "\config.ini", "Config", "installRequire"
    MsgBox("Please re-open app.exe", "Success!")

    ExitApp
} else {
    if (license != "") {
        if reCheckLicense(license) {
            try {
                reCheckLicense_UI.Destroy()
            }

            AfterGUI()
        } else {
            try {
                reCheckLicense_UI.Destroy()
            }
            MsgBox("Failed Checked Your Old License. Type new one!")
            IniWrite "", A_ScriptDir "\config.ini", "Config", "license"
            validation := Gui()

            validation.Add("Text", "x12 y10 w100 h16 +0x200", "Enter your Key")
            validation.Add("Link", "x330 y10 w180 h16 +Left +0x200",
                "<a href=`"https://bit.ly/raindc`">Join Discord</a>")
            License_Input := validation.Add("Edit", "x10 y30 w380 h24 +0x200", "")
            CheckButton := validation.Add("Button", "x10 y60 w285 h24 +Center +0x200", "Check")
            HWIDButton := validation.Add("Button", "x295 y60 w95 h24 +Center +0x200", "Get Key")
            ;CloseButton := validation.Add("Button", "x330 y60 w60 h24 +Center +0x200", "Close")
            CheckButton.Focus()
            validation.Show("w400 h90")

            HWIDButton.OnEvent("Click", MsgBoxHWID)
            CheckButton.OnEvent("Click", verification)
            ;CloseButton.OnEvent("Click", ExitMacro)
            validation.OnEvent('Close', (*) => ExitApp())
        }
    } else {
        validation := Gui()

        validation.Add("Text", "x12 y10 w100 h16 +0x200", "Enter your Key")
        validation.Add("Link", "x330 y10 w180 h16 +Left +0x200",
            "<a href=`"https://bit.ly/raindc`">Join Discord</a>")
        License_Input := validation.Add("Edit", "x10 y30 w380 h24 +0x200", "")
        CheckButton := validation.Add("Button", "x10 y60 w285 h24 +Center +0x200", "Check")
        HWIDButton := validation.Add("Button", "x295 y60 w95 h24 +Center +0x200", "Get Key")
        ;CloseButton := validation.Add("Button", "x330 y60 w60 h24 +Center +0x200", "Close")
        CheckButton.Focus()
        validation.Show("w400 h90")

        HWIDButton.OnEvent("Click", MsgBoxHWID)
        CheckButton.OnEvent("Click", verification)
        ;CloseButton.OnEvent("Click", ExitMacro)
        validation.OnEvent('Close', (*) => ExitApp())
    }
}

; CAN EDIT BELOW

AfterGUI() {

    myGui := Constructor()
    myGui.Show("w600 h400")
    WinMove(670, 245, , , myGui)

    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        WinActivate("ahk_exe RobloxPlayerBeta.exe")
        if (WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            WinMove(0, 0, 816, 638, "ahk_exe RobloxPlayerBeta.exe")
            ;WinMove(0, 0, 1120, 638, "ahk_exe RobloxPlayerBeta.exe")
        }
    }
    WinActivate(myGui)
}

Constructor() {
    IniWrite 0, A_ScriptDir "/config.ini", "Config", "loadConfig"

    global myGui := Gui()
    global Tab := myGui.Add("Tab3", "x0 y0 w622 h423", ["Main", 'Read Me To Change Your Settings'
    ])

    ;Make sure change to Macro Settings
    Tab.UseTab(2)
    myGui.Add("GroupBox", "x8 y24 w260 h69", "Windows")
    myGui.Add("Text", "x148 y33 w115 h16 +0x200", "Resolution => 1280x720")
    myGui.Add("Text", "x192 y50 w75 h16 +0x200", "Scale => 100%")
    myGui.Add("Text", "x77 y70 w190 h16 +0x200", "Default Screen Color (Not Theme Color)")

    myGui.Add("GroupBox", "x8 y99 w260 h153", "Roblox")
    myGui.Add("Text", "x93 y110 w170 h16 +0x200", "Turn off Beta in your Roblox Privacy")
    myGui.Add("Text", "x108 y130 w156 h16 +0x200", "Experience Language => English")
    myGui.Add("Text", "x112 y150 w154 h16 +0x200", "Maximum Frame Rate => 60 fps")
    myGui.Add("Text", "x142 y170 w120 h16 +0x200", "Camera Sensitivity => 0.2")
    myGui.Add("Text", "x104 y190 w161 h16 +0x200", "Manual Graphics Quality => 1/10")
    myGui.Add("Text", "x142 y210 w120 h16 +0x200", "Performance Stats => Off")
    myGui.Add("Text", "x151 y230 w116 h16 +0x200", "Camera Inverted => Off")

    myGui.Add("GroupBox", "x8 y258 w260 h81", "Anime Reborn")
    myGui.Add("Text", "x1 y270 w262 h23 +0x200 +Right +BackgroundTrans", "Low GFX mode, Wave auto skip are ON")
    myGui.Add("Text", "x1 y290 w262 h23 +0x200 +Right +BackgroundTrans", "All VFX, Damage Indicator are OFF")
    ;myGui.Add("Text", "x148 y310 w115 h23 +0x200", "Unequip your cosmetics")

    myGui.Add("GroupBox", "x272 y24 w320 h229", "Unit")
    global Slot1 := myGui.Add("Text", "x280 y40 w300 h16 +0x200 +cNavy +BackgroundTrans", "")
    global Slot2 := myGui.Add("Text", "x280 y57 w300 h16 +0x200 +cNavy +BackgroundTrans",
        "         Please select Act if you want to see the Units options.")
    global Slot3 := myGui.Add("Text", "x280 y74 w300 h16 +0x200 +cNavy +BackgroundTrans", "")
    global Slot4 := myGui.Add("Text", "x280 y91 w300 h16 +0x200 +cNavy +BackgroundTrans", "")
    global Slot5 := myGui.Add("Text", "x280 y108 w300 h16 +0x200 +cNavy +BackgroundTrans", "")
    global Slot6 := myGui.Add("Text", "x280 y125 w300 h16 +0x200 +cNavy +BackgroundTrans", "")

    global descriptionUnit1 := myGui.Add("Text", "x280 y160 w300 h16 +cPurple +0x200 +BackgroundTrans", "")
    global descriptionUnit2 := myGui.Add("Text", "x280 y178 w300 h16 +cPurple +0x200 +BackgroundTrans", "")
    global descriptionUnit3 := myGui.Add("Text", "x280 y196 w300 h16 +cPurple +0x200 +BackgroundTrans", "")
    global descriptionUnit4 := myGui.Add("Text", "x280 y214 w300 h16 +cPurple +0x200 +BackgroundTrans", "")
    global descriptionUnit5 := myGui.Add("Text", "x280 y232 w300 h16 +cPurple +0x200 +BackgroundTrans", "")

    ; Cant
    global descriptionUnit6 := myGui.Add("Text", "x280 y260 w300 h16 +0x200 +BackgroundTrans", "")
    global descriptionUnit7 := myGui.Add("Text", "x280 y300 w300 h16 +0x200 +BackgroundTrans", "")
    global descriptionUnit8 := myGui.Add("Text", "x280 y320 w300 h16 +0x200 +BackgroundTrans", "")

    myGui.Add("GroupBox", "x272 y258 w320 h81", "Auto Change Settings")
    myGui.Add("Text", "x280 y270 w300 h23 +0x200 +BackgroundTrans", "If you turn this feature to on, you only need to")
    myGui.Add("Text", "x280 y290 w300 h23 +0x200 +BackgroundTrans", "change Windows and turn off Beta Roblox.")
    myGui.Add("Text", "x280 y310 w300 h23 +0x200 +BackgroundTrans", "Everything else will be automatically changed.")
    myGui.SetFont("s22")
    global autoChangeSettingsBox := myGui.Add("DropDownList", "x505 y280 w80 h150 +0x200 ", ["OFF", "ON"])
    autoChangeSettingsBox.Text := autoChangeSettingsMode
    autoChangeSettingsBox.OnEvent("Change", saveConfig)
    myGui.SetFont("s8")

    global ChangeToMacroSettings_BUTTON := myGui.Add("Button", "x30 y345 w275 h50 +Center +0x200",
        "CHANGE YOUR WINDOWS SETTINGS")
    ChangeToMacroSettings_BUTTON.OnEvent("Click", ChangeToMacroSettings)
    global ReturnSettings_BUTTON := myGui.Add("Button", "x310 y345 w255 h50 +Center +0x200",
        "RETURN TO YOUR OLD WINDOWS SETTINGS")
    ReturnSettings_BUTTON.OnEvent("Click", ReturnWindowsSettings)

    Tab.UseTab(1)

    ;Play box
    myGui.Add("GroupBox", "x8 y32 w583 h61", "Play")
    global Mode := myGui.Add("DropDownList", "x64 y56 w120", ["Story", "Raid", "Adventure"])
    global MapMode := myGui.Add("DropDownList", "x256 y56 w120")
    global Act := myGui.Add("DropDownList", "x448 y56 w120")

    ;if you wanna change Map or Act list, go main.ahk file and search GetMaps, GetActs

    Mode.Text := currentMode

    Tab.UseTab(1)

    MapMode.OnEvent("Change", GetActs)
    MapMode.OnEvent("Change", GetActTip)
    Mode.OnEvent("Change", GetMaps)
    Mode.OnEvent("Change", GetActTip)
    Act.OnEvent("Change", GetActTip)

    myGui.Add("Text", "x32 y56 w30 h23 +0x200 +BackgroundTrans", "Mode")
    myGui.Add("Text", "x232 y56 w22 h23 +0x200", "Map")
    myGui.Add("Text", "x424 y56 w22 h23 +0x200", "Act")

    ;Hotkeys box
    myGui.Add("GroupBox", "x440 y96 w150 h145", "Hotkeys")
    myGui.Add("Text", "x448 y120 w24 h18 +0x200", "Start")
    myGui.SetFont("s8 Norm", "Ms Shell Dlg")
    myGui.Add("Text", "x448 y150 w24 h18 +0x200", "Stop")
    myGui.SetFont("s8", "Trebuchet MS")
    myGui.Add("Text", "x448 y180 w48 h18 +0x200", "Resize RB")
    myGui.SetFont("s8", "Ms Shell Dlg")
    myGui.SetFont("s8", "Ms Shell Dlg")
    myGui.Add("Text", "x448 y210 w48 h18 +0x200", "Auto Click")
    myGui.SetFont("s8", "Ms Shell Dlg")
    myGui.SetFont("s8", "Ms Shell Dlg")

    global startHotkeyValue := myGui.Add("Hotkey", "x504 y117 w80 h20 vstartHotkey", startHotkey)
    global stopHotkeyValue := myGui.Add("Hotkey", "x504 y147 w80 h20 vstopHotkey", stopHotkey)
    global ResizeHotkeyValue := myGui.Add("Hotkey", "x504 y177 w80 h20 vResizeHotkey", ResizeHotkey)
    global AutoClickHotkeyValue := myGui.Add("Hotkey", "x504 y207 w80 h20 vAutoClickHotkey", AutoClickHotkey)

    startHotkeyValue.OnEvent('Change', saveHotkeyValues.Bind("startHotkey", "Change"))
    stopHotkeyValue.OnEvent('Change', saveHotkeyValues.Bind("stopHotkey", "Change"))
    ResizeHotkeyValue.OnEvent('Change', saveHotkeyValues.Bind("ResizeHotkey", "Change"))
    AutoClickHotkeyValue.OnEvent('Change', saveHotkeyValues.Bind("AutoClickHotkey", "Change"))

    ;Stats box
    myGui.Add("GroupBox", "x440 y243 w150 h106", "Stats")
    myGui.SetFont("s7")
    global statsTurnBox := myGui.Add("DropDownList", "x545 y243 w40 h100", ["On", "Off"])
    statsTurnBox.OnEvent("Change", saveConfig)
    statsTurnBox.Text := statsMode
    myGui.SetFont("s8")
    myGui.Add("Text", "x448 y263 w150 h18 +0x200 +BackgroundTrans", "Run:")
    global runTimesShow := myGui.Add("Text", "x477 y263 w150 h18 +0x200 +BackgroundTrans", runTimes)

    myGui.Add("Text", "x448 y283 w150 h18 +0x200 +BackgroundTrans", "Start Gems:")
    global startGemsShow := myGui.Add("Text", "x510 y283 w150 h18 +0x200 +BackgroundTrans", startGems)

    myGui.Add("Text", "x448 y303 w150 h18 +0x200 +BackgroundTrans", "Farm Gems:")
    global farmGemsShow := myGui.Add("Text", "x510 y303 w150 h18 +0x200 +BackgroundTrans", farmGems)

    myGui.Add("Text", "x448 y323 w150 h18 +0x200 +BackgroundTrans", "Current Gems:")
    global currentGemsShow := myGui.Add("Text", "x520 y323 w150 h18 +0x200 +BackgroundTrans", currentGems)

    ;Configs box
    myGui.Add("GroupBox", "x8 y96 w426 h253", "Config")

    myGui.Add("Text", "x24 y120 w55 h23 +0x200", "Delay Start")
    myGui.Add("Text", "x220 y120 w75 h23 +0x200", "miliseconds")
    global DelayStartBox := myGui.AddEdit("x135 y120 w80 h21 +Number vDelayStartValue", delayStart)
    DelayStartBox.OnEvent("Change", saveConfig)

    myGui.Add("Text", "x24 y150 w55 h23 +0x200", "Auto Click")
    myGui.Add("Text", "x220 y150 w100 h23 +0x200", "miliseconds/click")
    global AutoClickDelayBox := myGui.Add("Edit", "x135 y150 w80 h21 +Number vAutoClickDelayBox", autoClickDelay)
    AutoClickDelayBox.OnEvent("Change", saveConfig)

    myGui.Add("Text", "x24 y180 w100 h23 +0x200", "Private Server Link")
    global PSBox := myGui.Add("Edit", "x134 y180 w200 h21", pslink)
    global browserMainAccountBox := myGui.Add("DropDownList", "x336 y180 w83 h150", ["Roblox App", "Edge", "Chrome", "Opera",
        "Opera GX", "Firefox", "Brave", "Coc coc"
    ])
    browserMainAccountBox.Text := browserMainAccount
    browserMainAccountBox.OnEvent("Change", saveConfig)
    PSBox.OnEvent("Change", saveConfig)

    myGui.Add("Text", "x24 y210 w100 h23 +0x200", "Webhook (Optional)")

    global WebhookBox := myGui.Add("Edit", "x134 y210 w230 h21", webhook)
    WebhookBox.OnEvent("Change", saveConfig)
    global WebhookBoxTest := myGui.Add("Button", "x365 y209 w55 h23 +Center", "TEST")
    WebhookBoxTest.OnEvent("Click", testWebhook)

    ;myGui.Add("Text", "x24 y240 w100 h23 +0x200 +BackgroundTrans", "Leave On Wave")
    ;global LOWBox := myGui.Add("Edit", "x134 y240 w50 h21 +Number", 0)
    ;LOWBox.Text := leaveOnWave
    ;LOWBox.OnEvent("Change", saveConfig)
    ;myGui.Add("Text", "x190 y240 w100 h23 +0x200 +BackgroundTrans", "(0 = OFF)")

    ;myGui.Add("Text", "x24 y270 w100 h23 +0x200 +BackgroundTrans", "Schedule Mode")
    ;global turnScheduleModeBox := myGui.Add("DropDownList", "x134 y270 w50 h150", ["Off", "On"])
    ;global ScheduleModeEditButton := myGui.Add("Button", "x185 y269 w80 h23 +Center", "EDIT")
    ;try {
    ;    turnScheduleModeBox.Text := scheduleMode
    ;    scheduleModeShow()
    ;}
    ;turnScheduleModeBox.OnEvent("Change", saveConfig)
    ;turnScheduleModeBox.OnEvent("Change", scheduleModeShow)
    ;ScheduleModeEditButton.OnEvent("Click", EditScheduleMode)

    global mapconfig := myGui.Add("Button", "x105 y298 w240 h40", "CHANGE SETTINGS OF THIS ACT")
    mapconfig.OnEvent('Click', ClickSettingsActButton)

    myGui.Add("Link", "x330 y98 w103 h15 +Center",
        "[" . version . "] [<a href=`"https://bit.ly/raindc`">Join Discord</a>]")

    ;Status box
    myGui.Add("GroupBox", "x8 y352 w583 h41", "Status Bar")
    global process_title := myGui.Add("Text", "x105 y364 w350 h20 Center +BackgroundTrans", "Waiting for start...")
    global process := myGui.Add("Progress", "x16 y384 w569 h3 -Smooth", "0")
    myGui.SetFont("s5 Norm q0", "Microsoft Sans Serif")
    myGui.SetFont("s8 Norm", "Ms Shell Dlg")

    ;Load mode configs
    GetMaps()
    GetActs()
    GetActTip()
    Tab.UseTab(1)

    myGui.OnEvent('Close', (*) => ExitApp())

    Hotkey startHotkey, StartMacro
    Hotkey stopHotkey, ExitMacro
    Hotkey ResizeHotkey, ResizeApp
    Hotkey AutoClickHotkey, AutoClick

    return myGui
}
