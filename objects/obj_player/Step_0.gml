//se perdeu, animação de morte
if (global.perdeu)
{
    //indo pra tras
    hspeed = -2;
    
    //girando
    image_angle += 2;
}
//se n perdeu
else
{
    //pulando
    pulo();
    
    //se bateu na agua ou no chão, perde
    if (y <= 0 || y >= 352)
    {
        perde_jogo();
    }
}

