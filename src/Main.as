package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	
	public class Main extends MovieClip {
		var s:Square;
		
		public function Main() {
			// constructor code
			trace("hi")
			s = new Square()
			s.x = 20;
			s.y = 20;
			addChild(s)
			
			s.addEventListener(MouseEvent.CLICK, onSquareClicked)
			
			addEventListener(Event.ENTER_FRAME, onEnterFrame)
		}
		
		
		public function onSquareClicked(e:MouseEvent){
			trace("clicked")
			
			for (var i=0;i<10;i++) {
				e.currentTarget.x += 1;
			}
		}
		
		public function onEnterFrame(e){
			
		}
		
	}
	
}
