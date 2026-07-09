draw_set_font(fnt_pontos);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//esccala das sprites
var _escala = 3;

//texto dos pontos
var _pontos = string(round(global.pontos));

//desenhando os pontos
draw_text(20, 30, "Pontos: " + _pontos);

//desenhando o level
var _x = display_get_gui_width() / 2;
var _y = 50;

draw_sprite_ext(spr_level, global.level, _x, _y, _escala, _escala, 0, c_white, 1);

//desenhando os coletaveis
var _xpeixe = 20;
var _ypeixe = 60;

draw_sprite_ext(spr_peixe_icone, 0, _xpeixe, _ypeixe, _escala, _escala, 0, c_white, 1);
draw_text(_xpeixe + 90, _ypeixe + 25, global.peixes);


draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);