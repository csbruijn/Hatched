/// @description Variables and Vertex Buffer

//-------------------------Flowers--------------------------------//
//Sprite - Flowers
spriteF = spr_flower_1;
framesF = sprite_get_number(spriteF);
textureF = sprite_get_texture(spriteF, 0);

widthF = sprite_get_width(spriteF);
heightF = sprite_get_height(spriteF);

//Flowers
flowerscount = 5;
colorF = c_white;
alphaF = 1;



//Vertex format - Grass
vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();

formatF = vertex_format_end();

//Vertex buffer - Grass
vbuffF = vertex_create_buffer();

vertex_begin(vbuffF, formatF);

repeat (flowerscount) 
{
	//Grass coordinates
	var _x1F = irandom_range(bbox_left, bbox_right);
	var _y1F = irandom_range(bbox_top, bbox_bottom);
	var _x2F = _x1F + widthF;
	var _y2F = _y1F + heightF;
	
	var _depthF = -_y2F;
	
	//Texture coordinates - Grass
	var _frameF = irandom(framesF - 1);
	var _uvsF = sprite_get_uvs(spriteF, _frameF);
	
	//Triangle 1 - Flowers
	vertex_position_3d(vbuffF, _x1F, _y1F, _depthF);
	vertex_texcoord(vbuffF, _uvsF[0], _uvsF[1]);
	vertex_color(vbuffF, colorF, alphaF);
	
	vertex_position_3d(vbuffF, _x2F, _y1F, _depthF);
	vertex_texcoord(vbuffF, _uvsF[2], _uvsF[1]);
	vertex_color(vbuffF, colorF, alphaF);
	
	vertex_position_3d(vbuffF, _x1F, _y2F, _depthF);
	vertex_texcoord(vbuffF, _uvsF[0], _uvsF[3]);
	vertex_color(vbuffF, colorF, alphaF);
	
	//Triangle 2 - Flowers
	vertex_position_3d(vbuffF, _x2F, _y1F, _depthF);
	vertex_texcoord(vbuffF, _uvsF[2], _uvsF[1]);
	vertex_color(vbuffF, colorF, alphaF);
	
	vertex_position_3d(vbuffF, _x1F, _y2F, _depthF);
	vertex_texcoord(vbuffF, _uvsF[0], _uvsF[3]);
	vertex_color(vbuffF, colorF, alphaF);
	
	vertex_position_3d(vbuffF, _x2F, _y2F, _depthF);
	vertex_texcoord(vbuffF, _uvsF[2], _uvsF[3]);
	vertex_color(vbuffF, colorF, alphaF);
}

vertex_end(vbuffF);
vertex_freeze(vbuffF);


