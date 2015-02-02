
import js.Browser.document;
import js.Browser.window;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import tg.TexGen;

class App {

	static var i = 0;
	static var size = 300;
	static var canvas : CanvasElement;
	static var context : CanvasRenderingContext2D;

	static function render() {

		var texture = new tg.Texture( size, size )
			.add( new tg.SinX().frequency( 0.05+i/1000 ) )
			.mul( new tg.SinX().frequency( 0.08-i/2000 ) )
			.add( new tg.SinY().frequency( 0.05-i/1000 ) )
			.mul( new tg.SinY().frequency( 0.08+i/2000 ) )
			.div( new tg.Number().tint( 1, 2, 1 ) )
			.add( new tg.SinX().frequency( 0.003 ).tint( 0.5, 0, 0 ) )
			.toImageData( context );
		context.putImageData( texture, 0, 0 );

		var texture = new tg.Texture( size, size )
			.add( new tg.SinX().frequency( 0.066 + 0.05*Math.sin(i/100) ) )
			.add( new tg.SinY().frequency( 0.066 + 0.05*Math.sin(i/100) ) )
			.mul( new tg.SinX().offset( 32 ).frequency( 0.044 + 0.09*Math.sin(i/100) ).tint( 2, 2, 2 ) )
			.mul( new tg.SinY().offset( 16 ).frequency( 0.044 + 0.09*Math.sin(i/100) ).tint( 2, 2, 2 ) )
			.sub( new tg.Number().tint( 0.5, 2, 4 ) )
			.toImageData(context);
		context.putImageData( texture, size, 0 );

		var texture = new tg.Texture( size, size )
			.add( new tg.SinX().frequency( 0.004 + 0.002*Math.sin(i/100)) )
			.mul( new tg.SinY().frequency( 0.004	+ 0.002*Math.sin(i/100)) )
			.mul( new tg.SinY().offset( 32 ).frequency( 0.04 + 0.02*Math.sin(i/100) ) )
			.div( new tg.SinX().frequency( 0.02 ).tint( 8, 5, 4 ) )
			.add( new tg.Noise().tint( 0.1, 0, 0 ) )
			.add( new tg.Noise().tint( 0, 0.1, 0 ) )
			.add( new tg.Noise().tint( 0, 0, 0.1 ) )
			.toImageData(context);
		context.putImageData( texture, size * 2, 0 );

		i++;
	}

	static function animate() {
		render();
		window.requestAnimationFrame( untyped animate );
	}

	static function main() {

		window.onload = function(_) {

			trace( "TexGen" );

			var canvas = document.createCanvasElement();
			canvas.width = size * 3;
			canvas.height = size;
			document.body.appendChild( canvas );

			context = canvas.getContext2d();

			animate();
		}
	}
}
