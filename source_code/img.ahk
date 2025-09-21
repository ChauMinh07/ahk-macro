#Requires AutoHotkey v2.0

; lobby
global main_lobby := "*75 " A_ScriptDir "\img\main_lobby.png"
global selection_ui := "*75 " A_ScriptDir "\img\selection_ui.png"
global start_button := "*125 " A_ScriptDir "\img\start_button.png"
global main_lobby_no_update_logs := "*100 " A_ScriptDir "\img\main_lobby_no_update_logs.png"
global adventure_red_army := "*175 " A_ScriptDir "\img\adventure_red_army.png"

; attempts
global disconnect := "*25 " A_ScriptDir "\img\disconnect.png"

; items
global gems := "*50 " A_ScriptDir "\img\gems.png"
global gems_pos := "*75 " A_ScriptDir "\img\gems_pos.png"

; ingame
global votestart := "*75 " A_ScriptDir "\img\votestart.png"
global west_inf_spawn_condition := "*75 " A_ScriptDir "\img\west_inf_spawn_condition.png"
global clover_kingdom_spawn_condition  := "*75 " A_ScriptDir "\img\clover_kingdom_spawn_condition.png"
global upgrade_ui := "*50 " A_ScriptDir "\img\gui\upgrade\upgrade_ui.png"
global auto_button := "*10 " A_ScriptDir "\img\auto_button.png"
global boss_health := "*70 " A_ScriptDir "\img\boss_health.png"

; West City
global west_city_wave_15 := "*65 " A_ScriptDir "\img\west_city_wave_15.png"

; Fujisima
global fujisima_wave_15 := "*100 " A_ScriptDir "\img\fujisima_wave_15.png"

; Clover Kingdom
global wave_15_clover_kingdom := "*75 " A_ScriptDir "\img\wave_15_clover_kingdom.png"

; Adventure
global adventure_red_army_spawn_condition := "*45 " A_ScriptDir "\img\adventure_red_army_spawn_condition.png"
global wrongspawn_adventure_red_army := "*110 " A_ScriptDir "\img\wrongspawn_adventure_red_army.png"
global wrongspawn_adventure_red_army_2 := "*110 " A_ScriptDir "\img\wrongspawn_adventure_red_army_2.png"
global adventure_red_army_wave_25 := "*80 " A_ScriptDir "\img\adventure_red_army_wave_25.png"
global cards := Map()
cards["Give Money"] := "*90 " A_ScriptDir "\img\cards\money.png"
cards["Ally Attack"] := "*90 " A_ScriptDir "\img\cards\attack.png"
cards["Ally Cooldown"] := "*90 " A_ScriptDir "\img\cards\cooldown.png"
cards["Ally Range"] := "*90 " A_ScriptDir "\img\cards\range.png"
cards["Enemy Health"]  := "*90 " A_ScriptDir "\img\cards\health.png"
cards["Enemy Shield"] := "*90 " A_ScriptDir "\img\cards\shield.png"
cards["Enemy Speed"] := "*90 " A_ScriptDir "\img\cards\speed.png"

; endgame
global ending_gems := "*50 " A_ScriptDir "\img\ending_gems.png"
global ending_ui := "*75 " A_ScriptDir "\img\ending_ui.png"

; other
; ---------- Upgrade UI ----------
global upgrade_img := Map()
upgrade_img["Upgrade 1"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade.png"
upgrade_img["Upgrade 2"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade_2.png"
upgrade_img["Upgrade 3"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade_3.png"
upgrade_img["Upgrade 4"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade_4.png"
upgrade_img["Upgrade 5"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade_5.png"
upgrade_img["Upgrade 6"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade_6.png"
upgrade_img["Upgrade 7"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade_7.png"
upgrade_img["Upgrade 8"] := "*75 " A_ScriptDir "\img\gui\upgrade\upgrade_8.png"
upgrade_img["MAX"] := "*60 " A_ScriptDir "\img\gui\upgrade\upgrade_max.png"
; -------- Attack Priority --------
global attack_priority := Map()
attack_priority["First"] := "*80 " A_ScriptDir "\img\gui\attack_priority\first.png"
attack_priority["Last"] := "*80 " A_ScriptDir "\img\gui\attack_priority\last.png"
attack_priority["Weakest"] := "*80 " A_ScriptDir "\img\gui\attack_priority\weakest.png"
attack_priority["Strongest"] := "*80 " A_ScriptDir "\img\gui\attack_priority\strongest.png"
attack_priority["Close"] := "*80 " A_ScriptDir "\img\gui\attack_priority\close.png"
attack_priority["Far"] := "*80 " A_ScriptDir "\img\gui\attack_priority\far.png"
attack_priority["Air"] := "*80 " A_ScriptDir "\img\gui\attack_priority\air.png"
attack_priority["Boss"] := "*80 " A_ScriptDir "\img\gui\attack_priority\boss.png"
attack_priority["Shields"] := "*80 " A_ScriptDir "\img\gui\attack_priority\shields.png"
; ------------ roblox ------------
global roblox_server := "*30 " A_ScriptDir "\img\other\roblox_server.png"
global roblox_join_ps := "*30 " A_ScriptDir "\img\other\roblox_join_ps.png"