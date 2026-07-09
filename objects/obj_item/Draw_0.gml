//desenhando os botoes
draw_sprite_ext(spr_item, index_fundo, x, y - 5, 3, 3, 0, c_white, 1);

//me desenhando
draw_self();

draw_set_font(fnt_itens);
draw_set_halign(1);
draw_set_valign(1);

//desenhando os custos
var _xcusto = x - 25;
var _ycusto = y + 60;

draw_sprite_ext(spr_peixe_icone, 0, _xcusto, _ycusto, 1, 1, 0, c_white, 1);
draw_text(_xcusto + 40, _ycusto + 8, custo);


draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);