//criando a transição
layer_sequence_create("Transicao", 0, 0, sq_transicao2);

//parando de tocar o som
audio_stop_all();

//tocando a musica do jogo
audio_play_sound(snd_background, 0, 1);