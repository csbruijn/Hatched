/// @description Variables and Vertex Buffer

//-------------------------Grass--------------------------------//
//Sprite - Grass
sprite = spr_grass_1;
frames = sprite_get_number(sprite);
texture = sprite_get_texture(sprite, 0);

width = sprite_get_width(sprite);
height = sprite_get_height(sprite);

//Grass
grasscount = 10;

color = c_white;
alpha = 1;



//Vertex format - Grass
vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();

format = vertex_format_end();

//Vertex buffer - Grass
vbuff = vertex_create_buffer();

vertex_begin(vbuff, format);

repeat (grasscount) 
{
	//Grass coordinates
	var _x1 = irandom_range(bbox_left, bbox_right);
	var _y1 = irandom_range(bbox_top, bbox_bottom);
	var _x2 = _x1 + width;
	var _y2 = _y1 + height;
	
	var _depth = -_y2;
	
	//Texture coordinates - Grass
	var _frame = irandom(frames - 1);
	var _uvs = sprite_get_uvs(sprite, _frame);
	
	//Triangle 1 - Grass
	vertex_position_3d(vbuff, _x1, _y1, _depth);
	vertex_texcoord(vbuff, _uvs[0], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, _x2, _y1, _depth);
	vertex_texcoord(vbuff, _uvs[2], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, _x1, _y2, _depth);
	vertex_texcoord(vbuff, _uvs[0], _uvs[3]);
	vertex_color(vbuff, color, alpha);
	
	//Triangle 2 - Grass
	vertex_position_3d(vbuff, _x2, _y1, _depth);
	vertex_texcoord(vbuff, _uvs[2], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, _x1, _y2, _depth);
	vertex_texcoord(vbuff, _uvs[0], _uvs[3]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, _x2, _y2, _depth);
	vertex_texcoord(vbuff, _uvs[2], _uvs[3]);
	vertex_color(vbuff, color, alpha);
}

vertex_end(vbuff);
vertex_freeze(vbuff);


