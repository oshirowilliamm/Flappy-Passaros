//colocando a sprite de acordo com os passaros
sprite_index = sprite;

//index do fundo do item
index_fundo = 0;

//posição do retangulo do item
x1_item = x - (sprite_get_width(spr_item) * 3) / 2;
y1_item = y - 5 - (sprite_get_height(spr_item) * 3) / 2;
x2_item = x + (sprite_get_width(spr_item) * 3) / 2;
y2_item = y - 5 + (sprite_get_height(spr_item) * 3) / 2