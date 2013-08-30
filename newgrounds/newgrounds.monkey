
'** Newgrounds Module
'** Author: Felipe Alfonso, Arthur Bikmullin
'** Web: http://shin.cl/

#If TARGET="flash"
Import "native/newgrounds.as"
#EndIf

Extern
Class Newgrounds
	Function Connect:Void(appId:String, encKey:String)
	Function ShowScoreBoard:Void(sbName:String, x:Float, y:Float)
	Function UnlockMedal:Void(medalName:String)
	Function DisableMedalPopup:Void()
	Function EnableMedalPopup:Void(x:Float, y:Float)
	Function PostScore:Void(sbName:String, score:Float)
	Function HideScoreBoard:Void()
	Function AddFlashAd:Void(x:Float, y:Float)
	Function HideFlashAd:Void()
	Function AdWidth:Float()
	Function AdHeight:Float()
	Function ScoreWidth:Float()
	Function ScoreHeight:Float()
	Function MedalWidth:Float()
	Function MedalHeight:Float()
	Function GetUserName:String()
	Function IsMedalUnlocked:Bool(medalName:String)
	Function IsUser:Bool()
	Function IsConnected:Bool()
	Function AdsApproved:Bool()
End
