//parando de tocar o som
audio_stop_all();

if (!global.transicao)
{
    //criando a transição
    layer_sequence_create("Transicao", 0, 0, sq_transicao2);
}
