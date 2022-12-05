// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move()
{
var vx = argument[0];
var vy = argument[1];

//move()
/// horizotall movement
if (place_meeting(x+vx,y ,obj_block))
{
while(!place_meeting(x+sign(vx),y ,obj_block))
{
x+=sign(vx);
}
vx=0;
}
if(place_meeting(x+obj_swarm.sprite_width,y ,obj_block)&&place_meeting(x+vx,y,obj_swarm))
{
	vx=0;
}
if(place_meeting(x-obj_swarm.sprite_width,y ,obj_block)&&place_meeting(x+vx,y,obj_swarm))
{
	vx=0;
}
x+=vx;
/// Vertical movement
if (place_meeting(x,y+vy ,obj_block))
{
while(!place_meeting(x,y+sign(vy) ,obj_block))
{
y+=sign(vy);
}
vy=0;
}
if(place_meeting(x,y+obj_swarm.sprite_height,obj_block)&&place_meeting(x,y+vy,obj_swarm))
{
	vy=0;
}
if(place_meeting(x,y-obj_swarm.sprite_height,obj_block)&&place_meeting(x,y+vy,obj_swarm))
{
	vy=0;
}
y+=vy;

}
