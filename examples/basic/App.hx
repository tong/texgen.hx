
import js.Browser.document;
import js.Browser.window;
import tg.TexGen;

class App {

	static function main() {

		window.onload = function(_) {

			trace( "TexGen" );

			var texture = new Texture( 256, 256 )
				.add( new tg.XOR().tint( 1, 0.5, 0.7 ) )
				.add( new tg.SinX().frequency( 0.004 ).tint( 0.25, 0, 0 ) )
				.add( new tg.SinY().frequency( 0.004 ).tint( 0.25, 0, 0 ) )
				.add( new tg.SinX().frequency( 0.0065 ).tint( 0.1, 0.5, 0.2 ) )
				.add( new tg.SinY().frequency( 0.0065 ).tint( 0, 0.4, 0.5 ) )
				.add( new tg.Noise().tint( 0.1, 0.1, 0.2 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.SinX().offset( - 16 ).frequency( 0.03 ).tint( 0.1, 0.25, 0.5 ) )
				.add( new tg.SinY().offset( - 16 ).frequency( 0.03 ).tint( 0.1, 0.25, 0.5 ) )
				.add( new tg.Number().tint( 0.75, 0.5, 0.5 ) )
				.add( new tg.SinX().frequency( 0.03 ).tint( 0.2, 0.2, 0.2 ) )
				.add( new tg.SinY().frequency( 0.03 ).tint( 0.2, 0.2, 0.2 ) )
				.add( new tg.Noise().tint( 0.1, 0, 0 ) )
				.add( new tg.Noise().tint( 0, 0.1, 0 ) )
				.add( new tg.Noise().tint( 0, 0, 0.1 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.SinX().frequency( 0.1 ) )
				.mul( new tg.SinX().frequency( 0.05 ) )
				.mul( new tg.SinX().frequency( 0.025 ) )
				.mul( new tg.SinY().frequency( 0.1 ) )
				.mul( new tg.SinY().frequency( 0.05 ) )
				.mul( new tg.SinY().frequency( 0.025 ) )
				.add( new tg.SinX().frequency( 0.004 ).tint( -0.25, 0.1, 0.6 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.XOR() )
				.mul( new tg.OR().tint( 0.5, 0.8, 0.5 ) )
				.mul( new tg.SinX().frequency( 0.0312 ) )
				.div( new tg.SinY().frequency( 0.0312 ) )
				.add( new tg.SinX().frequency( 0.004 ).tint( 0.5, 0, 0 ) )
				.add( new tg.Noise().tint( 0.1, 0.1, 0.2 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.SinX().frequency( 0.01 ) )
				.mul( new tg.SinY().frequency( 0.0075 ) )
				.add( new tg.SinX().frequency( 0.0225 ) )
				.mul( new tg.SinY().frequency( 0.015 ) )
				.add( new tg.Noise().tint( 0.1, 0.1, 0.3 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.SinX().frequency( 0.05 ) )
				.mul( new tg.SinX().frequency( 0.08 ) )
				.add( new tg.SinY().frequency( 0.05 ) )
				.mul( new tg.SinY().frequency( 0.08 ) )
				.div( new tg.Number().tint( 1, 2, 1 ) )
				.add( new tg.SinX().frequency( 0.003 ).tint( 0.5, 0, 0 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.SinX().frequency( 0.066 ) )
				.add( new tg.SinY().frequency( 0.066 ) )
				.mul( new tg.SinX().offset( 32 ).frequency( 0.044 ).tint( 2, 2, 2 ) )
				.mul( new tg.SinY().offset( 16 ).frequency( 0.044 ).tint( 2, 2, 2 ) )
				.sub( new tg.Number().tint( 0.5, 2, 4 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.SinX().frequency( 0.004 ) )
				.mul( new tg.SinY().frequency( 0.004 ) )
				.mul( new tg.SinY().offset( 32 ).frequency( 0.02 ) )
				.div( new tg.SinX().frequency( 0.02 ).tint( 8, 5, 4 ) )
				.add( new tg.Noise().tint( 0.1, 0, 0 ) )
				.add( new tg.Noise().tint( 0, 0.1, 0 ) )
				.add( new tg.Noise().tint( 0, 0, 0.1 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.CheckerBoard() )
				.add( new tg.CheckerBoard().size( 2, 2 ).tint( 0.5, 0, 0 ) )
				.add( new tg.CheckerBoard().size( 8, 8 ).tint( 1, 0.5, 0.5 ) )
				.sub( new tg.CheckerBoard().offset( 16, 16 ).tint( 0.5, 0.5, 0 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.Rect().position( 50, 20 ).size( 150, 130 ).tint( 1, 0.25, 0.25 ) )
				.add( new tg.Rect().position( 20, 65 ).size( 210, 130 ).tint( 0.25, 1, 0.25 ) )
				.add( new tg.Rect().position( 50, 110 ).size( 150, 130 ).tint( 0.25, 0.25, 1 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.CheckerBoard().size( 32, 32 ).tint( 0.5, 0, 0 ) )
				.set( new tg.SineDistort() )
				.toCanvas();
			document.body.appendChild( texture );
			
			var texture = new Texture( 256, 256 )
				.add( new tg.CheckerBoard().size( 32, 32 ).tint( 0.5, 0, 0 ) )
				.set( new tg.Twirl().radius( 128 ).strength ( 75 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.Circle().position( 128, 128 ).radius( 64 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.Circle().position( 128, 128 ).radius( 64 ).delta( 60 ).tint( 1, 0.25, 0.25 ) )
				.set( new tg.Pixelate().size( 8, 8 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.CheckerBoard().tint( 1, 1, 0 ) )
				.set( new tg.Transform().offset( 10, 20 ).angle( 23 ).scale( 2, 0.5 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.CheckerBoard() )
				.and( new tg.Circle().position( 128, 128 ).radius( 80 ) )
				.xor( new tg.Circle().position( 128, 128 ).radius( 64 ) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.CheckerBoard().size( 16,16 ) )
				.set( new tg.Twirl().radius( 128 ).strength ( 75 ) )
				.min( new tg.Circle().position( 128, 128 ).radius( 128 ).delta( 128 ) )
				.toCanvas();
			document.body.appendChild( texture );
		
			///////////////////////////////////////////////////////////////

			//TODO

			/*
			var texture = new Texture( 256, 256 )
				.add( new tg.LinearGradient().interpolation( 0 ).point( 0, [1,1,0,0] ).point( 0.25, [0.2,0,0.5,1]).point( 0.5, [0.5,0.2,0.5,1]).point( 1, [1,0,1,1]) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.LinearGradient().interpolation( 1 ).point( 0, [1,1,0,0] ).point( 0.25, [0.2,0,0.5,1]).point( 0.5, [0.5,0.2,0.5,1]).point( 1, [1,0,1,1]) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new Texture( 256, 256 )
				.add( new tg.LinearGradient().interpolation( 2 ).point( 0, [1,1,0,0] ).point( 0.25, [0.2,0,0.5,1]).point( 0.5, [0.5,0.2,0.5,1]).point( 1, [1,0,1,1]) )
				.toCanvas();
			document.body.appendChild( texture );
			*/

			/*
			var texture = new Texture( 256, 256 )
				.add( new RadialGradient().center( 128, 128 ).radius( 32 ).repeat( true ).interpolation( 0 ).point( 0, [1,1,0,0] ).point( 0.25, [0.2,0,0.5,1]).point( 0.5, [0.5,0.2,0.5,1]).point( 1, [1,0,1,1]) )
				.toCanvas();
			document.body.appendChild( texture );

			var texture = new TG.Texture( 256, 256 )
				.add( new TG.RadialGradient().center( 0, 0 ).radius( 512 ).interpolation( 1 ).point( 0, [1,1,0,0] ).point( 0.25, [0.2,0,0.5,1]).point( 0.5, [0.5,0.2,0.5,1]).point( 1, [1,0,1,1]) )
				.toCanvas();
			document.body.appendChild( texture );
			//
			var texture = new TG.Texture( 256, 256 )
				.add( new TG.RadialGradient().center( 128, 0 ).radius( 200 ).interpolation( 2 ).point( 0, [1,1,0,0] ).point( 0.25, [0.2,0,0.5,1]).point( 0.5, [0.5,0.2,0.5,1]).point( 1, [1,0,1,1]) )
				.toCanvas();
			document.body.appendChild( texture );
			*/

		}
	}
}
