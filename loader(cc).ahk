#NoEnv
#SingleInstance, Force
#Persistent
#InstallKeybdHook
#InstallMouseHook
#UseHook
#KeyHistory, 0
#HotKeyInterval 1
#MaxHotkeysPerInterval 127
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
#Persistent
#NoTrayIcon
#Include Gdip.ahk
if not A_IsAdmin
    {
        MsgBox, Run Cheats as Administrator
        ExitApp
    }
Gui, Color, Black
Gui, Font, s10, Segoe UI
Gui, Add, Tab, x0 y0 w600 h400 cPurple -Theme, Aim|Mods|Optis|Misc|
Gui, Tab, Aim
Gui, Add, Text, x220 y35 w160 h50 Center cPurple, SOFTAIM
Gui, Add, Checkbox, x220 y60 w160 h30 gobf_42 vSoftaimCheckbox cPurple, Softaim Enabled
Gui, Add, Text, x220 y100 w160 h20 Center cPurple, Sensitivity
Gui, Add, Slider, x220 y120 w160 h20 vSoftaimSensitivity cPurple Range0-200 gobf_5, 0
Gui, Add, Text, x390 y120 w40 h20 vSoftaimSensitivityValue cPurple, 0
Gui, Add, Text, x220 y150 w160 h20 Center cPurple, Stickiness
Gui, Add, Slider, x220 y170 w160 h20 vStickiness cPurple Range0-250 gobf_37, 0
Gui, Add, Text, x390 y170 w40 h20 vStickinessValue cPurple, 0
Gui, Add, Text, x220 y200 w160 h20 Center cPurple, FOV Size
Gui, Add, Slider, x220 y220 w160 h20 vFOVSize cPurple Range1-640 gobf_29, 1
Gui, Add, Text, x390 y220 w40 h20 vFovSizeValue cPurple, 1
Gui, Add, Text, x220 y250 w160 h20 cPurple, X Multiplier
Gui, Add, Edit, x350 y250 w50 h20 vX_Sensitivity cPurple Number gUpdateValue1
Gui, Add, Text, x220 y280 w160 h20 cPurple, Y Multiplier
Gui, Add, Edit, x350 y280 w50 h20 vY_Sensitivity cPurple Number gUpdateValue2
Gui, Add, Text, x220 y310 w160 h20 cPurple, Targeting Multiplier
Gui, Add, Edit, x350 y310 w50 h20 vTargeting_Sensitivity cPurple Number gUpdateValue3
Gui, Add, Text, x220 y340 w160 h20 vSoftaimKeyLabel cPurple, Aim Key
Gui, Add, DropDownList, x350 y340 w100 vSoftaimKey gobf_15 cPurple, None|LButton|RButton|MButton|XButton1|XButton2|Space|Enter|Tab|CapsLock|Shift|Ctrl|Alt|Esc|Backspace|Insert|Delete|Home|End|PageUp|PageDown|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|1|2|3|4|5|6|7|8|9|0|Numpad0|Numpad1|Numpad2|Numpad3|Numpad4|Numpad5|Numpad6|Numpad7|Numpad8|Numpad9|NumpadDot|NumpadDiv|NumpadMult|NumpadSub|NumpadAdd|NumpadEnter|NumpadClear
Gui, Add, Checkbox, x380 y60 w200 h30 vAlwaysOnCheckbox gobf_39 cPurple, Always Aiming (risky)
Gui, Add, Text, x410 y250 w160 h20 cPurple, Aim Bone
Gui, Add, DropDownList, x480 y250 w100 vAimBone cPurple, Head|Body|Legs|Random
Gui, Add, Text, x410 y150 w160 h20 Center cPurple, Humanization
Gui, Add, Slider, x420 y170 w125 h20 vhumanStrength cPurple Range0-10 gobf_choppa, 0
Gui, Add, Text, x550 y170 w160 h20 vhumanStrengthValue cPurple, 0
Gui, Tab, Mods
Gui, Add, Text, x210 y30 w160 h50 Center cPurple BackgroundTrans, WEAPON MODS
Gui, Add, Checkbox, x220 y60 w160 h30 gobf_2 vRecoilCheckbox cPurple, Recoil Enabled
Gui, Add, Text, x220 y100 w160 h20 Center cPurple, Recoil Strength
Gui, Add, Slider, x220 y120 w160 h20 vRecoilStrength cPurple Range9-100 gobf_32, 9
Gui, Add, Text, x390 y120 w40 h20 vRecoilStrengthValue cPurple, 9
Gui, Add, Checkbox, x220 y150 w160 h30 gobf_36 vBloomCheckbox cPurple, Bloom Reducer Enabled
Gui, Add, Slider, x220 y200 w160 h20 vBloomStrength cPurple Range0-100 gobf_28, 0
Gui, Add, Text, x250 y180 w160 h20 cPurple, Bloom Strength
Gui, Add, Text, x390 y190 w40 h20 vBloomStrengthValue cPurple, 0
Gui, Add, Checkbox, x220 y215 w160 h30 gobf_227 vPackBox cPurple, Pellet Control
Gui, Add, Text, x250 y245 w160 h30 cPurple, Strength
Gui, Add, Slider, x220 y265 w160 h20 vPackStrength cPurple Range0-20 gobf_nle, 0
Gui, Add, Text, x390 y265 w40 h20 vPackStrengthValue cPurple, 0
Gui, Tab, Optis
Gui, Add, Text, x220 y35 w160 h50 Center cPurple, OPTIMIZATIONS
Gui, Add, Checkbox, x220 y60 w160 h30 vsmoothMouse cPurple, Smooth Mouse
Gui, Add, Checkbox, x220 y105 w160 h30 vkeyDelay cPurple, No Key Delay
Gui, Add, Checkbox, x220 y150 w160 h30 vmouseDelay cPurple, No Mouse Delay
Gui, Add, Checkbox, x220 y195 w160 h30 vinputDelay cPurple, No Input Delay
Gui, Add, Checkbox, x220 y240 w160 h30 vlessPing cPurple, Ping Reducer
Gui, Add, Checkbox, x220 y285 w160 h30 vmoreFps cPurple, Fps Increaser
Gui, Tab, Misc
Gui, Add, Text, x220 y35 w160 h50 Center cPurple, MISC
Gui, Add, Button, x220 y280 w150 h30 gobf_69, Save Settings
Gui, Add, Button, x220 y310 w150 h30 gobf_101, Load Settings
Gui, Add, Text, x245 y180 w210 h20 cPurple, Background Color
Gui, Add, DropDownList, x245 y210 w100 vBackgroundColor gobf_14 cPurple, Black|White|Gray|Red|Green|Blue|Yellow|Purple
Gui, Add, Button, x210 y100 w200 h30 gobf_40, INFO
Gui, Show, w600 h400, Press INSERT to turn on/off safe mode
return
Ins::
    IfWinExist, ahk_class AutoHotkeyGUI
    {
        Gui, Hide
    }
    Else
    {
        Gui, Show
    }
return
GuiClose:
ExitApp
mousesmoothing := Round(Max(1 - 50 / 2 * 10))
obf_40:
MsgBox, 1. BETTER PC = BETTER SCRIPT PERFORMANCE
MsgBox, 2. THIS IS A LEGIT CHEAT AND IS NOT MADE FOR RAGE CHEATING
MsgBox, 3. PRESS INSERT TO TOGGLE/UNTOGGLE SAFE MODE
MsgBox, 4. SAFE MODE REMOVES THE MENU FROM THE TOOL BAR AND DISGUISES THE CHEATS AS A BACKGROUND PROCESS
MsgBox, 5. IF YOU LOAD THE SETTINGS YOU SAVED AND YOU HAD CHECKBOXES ENABLED IN THE SAVED SETTINGS, YOU HAVE TO UNTOGGLE, AND RE-TOGGLE THEM AGAIN FOR THEM TO WORK
MsgBox, 6. KBM ONLY, BUT IF YOU USE ANTIMICRO OR CHECK ALWAYS AIMING, YOU CAN USE IT ON CONTROLLER
return
obf_5:
GuiControlGet, SoftaimSensitivity
GuiControl,, SoftaimSensitivityValue, %SoftaimSensitivity%
return
obf_32:
GuiControlGet, RecoilStrength
GuiControl,, RecoilStrengthValue, %RecoilStrength%
return
obf_29:
GuiControlGet, FovSize
GuiControl,, FovSizeValue, %FOVSize%
return
obf_14:
GuiControlGet, BackgroundColor
Gui, Color, %BackgroundColor%
return
obf_37:
GuiControlGet, Stickiness
GuiControl,, StickinessValue, %Stickiness%
return
obf_28:
GuiControlGet, BloomStrength
GuiControl,, BloomStrengthValue, %BloomStrength%
return
obf_nle:
GuiControlGet, PackStrength
GuiControl,, PackStrengthValue, %PackStrength%
return
obf_choppa:
GuiControlGet, humanStrength
GuiControl,, humanStrengthValue, %humanStrength%
return
UpdateValue1:
    GuiControlGet, InputValue, , X_Sensitivity
    IntegerValue := InputValue + 0
    GuiControl,, X_Sensitivity, %IntegerValue%
return
UpdateValue2:
    GuiControlGet, InputValue, , Y_Sensitivity
    IntegerValue := InputValue + 0
    GuiControl,, Y_Sensitivity, %IntegerValue%
return
UpdateValue3:
    GuiControlGet, InputValue, , Targeting_Sensitivity
    IntegerValue := InputValue + 0
    GuiControl,, Targeting_Sensitivity, %IntegerValue%
return
obf_15:
Gui, Submit, NoHide
if (SoftaimKey = "None") {
SoftaimKey := " "
}
return
obf_39:
Gui, Submit, NoHide
if (AlwaysOnCheckbox) {
GuiControl, Hide, SoftaimKey
GuiControl, Hide, SoftaimKeyLabel
} else {
GuiControl, Show, SoftaimKey
GuiControl, Show, SoftaimKeyLabel
}
return
obf_69:
FileSelectFile, SaveFilePath, S,, Save Configuration, (*.ini)
if (SaveFilePath = "")
{
MsgBox, Save canceled.
return
}
if (SubStr(SaveFilePath, -3) != ".ini")
{
SaveFilePath := SaveFilePath . ".ini"
}
Gui, Submit, NoHide
IniWrite, %SoftaimCheckbox%, %SaveFilePath%, Settings, SoftaimEnabled
IniWrite, %SoftaimSensitivity%, %SaveFilePath%, Settings, SoftaimSensitivity
IniWrite, %X_Sensitivity%, %SaveFilePath%, Settings, X_Sensitivity
IniWrite, %Y_Sensitivity%, %SaveFilePath%, Settings, Y_Sensitivity
IniWrite, %Targeting_Sensitivity%, %SaveFilePath%, Settings, Targeting_Sensitivity
IniWrite, %RecoilCheckbox%, %SaveFilePath%, Settings, RecoilEnabled
IniWrite, %RecoilStrength%, %SaveFilePath%, Settings, RecoilStrength
IniWrite, %SoftaimKey%, %SaveFilePath%, Settings, SoftaimKey
IniWrite, %BackgroundColor%, %SaveFilePath%, Settings, BackgroundColor
IniWrite, %FOVSize%, %SaveFilePath%, Settings, FOVSize
IniWrite, %AlwaysOnCheckbox%, %SaveFilePath%, Settings, AlwaysOnCheckbox
IniWrite, %Stickiness%, %SaveFilePath%, Settings, Stickiness
IniWrite, %BloomStrength%, %SaveFilePath%, Settings, BloomStrength
IniWrite, %BloomCheckbox%, %SaveFilePath%, Settings, BloomCheckbox
IniWrite, %AimBone%, %SaveFilePath%, Settings, AimBone
IniWrite, %PackBox%, %SaveFilePath%, Settings, PackBox
IniWrite, %PackStrength%, %SaveFilePath%, Settings, PackStrength
IniWrite, %humanStrength%, %SaveFilePath%, Settings, humanStrength
IniWrite, %smoothMouse%, %SaveFilePath%, Settings, smoothMouse
IniWrite, %keyDelay%, %SaveFilePath%, Settings, keyDelay
IniWrite, %mouseDelay%, %SaveFilePath%, Settings, mouseDelay
IniWrite, %inputDelay%, %SaveFilePath%, Settings, inputDelay
IniWrite, %lessPing%, %SaveFilePath%, Settings, lessPing
IniWrite, %moreFps%, %SaveFilePath%, Settings, moreFps
MsgBox, Settings saved successfully to %SaveFilePath%.
return
obf_101:
FileSelectFile, LoadFilePath, O,, Load Configuration, (*.ini)
if (LoadFilePath = "")
{
MsgBox, Load canceled.
return
}
IniRead, SoftaimEnabled, %LoadFilePath%, Settings, SoftaimEnabled
IniRead, SoftaimSensitivity, %LoadFilePath%, Settings, SoftaimSensitivity
IniRead, X_Sensitivity, %LoadFilePath%, Settings, X_Sensitivity
IniRead, Y_Sensitivity, %LoadFilePath%, Settings, Y_Sensitivity
IniRead, Targeting_Sensitivity, %LoadFilePath%, Settings, Targeting_Sensitivity
IniRead, RecoilEnabled, %LoadFilePath%, Settings, RecoilEnabled
IniRead, RecoilStrength, %LoadFilePath%, Settings, RecoilStrength
IniRead, SoftaimKey, %LoadFilePath%, Settings, SoftaimKey
IniRead, BackgroundColor, %LoadFilePath%, Settings, BackgroundColor
IniRead, FOVSize, %LoadFilePath%, Settings, FOVSize
IniRead, AlwaysOnCheckbox, %LoadFilePath%, Settings, AlwaysOnCheckbox
IniRead, Stickiness, %LoadFilePath%, Settings, Stickiness
IniRead, BloomStrength, %LoadFilePath%, Settings, BloomStrength
IniRead, BloomCheckbox, %LoadFilePath%, Settings, BloomCheckbox
IniRead, AimBone, %LoadFilePath%, Settings, AimBone
IniRead, PackBox, %LoadFilePath%, Settings, PackBox
IniRead, PackStrength, %LoadFilePath%, Settings, PackStrength
IniRead, humanStrength, %LoadFilePath%, Settings, humanStrength
IniRead, smoothMouse, %LoadFilePath%, Settings, smoothMouse
IniRead, keyDelay, %LoadFilePath%, Settings, keyDelay
IniRead, mouseDelay, %LoadFilePath%, Settings, mouseDelay
IniRead, inputDelay, %LoadFilePath%, Settings, inputDelay
IniRead, lessPing, %LoadFilePath%, Settings, lessPing
IniRead, moreFps, %LoadFilePath%, Settings, moreFps
if (BloomStrength = "") {
   BloomStrength := 1
}
if (BloomCheckbox = "") {
   BloomCheckbox := 0
}
if (AimBone = "") {
  AimBone := "Head"
}
GuiControl,, SoftaimCheckbox, %SoftaimEnabled%
GuiControl,, SoftaimSensitivity, %SoftaimSensitivity%
GuiControl,, X_Sensitivity, %X_Sensitivity%
GuiControl,, Y_Sensitivity, %Y_Sensitivity%
GuiControl,, Targeting_Sensitivity, %Targeting_Sensitivity%
GuiControl,, RecoilCheckbox, %RecoilEnabled%
GuiControl,, RecoilStrength, %RecoilStrength%
GuiControl,, SoftaimKey, %SoftaimKey%
Gui, Color, %BackgroundColor%
GuiControl,, FOVSize, %FOVSize%
GuiControl,, AlwaysOnCheckbox, %AlwaysOnCheckbox%
GuiControl,, Stickiness, %Stickiness%
GuiControl,, BloomStrength, %BloomStrength%
GuiControl,, BloomCheckbox, %BloomCheckbox%
GuiControl,, AimBone, %AimBone%
GuiControl,, PackBox, %PackBox%
GuiControl,, PackStrength, %PackStrength%
GuiControl,, humanStrength, %humanStrength%
GuiControl,, smoothMouse, %smoothMouse%
GuiControl,, keyDelay, %keyDelay%
GuiControl,, mouseDelay, %mouseDelay%
GuiControl,, inputDelay, %inputDelay%
GuiControl,, lessPing, %lessPing%
GuiControl,, moreFps, %moreFps%
MsgBox, Settings loaded successfully from %LoadFilePath%.
return
GuiControlGet, FOVSize
AntiShakeX := (A_ScreenHeight // 128)
AntiShakeY := (A_ScreenHeight // 96)
ZeroX := (A_ScreenWidth // 2)
ZeroY := (A_ScreenHeight // 2)
FovCalcX := (A_ScreenWidth // 2) + FOVSize
FovCalcY := (A_ScreenHeight // 2) + FOVSize
FovScanL := ZeroX - FovCalcX
FovScanT := ZeroY - FovCalcY
FovScanR := ZeroX + FovCalcX
FovScanB := ZeroY + FovCalcY
GuiControlGet, SoftaimCheckbox
GuiControlGet, SoftaimSensitivity
GuiControlGet, X_Sensitivity
GuiControlGet, Y_Sensitivity
GuiControlGet, Targeting_Sensitivity
GuiControlGet, SoftaimKey
GuiControlGet, AlwaysOnCheckbox
GuiControlGet, Stickiness
GuiControlGet, BloomStrength
GuiControlGet, AimBone
GuiControlGet, BulletStrength
GuiControlGet, BulletEnable
GuiControlGet, PackBox
GuiControlGet, PackStrength
GuiControlGet, humanStrength
GuiControlGet, smoothMouse
GuiControlGet, keyDelay
GuiControlGet, mouseDelay
GuiControlGet, inputDelay
GuiControlGet, lessPing
GuiControlGet, moreFps
obf_42:
Gui, Submit, NoHide
if (SoftaimCheckbox)
{
SetKeyDelay, -1, 1
SetControlDelay, -1
SetMouseDelay, -1
SetWinDelay, -1
SendMode, InputThenPlay
SetBatchLines, -1
ListLines, Off
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
PID := DllCall("GetCurrentProcessId")
Process, Priority, %PID%, High
SoftaimSensitivity := Sensitivity
AimOffsetFactor := 5729.225
Loop
{
if (!SoftaimCheckbox)
{
Gui, Submit, NoHide
break
}
velocities := []
positionHistory := []
maxHistory := 25
MaxAimDist := 750
DampingFactor := 0.8
MouseGetPos, MouseX, MouseY
obf_10() {
SoftSticky := Stickiness * Max(0, 1 - (AimDist / MaxAimDist) ^ PowerFactor)
StillSoftSticky := Stickiness * Exp(-PowerFactor * (AimDist / MaxAimDist))
Alpha := 0.50
EMAX := 0
EMAY := 0
SetBatchLines, -1
MouseGetPos, PrevMouseX, PrevMouseY
PrevTime := A_TickCount
Loop {
MouseGetPos, mouseX, mouseY
AimX := mouseX - ZeroX
AimY := mouseY - ZeroY
Distly := Sqrt(AimX**2 + AimY**2)
SensitivityX := Sensitivity * AimDist
SensitivityY := Sensitivity * AimDist
CurrentTime := A_TickCount
TimeDiff := CurrentTime - PrevTime
if (TimeDiff > 0) {
VelocityX := (mouseX - PrevMouseX) / TimeDiff
VelocityY := (mouseY - PrevMouseY) / TimeDiff
velocities.Push({VelX: VelocityX, VelY: VelocityY, Time: CurrentTime})
if (velocities.MaxIndex() > maxHistory) {
velocities.RemoveAt(1)
}
} else {
VelocityX := 0
VelocityY := 0
}
targetBeforeX := 0
targetBeforeY := 0
if (TimeDiff > 0) {
targetVelocityX := (stillPredictedX_Velocity1 - targetBeforeX) / TimeDiff
targetVelocityY := (stillPredictedY_Velocity1 - targetBeforeY) / TimeDiff
velocities.Push({obf_43: targetVelocityX, obf_38: targetVelocityY, obf_27: CurrentTime})
if (velocities.MaxIndex() > maxHistory) {
velocities.RemoveAt(1)
}
targetBeforeX := stillPredictedX_Velocity1
targetBeforeY := stillPredictedX  _Velocity1
} else {
targetVelocityX := 0
targetVelocityY := 0
}
TargetX_Prediction1 := playerX_Velocity1 + (TargetVelocityX * TimeDiff)
TargetY_Prediction1 := playerY_Velocity1 + (TargetVelocityY * TimeDiff)
PredictedPos := obf_26(mouseX, mouseY)
PredictedX_Velocity := PredictedPos.X
PredictedY_Velocity := PredictedPos.Y
EMAX := (Alpha * VelocityX) + ((1 - Alpha) * EMAX)
EMAY := (Alpha * VelocityY) + ((1 - Alpha) * EMAY)
SpeedThreshold := 10
DynamicPredictFactor := (VelocityX + VelocityY > SpeedThreshold) ? 1.5 : 1.0
PredictedX_Velocity1 := (mouseX * (1 - DampingFactor)) + (VelocityX * TimeDiff) + (AimX * AimDist * TimeDiff * X_Sensitivity * AimOffsetFactor * DynamicPredictFactor * TargetX_Prediction1)
PredictedY_Velocity1 := (mouseY * (1 - DampingFactor)) + (VelocityY * TimeDiff) + (AimY * AimDist * TimeDiff * Y_Sensitivity * AimOffsetFactor * DynamicPredictFactor * TargetY_Prediction1)
stillPredictedX_Velocity1 := (mouseX * (1 - DampingFactor)) + (VelocityX * TimeDiff) + (AimX * AimDist * TimeDiff * X_Sensitivity * AimOffsetFactor * StillSoftSticky * DynamicPredictFactor)
stillPredictedY_Velocity1 := (mouseY * (1 - DampingFactor)) + (VelocityY * TimeDiff) + (AimY * AimDist * TimeDiff * Y_Sensitivity * AimOffsetFactor * StillSoftSticky * DynamicPredictFactor)
FinalPosX := (EMAX + PredictedPos.X + PredictedX_Velocity1) / 3
FinalPosY := (EMAY + PredictedPos.Y + PredictedY_Velocity1) / 3
targetBeforeX := 0
targetBeforeY := 0
if (TimeDiff > 0) {
targetVelocityX := (stillPredictedX_Velocity1 - targetBeforeX) / TimeDiff
targetVelocityY := (stillPredictedY_Velocity1 - targetBeforeY) / TimeDiff
targetSpeed := Sqrt((targetVelocityX ** 2) + (targetVelocityY ** 2))
targetIsStandingStill := (targetSpeed < 0.1)
if (targetIsStandingStill) {
FinalPosX := (EMAX + PredictedPos.X + stillPredictedX_Velocity1) / 3
FinalPosY := (EMAY + PredictedPos.Y + stillPredictedY_Velocity1) / 3
} else {
FinalPosX := (EMAX + PredictedPos.X + PredictedX_Velocity1) / 3
FinalPosY := (EMAY + PredictedPos.Y + PredictedY_Velocity1) / 3
}
targetBeforeX := stillPredictedX_Velocity1
targetBeforeY := stillPredictedY_Velocity1
} else {
TargetX_Prediction := 0
TargetY_Prediction := 0
}
BigFinalPosX := FinalPosX * SoftSticky + mouseX * (1 - SoftSticky)
BigFinalPosY := FinalPosY * SoftSticky + mouseY * (1 - SoftSticky)
Random, RandOffsetX, -humanStrength, humanStrength
Random, RandOffsetY, -humanStrength, humanStrength
BigFinalPosX += RandOffsetX
BigFinalPosY += RandOffset
PrevMouseX := mouseX
PrevMouseY := mouseY
PrevTime := CurrentTime
if (AimBone = "Head") {
BigFinalPosY -= 28
}
if (AimBone = "Legs") {
BigFinalPosY += 16
}
if (AimBone = "Body") {
BigFinalPosY += 20
}
if (AimBone = "Random") {
return
}
if (BigFinalPosX >= FovScanL && BigFinalPosX <= FovScanR && BigFinalPosY >= FovScanT && BigFinalPosY <= FovScanB) {
obf_22(BigFinalPosX, BigFinalPosY)
} else {
    ;nun
}
Sleep, 0
}
}
return
Gui, Submit, NoHide
if (AlwaysOnCheckbox && SoftaimCheckbox) {
    Loop {
        obf_10()
        if (!AlwaysOnCheckbox || !SoftaimCheckbox)
            break
    }
}
Gui, Submit, NoHide
while (GetKeyState(SoftaimKey, "P")) {
        obf_10()
        if (!SoftaimCheckbox)
            break
        Sleep, 0
}
pinkdreds() {
msgbox, your mouse has been optimized!
}
obf_26(currentX, currentY) {
global velocities, maxHistory
sumX := 0
sumY := 0
sumXY := 0
sumX2 := 0
n := velocities.MaxIndex()
for i, vel in velocities {
deltaT := vel.Time - velocities[1].Time
sumX += deltaT * vel.VelX
sumY += deltaT * vel.VelY
sumXY += deltaT * vel.VelX * vel.VelY
sumX2 += deltaT * deltaT
}
aX := sumX / sumX2
aY := sumY / sumX2
lastTimeDiff := A_TickCount - velocities[1].Time
predictedVelX := aX * lastTimeDiff
predictedVelY := aY * lastTimeDiff
predictedPosX := currentX + predictedVelX
predictedPosY := currentY + predictedVelY
return {X: predictedPosX, Y: predictedPosY}
}
obf_13(axis) {
global positionHistory
sumX := 0
sumY := 0
sumXY := 0
sumX2 := 0
N := positionHistory.MaxIndex()
for i, pos in positionHistory {
ThisX := i
ThisY := (axis = "X") ? pos.X : pos.Y
sumX += ThisX
sumY += ThisY
sumXY += ThisX * ThisY
sumX2 += ThisX ** 2
}
m := (N * sumXY - sumX * sumY) / (N * sumX2 - sumX ** 2)
b := (sumY - m * sumX) / N
predictedPos := m * (N + 1) + b
return predictedPos
}
SetBatchLines, -1
obf_35() {
MouseGetPos, MouseX, MouseY
Alpha := 0.50
EMA_X := 0
EMA_Y := 0
MouseGetPos, MouseBeforeX, MouseBeforeY
PrevTime := A_TickCount
targetX := A_ScreenWidth / 2
targetY := A_ScreenHeight / 2
StaySticky := Stickiness * Max(0, 1 - (dist / MaxAimDist) ^ PowerFactor)
StillStaySticky := Stickiness * Exp(-PowerFactor * (dist / MaxAimDist))
MouseGetPos, mouseX, mouseY
direX := targetX - mouseX
direY := targetY - mouseY
dist := Sqrt(direX**2 + direY**2)
speed := SoftaimSensitivity * dist
StepsX := Max(1, Round(100 / speed))
StepsY := Max(1, Round(100 / speed))
StepsX := direX / StepsX
StepsY := direY / StepsY
CurrentTime := A_TickCount
TimeDiff := CurrentTime - PrevTime
if (TimeDiff > 0) {
VelocityXlol := (mouseX - MouseBeforeX) / TimeDiff
VelocityYlol := (mouseY - MouseBeforeY) / TimeDiff
velocities.Push({obf_43: VelocityXlol, obf_38: VelocityYlol, obf_27: CurrentTime})
if (velocities.MaxIndex() > maxHistory) {
velocities.RemoveAt(1)
}
} else {
VelocityXlol := 0
VelocityYlol := 0
}
targetBeforeX := 0
targetBeforeY := 0
if (TimeDiff > 0) {
targetVelocityX := (stillPredictedX_Velocity - targetBeforeX) / TimeDiff
targetVelocityY := (stillPredictedY_Velocity - targetBeforeY) / TimeDiff
velocities.Push({obf_43: targetVelocityX, obf_38: targetVelocityY, obf_27: CurrentTime})
if (velocities.MaxIndex() > maxHistory) {
velocities.RemoveAt(1)
}
targetBeforeX := stillPredictedX_Velocity
targetBeforeY := stillPredictedY_Velocity
} else {
targetVelocityX := 0
targetVelocityY := 0
}
TargetX_Prediction := playerX_Velocity + (TargetVelocityX * TimeDiff)
TargetY_Prediction := playerY_Velocity + (TargetVelocityY * TimeDiff)
PredictedPos := obf_26(mouseX, mouseY)
PlayerX_Velocity := PredictedPos.X
PlayerY_Velocity := PredictedPos.Y
EMA_X := (Alpha * VelocityXlol) + ((1 - Alpha) * EMA_X)
EMA_Y := (Alpha * VelocityYlol) + ((1 - Alpha) * EMA_Y)
predictedPos := obf_26(mouseX, mouseY)
futurePrediction := obf_26(mouseX, mouseY)
SpeedThreshold := 10
DynamicPredictFactor := (VelocityX + VelocityY > SpeedThreshold) ? 1.5 : 1.0
playerX_Velocity := (mouseX * (1 - DampingFactor)) + (VelocityXlol * TimeDiff) + (direX * dist * TimeDiff * X_Sensitivity * AimOffsetFactor * DynamicPredictFactor * TargetX_Prediction)
playerY_Velocity := (mouseY * (1 - DampingFactor)) + (VelocityYlol * TimeDiff) + (direY * dist * TimeDiff * Y_Sensitivity * AimOffsetFactor *DynamicPredictFactor * TargetY_Prediction)
stillplayerX_Velocity := (mouseX * (1 - DampingFactor)) + (VelocityXlol * TimeDiff) + (direX * dist * TimeDiff * X_Sensitivity * AimOffsetFactor * StillStaySticky * DynamicPredictFactor)
stillplayerY_Velocity := (mouseY * (1 - DampingFactor)) + (VelocityYlol * TimeDiff) + (direY * dist * TimeDiff * Y_Sensitivity * AimOffsetFactor * StillStaySticky * DynamicPredictFactor)
FinalPositX := (EMA_X + predictedPos.X + playerX_Velocity) / 3
FinalPositY := (EMA_Y + predictedPos.Y + playerY_Velocity) / 3
targetBeforeX := 0
targetBeforeY := 0
if (TimeDiff > 0) {
targetVelocityX := (stillPredictedX_Velocity - targetBeforeX) / TimeDiff
targetVelocityY := (stillPredictedY_Velocity - targetBeforeY) / TimeDiff
targetSpeed := Sqrt((targetVelocityX ** 2) + (targetVelocityY ** 2))
targetIsStandingStill := (targetSpeed < 0.1)
if (targetIsStandingStill) {
FinalPositX := (EMA_X + predictedPos.X + stillplayerX_Velocity) / 3
FinalPositY := (EMA_Y + predictedPos.Y + stillplayerY_Velocity) / 3
} else {
FinalPositX := (EMA_X + predictedPos.X + playerX_Velocity) / 3
FinalPositY := (EMA_Y + predictedPos.Y + playerY_Velocity) / 3
}
targetBeforeX := stillPredictedX_Velocity
targetBeforeY := stillPredictedY_Velocity
} else {
TargetX_Prediction := 0
TargetY_Prediction := 0
}
LolFinalPositX := FinalPositX * StaySticky + mouseX * (1 - StaySticky)
LolFinalPositY := FinalPositY * StaySticky + mouseY * (1 - StaySticky)
Random, RandOffsetX, -humanStrength, humanStrength
Random, RandOffsetY, -humanStrength, humanStrength
LolFinalPositX += RandOffsetX
LolFinalPositY += RandOffsetY
MouseBeforeX := mouseX
MouseBeforeY := mouseY
PrevTime := CurrentTime
if (AimBone = "Head") {
LolFinalPositY -= 28
}
if (AimBone = "Legs") {
LolFinalPositY += 16
}
if (AimBone = "Body") {
LolFinalPositY += 20
}
if (AimBone = "Random") {
return
}
if (LolFinalPositX >= FovScanL && LolFinalPositX <= FovScanR && LolFinalPositY >= FovScanT && LolFinalPositY <= FovScanB) {
obf_22(LolFinalPositX, LolFinalPositY)
} else {
    ;nun
}
Sleep, 0
}
}
Gui, Submit, NoHide
if (AlwaysOnCheckbox && SoftaimCheckbox) {
    Loop {
        obf_35()
        if (!AlwaysOnCheckbox || !SoftaimCheckbox)
            break
    }
}
Gui, Submit, NoHide
while (GetKeyState(SoftaimKey, "P")) {
        obf_35()
        if (!SoftaimCheckbox)
            break
        Sleep, 0
}
SetBatchLines, -1
if (GetKeyState("RButton", "P")) {
PredictedX *= Targeting_Sensitivity
PredictedY *= Targeting_Sensitivity
MoveX *= Targeting_Sensitivity
MoveY *= Targeting_Sensitivity
playerX *= Targeting_Sensitivity
playerY *= Targeting_Sensitivity
} else {
PredictedX *= 1
PredictedY *= 1
MoveX *= 1
MoveY *= 1
playerX *= 1
playerY *= 1
}
optimize := Max(mouseX * mouseY)
Return
obf_17() {
    MouseGetPos, MouseX, MouseY
    Alpha := 0.50
    EMAX_ := 0
    EMAY_ := 0
    SetBatchLines, -1
    MouseGetPos, BeforeX, BeforeY
    PrevTime := A_TickCount
    RotateSticky := Stickiness * Max(0, 1 - (Distance / MaxAimDist) ^ PowerFactor)
    StillRotateSticky := Stickiness * Exp(-PowerFactor * (Distance / MaxAimDist))
    Loop {
        Loop, 1 {
            MouseGetPos, mouseX, mouseY
            AimsX := mouseX - ZeroX
            AimsY := mouseY - ZeroY
            DirX := (AimX > 0) ? 1 : -1
            DirY := (AimY > 0) ? 1 : -1
            AimOffsetX := AimX * DirX
            AimOffsetY := AimY * DirY
            MoveX := Floor((AimOffsetX ** (1 / 2)) * 9500) * DirX
            MoveY := Floor((AimOffsetY ** (1 / 2)) * 9500) * DirY
            Distance := Sqrt(AimX**2 + AimY**2)
            strengthX := SoftaimSensitivity * Distance
            strengthY := SoftaimSensitivity * Distance
            stepsX := Max(1, Round(100 / strengthX))
            stepsY := Max(1, Round(100 / strengthY))
            stepsX := AimsX / stepsX
            stepsY := AimsY / stepsY
            boostX := 6500
            boostY := 6500
            CurrentTime := A_TickCount
            TimeDiff := CurrentTime - PrevTime
            if (TimeDiff > 0) {
                VelocityXboi := (mouseX - BeforeX) / TimeDiff
                VelocityYboi := (mouseY - BeforeY) / TimeDiff
                velocities.Push({obf_43: VelocityXboi, obf_38: VelocityYboi, obf_27: CurrentTime})
                
                if (velocities.MaxIndex() > maxHistory) {
                    velocities.RemoveAt(1)
                }
            } else {
                VelocityXboi := 0
                VelocityYboi := 0
            }
            targetBeforeX := 0
            targetBeforeY := 0
            if (TimeDiff > 0) {
                targetVelocityX := (stillMoveX_Velocity2 - targetBeforeX) / TimeDiff
                targetVelocityY := (stillMoveY_Velocity2 - targetBeforeY) / TimeDiff
                velocities.Push({obf_43: targetVelocityX, obf_38: targetVelocityY, obf_27: CurrentTime})
                
                if (velocities.MaxIndex() > maxHistory) {
                    velocities.RemoveAt(1)
                }
                targetBeforeX := stillMoveX_Velocity2
                targetBeforeY := stillMoveY_Velocity2
            } else {
                targetVelocityX := 0
                targetVelocityY := 0
            }
            TargetX_Prediction2 := MoveX_Velocity + (TargetVelocityX * TimeDiff)
            TargetY_Prediction2 := MoveY_Velocity + (TargetVelocityY * TimeDiff)
            PredictedPos := obf_26(mouseX, mouseY)
            MoveX_Velocity := PredictedPos.X
            MoveY_Velocity := PredictedPos.Y
            EMAX_ := (Alpha * VelocityX) + ((1 - Alpha) * EMAX_)
            EMAY_ := (Alpha * VelocityY) + ((1 - Alpha) * EMAY_)
            predictedPos := obf_26(mouseX, mouseY)
            futurePrediction := obf_26(mouseX, mouseY)
            SpeedThreshold := 10
            DynamicPredictFactor := (VelocityX + VelocityY > SpeedThreshold) ? 1.5 : 1.0
            MoveX_Velocity := (mouseX * (1 - DampingFactor)) + (AimOffsetY * Distly * X_Sensitivity * boostX) + (VelocityX * TimeDiff * DynamicPredictFactor * TargetX_Prediction2)
            MoveY_Velocity := (mouseY * (1 - DampingFactor)) + (AimOffsetY * Distly * Y_Sensitivity * boostY) + (VelocityY * TimeDiff * DynamicPredictFactor * TargetY_Prediction2)
            stillMoveX_Velocity2 := (mouseX * (1 - DampingFactor)) + (AimOffsetY * Distance * stepsX * X_Sensitivity * boostX) + (VelocityX * TimeDiff * StillRotateSticky * DynamicPredictFactor)
            stillMoveY_Velocity2 := (mouseY * (1 - DampingFactor)) + (AimOffsetY * Distance * stepsY * Y_Sensitivity * boostY) + (VelocityY * TimeDiff * StillRotateSticky * DynamicPredictFactor)
            PositX := (EMAX_ + predictedPos.X + stillMoveX_Velocity2) / 3
            PositY := (EMAY_ + predictedPos.Y + stillMoveY_Velocity2) / 3
            targetBeforeX := 0
            targetBeforeY := 0
            if (TimeDiff > 0) {
                targetVelocityX := (stillMoveX_Velocity2 - targetBeforeX) / TimeDiff
                targetVelocityY := (stillMoveY_Velocity2 - targetBeforeY) / TimeDiff
                targetSpeed := Sqrt((targetVelocityX ** 2) + (targetVelocityY ** 2))
                targetIsStandingStill := (targetSpeed < 0.1)
                
                if (targetIsStandingStill) {
                    PositX := (EMAX_ + predictedPos.X + stillMoveX_Velocity2) / 3
                    PositY := (EMAY_ + predictedPos.Y + stillMoveY_Velocity2) / 3
                } else {
                    PositX := (EMAX_ + predictedPos.X + MoveX_Velocity2) / 3
                    PositY := (EMAY_ + predictedPos.Y + MoveY_Velocity2) / 3
                }
                
                    targetBeforeX := stillMoveX_Velocity2
                    targetBeforeY := stillMoveY_Velocity2
               } else {
                    TargetX_Prediction := 0
                    TargetY_Prediction := 0
                }
            YayPositX := YayPositX * RotateSticky + mouseX * (1 - RotateSticky)
            YayPositY := YayPositY * RotateSticky + mouseY * (1 - RotateSticky)
            Random, RandOffsetX, -humanStrength, humanStrength
            Random, RandOffsetY, -humanStrength, humanStrength
            YayPositX += RandOffsetX
            YayPositY += RandOffsetY
            BeforeX := mouseX
            BeforeY := mouseY
            PrevTime := CurrentTime
            
            if (AimBone = "Head") {
                YayPositY -= 28
            }
            if (AimBone = "Legs") {
                YayPositY += 16
            }
            if (AimBone = "Body") {
                YayPositY += 20
            }
            if (AimBone = "Random") {
                return
            }
            if (LolFinalPositX >= FovScanL && LolFinalPositX <= FovScanR && LolFinalPositY >= FovScanT && LolFinalPositY <= FovScanB) {
            obf_22(YayPositX, YayPositY)
            } else {
                ;nun
            }
            Sleep, 0
        }
    }
}
} if (!SoftaimCheckbox) {
    ;nuthin
}
Gui, Submit, NoHide
if (AlwaysOnCheckbox && SoftaimCheckbox) {
  Loop {
    obf_17()
    if (!AlwaysOnCheckbox || !SoftaimCheckbox)
        break
  }
}
Gui, Submit, NoHide
while (GetKeyState(SoftaimKey, "P")) {
        obf_17()
        if (!SoftaimCheckbox)
            break
        Sleep, 0
}
obf_22(x, y, multiplier := 210400) {
newX := x * multiplier
newY := y * multiplier
DllCall("mouse_event", "UInt", 0x0001, "Int", newX, "Int", newY, "UInt", 0, "UInt", 0)
}
MouseGetPos, PrevMouseX, PrevMouseY
PrevTime := A_TickCount
SoftaimActive := false
global InitialShotX := 0, InitialShotY := 0, ShotFired := false
VelocityCompensation := BloomStrength * 655000
SmoothingFactor := 0.35
MinMovementThreshold := 1
obf_36:
Gui, Submit, NoHide
if (BloomCheckbox = 1) {
    SoftaimActive := true
} else {
    SoftaimActive := false
}
Return
Loop {
    if SoftaimActive {
        MouseGetPos, MouseX, MouseY
        CurrentTime := A_TickCount
        TimeDiff := CurrentTime - PrevTime
        if (GetKeyState("LButton", "P") and !ShotFired) {
            InitialShotX := MouseX
            InitialShotY := MouseY
            ShotFired := true
        }
        if (TimeDiff > 0) {
            VelocityX := (MouseX - PrevMouseX) / TimeDiff
            VelocityY := (MouseY - PrevMouseY) / TimeDiff
            PredictedX := MouseX + (VelocityX * TimeDiff * VelocityCompensation)
            PredictedY := MouseY + (VelocityY * TimeDiff * VelocityCompensation)
            CenterPullFactor := 0.25
            SmoothedX := (PredictedX * SmoothingFactor) + (PrevMouseX * (1 - SmoothingFactor))
            SmoothedY := (PredictedY * SmoothingFactor) + (PrevMouseY * (1 - SmoothingFactor))
            SmoothedX := SmoothedX + (InitialShotX - SmoothedX) * CenterPullFactor
            SmoothedY := SmoothedY + (InitialShotY - SmoothedY) * CenterPullFactor
            if (Abs(SmoothedX - PrevMouseX) > MinMovementThreshold || Abs(SmoothedY - PrevMouseY) > MinMovementThreshold) {
                obf_22(SmoothedX, SmoothedY)
            }
            PrevMouseX := SmoothedX
            PrevMouseY := SmoothedY
            PrevTime := CurrentTime
            if (!GetKeyState("LButton", "P")) {
                ShotFired := false
            }
        }   
    }
    Sleep, 0
}
obf_2:
Gui, Submit, NoHide
if (RecoilCheckbox) {
SetTimer, obf_25, 0
} else {
SetTimer, obf_25, Off
}
return
obf_25:
Gui, Submit, NoHide
if (RecoilCheckbox && GetKeyState("LButton", "P")) {
recoilStrength := RecoilStrength / 10
DllCall("mouse_event", "UInt", 0x0001, "Int", 0, "Int", recoilStrength, "UInt", 0, "UInt", 0)
}
return
obf_227:
    Gui, Submit, NoHide
    if (PackBox) {
        SetTimer, obf_223, 0
    } else {
        SetTimer, obf_223, Off
    }
return
SetBatchLines, -1
Gui, Submit, NoHide
obf_223:
    global PrevMouseX := 0, PrevMouseY := 0, PrevTime := 0
    global SpreadCompensation, RecoilCompensation
    global PrevVelocityX := 0, PrevVelocityY := 0
    MaxAdjustment := 55
    SpreadCompensation := PackStrength * 1.35
    RecoilCompensation := PackStrength * 2
    MouseGetPos, MouseX, MouseY
    CurrentTime := A_TickCount
    TimeDiff := CurrentTime - PrevTime
    if (TimeDiff > 0) {
        VelocityX := (MouseX - PrevMouseX) / TimeDiff
        VelocityY := (MouseY - PrevMouseY) / TimeDiff
        SmoothFactor := 0.35
        SmoothVelX := (VelocityX * SmoothFactor) + (PrevVelocityX * (1 - SmoothFactor))
        SmoothVelY := (VelocityY * SmoothFactor) + (PrevVelocityY * (1 - SmoothFactor))
        AdjustX := (SmoothVelX * SpreadCompensation)
        AdjustY := (SmoothVelY * SpreadCompensation)
        recoilAdjustY := (AdjustY - RecoilCompensation * 2)
        AdjustX := (AdjustX > -MaxAdjustment ? (AdjustX < MaxAdjustment ? AdjustX : MaxAdjustment) : -MaxAdjustment)
        AdjustY := (AdjustY > -MaxAdjustment ? (AdjustY < MaxAdjustment ? AdjustY : MaxAdjustment) : -MaxAdjustment)
        obf_22(AdjustX, AdjustY, recoilAdjustY)
        PrevMouseX := MouseX
        PrevMouseY := MouseY
        PrevTime := CurrentTime
        PrevVelocityX := SmoothVelX
        PrevVelocityY := SmoothVelY
    }
    Sleep, 0
return
Clamp(Value, Min, Max)
{
    if (Value < Min)
        return Min
    if (Value > Max)
        return Max
    return Value
}
if (smoothMouse) {
    MouseGetPos, MouseX, MouseY
    Random, RandOffsetX, -AntiShakeX, AntiShakeX
    Random, RandOffsetY, -AntiShakeY, AntiShakeY
    If (Abs(RandOffsetX) >= ShakeThreshold) || (Abs(RandOffsetY) >= ShakeThreshold) {
        NewMouseX := MouseX + RandOffsetX
        NewMouseY := MouseY + RandOffsetY
        SmoothnessFactor := 0.3
        FinalMouseX := MouseX + (NewMouseX - MouseX) * SmoothFactor
        FinalMouseY := MouseY + (NewMouseY - MouseY) * SmoothFactor
        FinalMouseX := Clamp(FinalMouseX, 0, A_ScreenWidth)
        FinalMouseY := Clamp(FinalMouseY, 0, A_ScreenHeight)
        obf_22(FinalMouseX, FinalMouseY)
    }
}
if (keyDelay) {
    SetKeyDelay, -1, -1
} else {
    ;nun
}
if (mouseDelay) {
    SetMouseDelay, -1
    SPI_SETMOUSE = 0x04
    SPI_SETMOUSEBUTTONSWAP = 0x21
    SPI_SETDOUBLECLICKTIME = 0x20
    SPI_SETSNAPTODEFBUTTON = 0x60
    SPI_SETWHEELSCROLLLINES = 0x69
    DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSE, "UInt", 0, "UInt", 0, "UInt", 0)
    DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSEBUTTONSWAP, "UInt", 0, "UInt", 0, "UInt", 0)
    DllCall("SystemParametersInfo", "UInt", SPI_SETDOUBLECLICKTIME, "UInt", 0, "UInt", 250, "UInt", 0)
    DllCall("SystemParametersInfo", "UInt", SPI_SETSNAPTODEFBUTTON, "UInt", 0, "UInt", 0, "UInt", 0)
    DllCall("SystemParametersInfo", "UInt", SPI_SETWHEELSCROLLLINES, "UInt", 0, "UInt", 3, "UInt", 0)
} else {
    ;nun
}
if (inputDelay) {
    Loop {
        Process, Priority, FortniteClient-Win64-Shipping.exe, High
        Sleep, 50
    }
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Control Panel\Mouse, MouseSpeed, 0
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Control Panel\Mouse, MouseThreshold1, 0
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Control Panel\Mouse, MouseThreshold2, 0
    Run, RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
    DllCall("timeBeginPeriod", UInt, 1)
    return
    OnExit("RestoreTimer")
    RestoreTimer() {
        DllCall("timeEndPeriod", UInt, 1)
    }
} else {
    ;nun
}
if (lessPing) {
    RunWait, %ComSpec% /c ipconfig /flushdns, , Hide
    RunWait, %ComSpec% /c ipconfig /release, , Hide
    RunWait, %ComSpec% /c ipconfig /renew, , Hide
    RunWait, %ComSpec% /c netsh int tcp set global autotuninglevel=disabled, , Hide
    RunWait, %ComSpec% /c netsh int tcp set global ecncapability=disabled, , Hide
    RunWait, %ComSpec% /c netsh int tcp set global timestamps=disabled, , Hide
    RunWait, %ComSpec% /c netsh int tcp set global congestionprovider=ctcp, , Hide
    RunWait, %ComSpec% /c netsh int tcp set heuristics disabled, , Hide
    RunWait, %ComSpec% /c netsh interface set interface "Wi-Fi" admin=disable, , Hide
    Sleep, 30
    RunWait, %ComSpec% /c netsh interface set interface "Wi-Fi" admin=enable, , Hide
    RunWait, %ComSpec% /c netsh winsock reset, , Hide
    RunWait, %ComSpec% /c netsh int ip reset, , Hide
    RunWait, %ComSpec% /c wmic process where name="FortniteClient-Win64-Shipping.exe" CALL setpriority "high", , Hide
    RunWait, %ComSpec% /c reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DisableLargeSendOffload /t REG_DWORD /d 1 /f, , Hide
    RunWait, %ComSpec% /c reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f, , Hide
    RunWait, %ComSpec% /c powercfg /setactive SCHEME_MIN, , Hide
    RunWait, %ComSpec% /c reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f, , Hide
    RunWait, %ComSpec% /c taskkill /F /IM "OneDrive.exe", , Hide
    RunWait, %ComSpec% /c taskkill /F /IM "Steam.exe", , Hide
    RunWait, %ComSpec% /c taskkill /F /IM "EpicGamesLauncher.exe", , Hide
} else {
    ;nun
}
if (moreFps) {
    SetBatchLines, -1
    SetWinDelay, -1
    SetControlDelay, -1
    SendMode, Input
    ListLines, Off
    Run, taskkill /f /im "chrome.exe"
    Run, taskkill /f /im "discord.exe"
    Process, Priority, FortniteClient-Win64-Shipping_BE.exe, High
    Run, sysdm.cpl
    WinWait, System Properties
    ControlClick, Button2, System Properties
    WinWait, Performance Options
    ControlClick, Button4, Performance Options
    Sleep, 10
    Run, regedit /e %TEMP%\disable_fullscreen.reg "HKEY_CURRENT_USER\System\GameConfigStore"
    Sleep, 50
    Run, %TEMP%\disable_fullscreen.reg
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\GameBar, AllowAutoGameMode, 1
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\GameBar, AutoGameMode, 1
    Run, regedit /e %TEMP%\disable_windows_update.reg "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
    Sleep, 500
    Run, %TEMP%\disable_windows_update.reg
    Run, discord.exe --no-sandbox --disable-gpu
    Run, taskkill /f /im "EpicGamesLauncher.exe"
    Run, "C:\Program Files\NVIDIA Corporation\Control Panel Client\nvcplui.exe"
    WinWait, NVIDIA Control Panel
} else {
    ;nun
}
