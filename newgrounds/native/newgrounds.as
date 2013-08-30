/**
 * Newgrounds module for Monkey.
 * @author Felipe Alfonso, Arthur Bkmullin
 */
import com.newgrounds.*;
import com.newgrounds.components.*;

var sb:ScoreBrowser = new ScoreBrowser();
var ad:FlashAd = new FlashAd();
var medpop:MedalPopup = new MedalPopup();

class Newgrounds 
{
	public static function Connect(apid:String, enckey:String):void
	{
		API.connect(BBFlashGame.FlashGame().GetDisplayObjectContainer(), apid, enckey);
	}
	
	public static function IsConnected():Boolean
	{
		return API.connected;
	}
	
	public static function AdsApproved():Boolean
	{
		return API.adsApproved;
	}
	
	public static function AddFlashAd(_x:Number,_y:Number):void
	{
		ad.x = _x;
		ad.name = "adver";
		ad.y = _y;
		BBFlashGame.FlashGame().GetDisplayObjectContainer().addChild(ad);
	}
	
	public static function AdWidth():Number
	{
		return ad.width;
	}
	
	public static function AdHeight():Number
	{
		return ad.height;
	}
	
	public static function ScoreWidth():Number
	{
		return sb.width;
	}
	
	public static function ScoreHeight():Number
	{
		return sb.height;
	}
	
	public static function HideFlashAd():void
	{
		if (BBFlashGame.FlashGame().GetDisplayObjectContainer().getChildByName("adver") != null)
		{
			BBFlashGame.FlashGame().GetDisplayObjectContainer().removeChild(ad);
		}
	}
	
	public static function ShowScoreBoard(sbName:String,_x:Number,_y:Number):void
	{
		sb.name = "scoreboard";
		sb.scoreBoardName = sbName;
		sb.period = ScoreBoard.ALL_TIME;
		sb.loadScores();
		sb.x = _x;
		sb.y = _y
	
		BBFlashGame.FlashGame().GetDisplayObjectContainer().addChild(sb);
	
	}
	
	public static function HideScoreBoard():void
	{
		if (BBFlashGame.FlashGame().GetDisplayObjectContainer().getChildByName("scoreboard")!=null)
		{
			BBFlashGame.FlashGame().GetDisplayObjectContainer().removeChild(sb);
		}
	
	}
	
	public static function UnlockMedal(medalName:String):void
	{
		API.unlockMedal(medalName);
	}
	
	public static function EnableMedalPopup(_x:Number, _y:Number):void
	{
		medpop.x = _x;
		medpop.y = _y;
		medpop.alwaysOnTop = "true";
		BBFlashGame.FlashGame().GetDisplayObjectContainer().addChild(medpop);
	}
	
	public static function MedalWidth():Number
	{
		return medpop.width;
	}
	
	public static function MedalHeight():Number
	{
		return medpop.height;
	}
	
	public static function DisableMedalPopup():void
	{
		if (BBFlashGame.FlashGame().GetDisplayObjectContainer().getChildByName("medpop")!=null)
		{
			BBFlashGame.FlashGame().GetDisplayObjectContainer().removeChild(medpop);
		}
	}
	
	public static function IsMedalUnlocked(name:String):Boolean
	{
		return API.getMedal(name).unlocked;
	}
	
	public static function PostScore(sbName:String,score:Number):void
	{
		API.postScore(sbName, score);
	}
	
	public static function GetUserName():String
	{
		return API.username;
	}
	
	public static function IsUser():Boolean
	{
		return API.hasUserSession;
	}
}
