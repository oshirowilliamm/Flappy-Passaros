//pegando range aleatorio do y do passaro
var _ypassaro = irandom_range(48, 88);

//criando passaros
instance_create_layer(700, _ypassaro, "Passaros", obj_inimigo);

//reiniciando alarme
var _tempo = game_get_speed(gamespeed_fps) * random_range(2, 5);
alarm[1] = _tempo;