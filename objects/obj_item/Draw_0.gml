draw_self();
draw_set_font(fnt_itens);
draw_set_halign(1);
draw_set_valign(1);

//desenhando os passaros
draw_sprite(sprite, 0, x, y + 8);

//desenhando os custos
var _xcusto = x - 25;
var _ycusto = y + 60;

draw_sprite_ext(spr_peixe_icone, 0, _xcusto, _ycusto, 1, 1, 0, c_white, 1);
draw_text(_xcusto + 40, _ycusto + 8, custo);

//desenhando o bloqueio
if (bloqueado)
{
    sprite_index = spr_item_bloqueado;
}
else
{
    sprite_index = spr_item_liberado;
}


draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);