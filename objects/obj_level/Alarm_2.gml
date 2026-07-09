//pegando range aleatorio do y do peixe
var _ypeixe = irandom_range(32, 288);

//criando peixes
instance_create_layer(700, _ypeixe, "Peixes", obj_peixe);

//reiniciando alarme
var _tempo = game_get_speed(gamespeed_fps) * random_range(4, 7);
alarm[2] = _tempo;