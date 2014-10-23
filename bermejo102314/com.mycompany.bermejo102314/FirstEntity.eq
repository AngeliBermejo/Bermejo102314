
/*
 * FirstEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class FirstEntity : SEEntity
{
	SESprite monster;
	SESprite text;
	int w;
	int h;
	int m_x;
	int m_y;
	int p_x;
	int p_y;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
	
		rsc.prepare_image("mymonster","monster",0.1*w,0.1*w);
		monster = add_sprite_for_image(SEImage.for_resource("mymonster"));
		monster.move(Math.random(0,w),Math.random(0,h));
	}
	
	public void tick(TimeVal now, double delta) {
		var p_x = MainScene.x;
		var p_y = MainScene.y;
		base.tick(now, delta);
		var m_x = monster.get_x();
		var m_y = monster.get_y();
		monster.move(m_x+(p_x-m_x)/Math.random(100,500),m_y+(p_y-m_y)/Math.random(100,500));

		 if((mx/p_x)==1 && (my/p_y)==1){
            text.set_text("GAME OVER!");
            text.move(0.35*w, 0.45*h);
        }
	}
	
	public void cleanup() {
		base.cleanup();
	}
}
