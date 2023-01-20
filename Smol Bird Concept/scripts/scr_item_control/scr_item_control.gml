// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function store_item_data(){
	stored_item = a; 
	a[0] = item;
	a[1] = x;
	a[2] = y;
	a[3] = room;
	
array_push(itemData,stored_item);

}

function spawn_items(){
	var array_count = 0; 
	for (var i=0; i<array_length(itemData);i++){
		if  stored_item[3] == room {
			array_delete(itemData, i, 1);
			instance_create_depth(stored_item.x, stored_item.y,-y,obj_item_overworld)
			with (obj_item_overworld) {
				item = stored_item[0];
			}
		}
		else {
			array_count++;
		}
	}
}



	





