draw_self();
draw_set_font(fnt_botao);
draw_set_halign(1);
draw_set_valign(1);

//texto com efeito do botao
draw_text_transformed(x, y - 5, texto, image_xscale / 2, image_yscale, 0);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);