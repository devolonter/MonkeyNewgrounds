/**
	 * Newgrounds module for Monkey.
	 * @author Felipe Alfonso
	 */
	import com.newgrounds.*;
	import com.newgrounds.components.*;
	import org.flashdevelop.utils.FlashViewer;
	var sb:ScoreBrowser = new ScoreBrowser();
	var ad:FlashAd = new FlashAd();
	var medpop:MedalPopup = new MedalPopup();
	class Ng 
	{
		public static function Connect(apid:String, enckey:String):void
		{
			API.connect(game, apid, enckey);
		}
		
		public static function AddFlashAd(_x:Number,_y:Number):void
		{
			ad.x = _x;
			ad.name = "adver";
			ad.y = _y;
			game.addChild(ad);
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
			if (game.getChildByName("adver") != null)
			{
				game.removeChild(ad);
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
		
			game.addChild(sb);
		
		}
		
		public static function HideScoreBoard():void
		{
			if (game.getChildByName("scoreboard")!=null)
			{
				game.removeChild(sb);
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
			game.addChild(medpop);
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
			if (game.getChildByName("medpop")!=null)
			{
				game.removeChild(medpop);
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
