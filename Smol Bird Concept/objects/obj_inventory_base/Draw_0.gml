/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(obj_inventory_base,0,x-6,y-6,12+rowLenght*36,12+(((inventory_slots-1)div rowLenght)+1)*36);


for (var i = 0; i < inventory_slots; i += 1) {
	var xx = x + (i mod rowLenght) * 36 + 2;
	var yy = y + (i div rowLenght) * 36 + 2;
	draw_sprite(spr_slot, 0,xx,yy) 
	if (inventory[i] != -1) {
		draw_sprite(spr_item_twig, inventory[i],xx,yy);
	}
}

