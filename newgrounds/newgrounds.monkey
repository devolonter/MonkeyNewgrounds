
'** Newgrounds Module
'** Author: Felipe Alfonso
'** Web: http://shin.cl/

#If TARGET="flash"
Import "native/Ng.as"
#EndIf

Extern
Class Newgrounds
	Function Connect:Void(appId:String, encKey:String) = "Ng.Connect"
	Function ShowScoreBoard:Void(sbName:String, x:Float, y:Float) = "Ng.ShowScoreBoard"
	Function UnlockMedal:Void(medalName:String) = "Ng.UnlockMedal"
	Function DisableMedalPopup:Void() = "Ng.DisableMedalPopup"
	Function EnableMedalPopup:Void(x:Float, y:Float) = "Ng.EnableMedalPopup"
	Function PostScore:Void(sbName:String, score:Float) = "Ng.PostScore"
	Function HideScoreBoard:Void() = "Ng.HideScoreBoard"
	Function AddFlashAd:Void(x:Float, y:Float) = "Ng.AddFlashAd"
	Function HideFlashAd:Void() = "Ng.HideFlashAd"
	Function AdWidth:Float() = "Ng.AdWidth"
	Function AdHeight:Float() = "Ng.AdHeight"
	Function ScoreWidth:Float() = "Ng.ScoreWidth"
	Function ScoreHeight:Float() = "Ng.ScoreHeight"
	Function MedalWidth:Float() = "Ng.MedalWidth"
	Function MedalHeight:Float() = "Ng.MedalHeight"
	Function GetUserName:String() = "Ng.GetUserName"
	Function IsMedalUnlocked:Bool(medalName:String) = "Ng.IsMedalUnlocked"
	Function IsUser:Bool() = "Ng.IsUser"
	Function IsConnected:Bool() = "Ng.IsConnected"
	Function AdsApproved:Bool() = "Ng.AdsApproved"
End