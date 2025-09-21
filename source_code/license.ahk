#MaxThreadsPerHotkey 3

getLicenseAPI(*) {

    ;Get HWID
    HWID_byte := 12288
	if (FileGetSize(A_ScriptDir . "\ext\lext.exe") != HWID_byte) {
        MsgBox("Something wrong! Try reinstall app.")
		ExitApp
	}

    d_lext_hash := "2b489bc4b586bfa99e281bb71ff42b2646fbcae084769e0ed7f89a5f5c23bef0"
    sha256Hash := HashFile(A_ScriptDir . "\ext\lext.exe", hashType:=4)
    if (sha256Hash != d_lext_hash) {
        MsgBox("Something wrong! Try reinstall app.")
        ExitApp
    }
    
	cmd := '"' . A_ScriptDir . '\ext\lext.exe" > "' . A_ScriptDir . '\ext\hwid.txt"'
	RunWait "cmd.exe /c " . '"' . cmd . '"',, "Hide"
	file_dir := A_ScriptDir . "\ext\hwid.txt"
	HWID := FileRead(file_dir)
	FileDelete(file_dir)

    ;Checking License
    FreeLicense_URL := "https://api.owltopus.asia/free-macro/?license=" . License_Input.Text . "&hwid=" . HWID
    free_license_api := ComObject("WinHttp.WinHttpRequest.5.1")
    free_license_api.Open("GET", FreeLicense_URL, true)
    free_license_api.SetRequestHeader("Content-Type", "application/json")
    free_license_api.Send()
    free_license_api.WaitForResponse()

    if (free_license_api.Status == 200) {
        return 1
    } else {
        PremiumLicense_URL := "https://api.owltopus.asia/macro/?license=" . License_Input.Text "&hwid=" . HWID "&game=AnimeVanguards"

        premium_license_api := ComObject("WinHttp.WinHttpRequest.5.1")
        premium_license_api.Open("GET", PremiumLicense_URL, true)
        premium_license_api.SetRequestHeader("Content-Type", "application/json")
        premium_license_api.Send()
        premium_license_api.WaitForResponse()

        if (premium_license_api.Status == 200) {
            return 2
        } else {
            return 0
        }
    }
}

reCheckLicense(license) {
    global reCheckLicense_UI := Gui()
    global recheckingAnimate_box := reCheckLicense_UI.Add("Text", "x10 y10 w190 h20 +Center", "Checking License")
    SetTimer reCheckLicense_UI_animate, 1200
    Sleep(200)
    recheckingAnimate_box.Text := "Checking License."
    Sleep(400)
    recheckingAnimate_box.Text := "Checking License.."
    Sleep(400)
    recheckingAnimate_box.Text := "Checking License..."

    reCheckLicense_UI.Show("w200 h30")
    
    ;Get HWID
    HWID_byte := 12288
	if (FileGetSize(A_ScriptDir . "\ext\lext.exe") != HWID_byte) {
        MsgBox("Something wrong! Try reinstall app.")
		ExitApp
	}

    d_lext_hash := "2b489bc4b586bfa99e281bb71ff42b2646fbcae084769e0ed7f89a5f5c23bef0"
    sha256Hash := HashFile(A_ScriptDir . "\ext\lext.exe", hashType:=4)
    if (sha256Hash != d_lext_hash) {
        MsgBox("Something wrong! Try reinstall app.")
        ExitApp
    }
    
	cmd := '"' . A_ScriptDir . '\ext\lext.exe" > "' . A_ScriptDir . '\ext\hwid.txt"'
	RunWait "cmd.exe /c " . '"' . cmd . '"',, "Hide"
	file_dir := A_ScriptDir . "\ext\hwid.txt"
	HWID := FileRead(file_dir)
	FileDelete(file_dir)

    ;Recheck
    FreeLicense_URL := "https://api.owltopus.asia/free-macro/?license=" . license "&hwid=" . HWID
    free_license_api := ComObject("WinHttp.WinHttpRequest.5.1")
    free_license_api.Open("GET", FreeLicense_URL, true)
    free_license_api.SetRequestHeader("Content-Type", "application/json")
    free_license_api.Send()
    free_license_api.WaitForResponse()

    if (free_license_api.Status == 200) {
        SetTimer reCheckLicense_UI_animate, 0
        return true
    } else {
        PremiumLicense_URL := "https://api.owltopus.asia/macro/?license=" . license "&hwid=" . HWID "&game=AnimeVanguards"

        premium_license_api := ComObject("WinHttp.WinHttpRequest.5.1")
        premium_license_api.Open("GET", PremiumLicense_URL, true)
        premium_license_api.SetRequestHeader("Content-Type", "application/json")
        premium_license_api.Send()
        premium_license_api.WaitForResponse()

        if (premium_license_api.Status == 200) {
            SetTimer reCheckLicense_UI_animate, 0
            return true
        } else {
            SetTimer reCheckLicense_UI_animate, 0
            return false
        }
    }
}

reCheckLicense_UI_animate(*) {
    try {
        recheckingAnimate_box.Text := "Checking License."
        Sleep(400)
        recheckingAnimate_box.Text := "Checking License.."
        Sleep(400)
        recheckingAnimate_box.Text := "Checking License..."
    }
}

verification(*) {
    CheckButton.Text := "Checking"

    conditionValue := getLicenseAPI()
    if (conditionValue > 0) {
        if (conditionValue == 1) {
            MsgBox("You are free user!", "Checked successfully!")
        } else {
            MsgBox("You are premium user, thank you for support!", "Checked successfully!")
        }

        IniWrite License_Input.Text, A_ScriptDir "\config.ini", "Config", "license"
        validation.Destroy()
        AfterGUI()
    } else {
        MsgBox("Incorrect License.", "Checked failed!")
        ExitApp()
    }
}

MsgBoxHWID(*) {
    HWID_byte := 12288
	if (FileGetSize(A_ScriptDir . "\ext\lext.exe") != HWID_byte) {
        MsgBox("Something wrong! Try reinstall app.")
		ExitApp
	}

    d_lext_hash := "2b489bc4b586bfa99e281bb71ff42b2646fbcae084769e0ed7f89a5f5c23bef0"
    sha256Hash := HashFile(A_ScriptDir . "\ext\lext.exe", hashType:=4)
    if (sha256Hash != d_lext_hash) {
        MsgBox("Something wrong! Try reinstall app.")
        ExitApp
    }
    
	cmd := '"' . A_ScriptDir . '\ext\lext.exe" > "' . A_ScriptDir . '\ext\hwid.txt"'
	RunWait "cmd.exe /c " . '"' . cmd . '"',, "Hide"
	file_dir := A_ScriptDir . "\ext\hwid.txt"
	HWID := FileRead(file_dir)
	FileDelete(file_dir)

    Link := "https://api.owltopus.asia/?hwid=" . HWID
    A_Clipboard := Link
    ;Run(Link)
    MsgBox(Link, "Copied Link! Paste to your browser to get key")
}