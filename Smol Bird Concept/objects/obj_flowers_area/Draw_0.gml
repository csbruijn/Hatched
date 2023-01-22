/// @description Draw Buffer

//3D - Flowers
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);

//Submit
vertex_submit(vbuffF, pr_trianglelist, textureF);
/*
//3D - flowers
gpu_set_ztestenable(false);
gpu_set_alphatestenable(false);