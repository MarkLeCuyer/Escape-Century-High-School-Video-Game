/// @description Set Up Camera

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width (cam) * 0.4; 
view_h_half = camera_get_view_height (cam) * 0.7; 
xTo = xstart; 
yTo = ystart;

shake_length = 0; 
shake_magnitude = 0;
shake_remain = 0; 
buff = 32; 
