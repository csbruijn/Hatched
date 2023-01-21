/// @description Draw Buffer
//3D - Grass
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
//Submit
vertex_submit(vbuff, pr_trianglelist, texture);
//3D - Grass
gpu_set_ztestenable(false);
gpu_set_alphatestenable(false);