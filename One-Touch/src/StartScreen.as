package  {
	
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	
	
	public class StartScreen extends MovieClip {
		
		
		public function StartScreen() 
		{
			addEventListener(Event.ADDED_TO_STAGE, OnAdded);
		}
		
		private function OnAdded(argument:Event)  :void
		{
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			
		}
		
		private function onKeyDown(argument:KeyboardEvent)  :void
		{
			if(argument.keyCode == Keyboard.SPACE)
			{
			this.dispatchEvent(new Event ("stop", true));
			}
		}
	}
	
}
