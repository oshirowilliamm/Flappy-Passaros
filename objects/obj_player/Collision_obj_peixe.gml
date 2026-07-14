//ganhando peixe
global.peixes++;

//tocando som
var _pitch = random_range(0.8, 1.2);

audio_play_sound(snd_pickup, 10, 0, , , _pitch);

//destruindo o peixe
instance_destroy(other);