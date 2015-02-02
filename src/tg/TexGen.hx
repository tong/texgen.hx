package tg;

import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.Float32Array;
import js.html.ImageData;

@:native('TG.Texture')
extern class Texture {
	
	function new( width : Int, height : Int ) : Void;
	
	function set( program : Program, ?operation : Dynamic ) : Texture;
	function add( program : Program ) : Texture;
	function sub( program : Program ) : Texture;
	function mul( program : Program ) : Texture;
	function div( program : Program ) : Texture;
	function and( program : Program ) : Texture;
	function xor( program : Program ) : Texture;
	function min( program : Program ) : Texture;
	function max( program : Program ) : Texture;

	function toImageData( context : CanvasRenderingContext2D ) : ImageData;
	function toCanvas() : CanvasElement;
}

@:native('TG.Program')
extern class Program {
	//TODO
	//@:native('tint')
	//var colors : Float32Array;
	function new( object : Dynamic ) : Void;
	function tint( r : Float, g : Float, b : Float ) : Program;
	function getSource() : String;
}

@:native('TG.XOR')
extern class XOR extends Program {
	function new() : Void;
}

@:native('TG.SinX')
extern class SinX extends Program {
	function new() : Void;
	function frequency( value : Float ) : SinX;
	function offset( value : Float ) : SinX;
	function getParams() : {frequency:Float,offset:Float};
}

@:native('TG.SinY')
extern class SinY extends Program {
	function new() : Void;
	function frequency( value : Float ) : SinY;
	function offset( value : Float ) : SinY;
	function getParams() : {frequency:Float,offset:Float};
}

@:native('TG.Noise')
extern class Noise extends Program {
	function new() : Void;
	function getParams() : Dynamic;
}

@:native('TG.Number')
extern class Number extends Program {
	function new() : Void;
	function getParams() : Dynamic;
}

@:native('TG.OR')
extern class OR extends Program {
	function new() : Void;
	function getParams() : Dynamic;
}

@:native('TG.CheckerBoard')
extern class CheckerBoard extends Program {
	function new() : Void;
	function size( x : Float, y : Float ) : CheckerBoard;
	function offset( x : Float, y : Float ) : CheckerBoard;
	function rowShift( value : Float ) : CheckerBoard;
	function getParams() : {size:Array<Float>,offset:Array<Float>,rowShift:Float};
}

@:native('TG.Rect')
extern class Rect extends Program {
	function new() : Void;
	function position( x : Float, y : Float ) : Rect;
	function size( x : Float, y : Float ) : Rect;
	function getParams() : {position:Array<Float>,size:Array<Float>};
}

@:native('TG.Circle')
extern class Circle extends Program {
	function new() : Void;
	function delta( value : Int ) : Circle;
	function position( x : Float, y : Float ) : Circle;
	function radius( value : Int ) : Circle;
	function getParams() : {position:Array<Float>,radius:Float,delta:Int};
}

@:native('TG.SineDistort')
extern class SineDistort extends Program {
	function new() : Void;
	function sines( x : Float, y : Float ) : SineDistort;
	function offset( x : Float, y : Float ) : SineDistort;
	function amplitude( x : Float, y : Float ) : SineDistort;
	function getParams() : {sines:Array<Float>,offset:Array<Float>,amplitude:Array<Float>};
}

@:native('TG.Twirl')
extern class Twirl extends Program {
	function new() : Void;
	function strength( value : Float ) : Twirl;
	function radius( value : Float ) : Twirl;
	function position( x : Float, y : Float ) : Twirl;
	function getParams() : {strength:Float,radius:Float,position:Array<Float>};
}

@:native('TG.Pixelate')
extern class Pixelate extends Program {
	function new() : Void;
	function size( x : Float, y : Float ) : Rect;
}

@:native('TG.Transform')
extern class Transform extends Program {
	function new() : Void;
	function offset( x : Float, y : Float ) : Transform;
	function angle( value : Float ) : Transform;
	function scale( x : Float, y : Float ) : Transform;
}

//TODO erroooooorrrs

/*
@:native('TG.LinearGradient')
extern class LinearGradient extends Program {
	function new() : Void;
	function repeat( value : Float ) : LinearGradient;
	function interpolation( value : Float ) : LinearGradient;
	function point( position : Float, color : Array<Float> ) : LinearGradient;
	function getParams() : {gradient:ColorInterpolator};
}


@:native('TG.RadialGradient')
extern class RadialGradient extends Program {
	function new() : Void;
	function repeat( value : Float ) : LinearGradient;
	function interpolation( value : Float ) : LinearGradient;
	function point( position : Float, color : Array<Float> ) : LinearGradient;
	function getParams() : {gradient:ColorInterpolator};
}

@:native('TG.ColorInterpolator')
extern class ColorInterpolator {
}
*/
