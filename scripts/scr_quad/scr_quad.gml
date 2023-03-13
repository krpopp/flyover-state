// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_quad(_vb,_x1,_y1,_x2,_y2){
    //Upper triangle
    vertex_position_3d(_vb,_x1,_y1,0);
    vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
    vertex_position_3d(_vb,_x2,_y2,0);

    //Lower Triangle
    vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
    vertex_position_3d(_vb,_x2,_y2,0);
    vertex_position_3d(_vb,_x2,_y2,1); //repositioned vertex
}