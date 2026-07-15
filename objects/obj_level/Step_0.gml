 if (global.perdeu == false)
{
    //ganhando pontos
    global.pontos += .1;
    
    if (global.level < array_length(global.lista_pontos))
    {
        //subindo o level de acordo com os pontos necessários pro proximo level
        var _pontos_necessarios = global.lista_pontos[global.level];
        
        if (global.pontos >= _pontos_necessarios)
        {
            //subindo level
            global.level++;
            
            //tocando som de level up
            audio_play_sound(snd_levelup, 10, 0);
            
            //aumentando velocidade do background
            layer_hspeed("bg_arvores",          (- global.level - 1));
            layer_hspeed("bg_reflexo_arvores",  (- global.level - 1) * .5);
            layer_hspeed("bg_reflexo_agua",     (- global.level - 1));
        }
    }
}