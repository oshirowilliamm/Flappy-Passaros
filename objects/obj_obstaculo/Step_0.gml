//andando mais rapido conforme os levels vao passando
hspeed = hspd - global.level;

//se o jogo acabou
if (global.perdeu)
{
    //para de andar
    hspeed = 0;
    
    //para animação
    image_index = 0;
    image_speed = 0;
}

//destrindo se sair da tela
if (x < -50) instance_destroy();