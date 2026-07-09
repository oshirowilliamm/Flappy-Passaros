//não desenha se tiver transição acontecendo
if (!global.transicao) exit;

draw_set_font(fnt_pontos);
draw_set_valign(1);

//desenhando os coletaveis
var _xpeixe = 20;
var _ypeixe = 20;

draw_sprite_ext(spr_peixe_icone, 0, _xpeixe, _ypeixe, 3, 3, 0, c_white, 1);
draw_text(_xpeixe + 90, _ypeixe + 25, global.peixes);

draw_set_valign(-1);
draw_set_font(-1);