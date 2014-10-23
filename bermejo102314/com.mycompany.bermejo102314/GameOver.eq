

/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver: SEScene
{
		SESprite image;

		public void initialize(SEResourceCache rsc) {
			base.initialize(rsc);
			add_sprite_for_color(Color.instance("white"),get_scene_width(),get_scene_height());
			rsc.prepare_image("myimage","gameover",get_scene_width(),get_scene_height());
			image = add_sprite_for_image(SEImage.for_resource("myimage"));		
	}	
}
