package{
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.events.Event; 
	
	public class Main extends MovieClip{
		
		var s:StartScreen = new StartScreen;
		var g:GameScreen = new GameScreen;
		
		public function Main(){
			s.addEventListener("stop", GotoNextScreen);
			addChild(s);
		}
		
		private function GotoNextScreen(argument:Event):void
		{
			removeChild(s);
			addChild(g);
		    s.removeEventListener("stop", GotoNextScreen);
		}
	}
}