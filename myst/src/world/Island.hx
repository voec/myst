package world;

import com.haxepunk.Tween.TweenType;
import com.haxepunk.tweens.misc.Alarm;
import persp.Camera3D;
import persp.Entity3D;
import com.haxepunk.Entity;
import com.haxepunk.Graphic;
import com.haxepunk.graphics.Image;
import com.haxepunk.graphics.Spritemap;
import com.haxepunk.graphics.Text;
import com.haxepunk.HXP;
import com.haxepunk.Mask;
import com.haxepunk.math.Vector;
import com.haxepunk.Sfx;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;
import openfl.geom.Vector3D;
import openfl.geom.Point;

/**
 * ...
 * @author 
 */
class Island extends Entity3D
{
	
	private var sprite:Image = new Image("gfx/test-peice.png");

	public function new(x:Float=0, y:Float=0, z:Float=0, frameLayer:Int=0) 
	{
		
		z += frameLayer * 3.5;
		
		super(x, y, z);
		
		//sprite.angle = frameLayer;
		
		addGraphic(sprite);
		
		//sprite.frame = frameLayer;
		
		sprite.originY = sprite.height;
		
		sprite.smooth = false;
		
	}
	
	override public function render():Void
	{
		super.render();
		sprite.scale = gfxScale;
	}
	
}