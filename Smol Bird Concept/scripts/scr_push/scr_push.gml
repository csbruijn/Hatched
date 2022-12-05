function scr_push()
{
 // horizoltal push
 if (place_meeting(x+vx/2,y,obj_swarm))
 {
 var block= instance_place(x+vx/2,y,obj_swarm);
 with(obj_swarm)
 {
 scr_move(obj_player.vx/2,0);
 }
 vx /=2;
 }
 
 // vertical push
 if (place_meeting(x,y+vy/2,obj_swarm))
 {
 var block= instance_place(x,y+vy/2,obj_swarm);
 with(obj_swarm)
 {
 scr_move(0,obj_player.vy/2);
 }
 vy /=2;
 }

}
