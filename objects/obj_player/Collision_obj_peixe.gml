//ganhando peixe
global.peixes++;

//tocando som de pegar
var _pitch = random_range(0.7, 1.3);
audio_play_sound(snd_pickup, 10, 0, , , _pitch);

//destruindo o peixe
instance_destroy(other);