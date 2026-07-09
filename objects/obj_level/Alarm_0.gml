//pegando range aleatorio do y da arvore
var _yarvore = irandom_range(360, 424);

//criando arvores
instance_create_layer(700, _yarvore, "Arvores", obj_arvore);

//reiniciando alarme
var _tempo = game_get_speed(gamespeed_fps) * random_range(1, 3);
alarm[0] = _tempo;