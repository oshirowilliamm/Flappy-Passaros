//gravidade
gravity = .1;

//começa sem animação
image_speed = 0;

//mudando a sprite do player
sprite_index = global.sprite_player;


//pulando
pulo = function()
{
    var _pulo = keyboard_check_pressed(vk_space);
    
    //pulando apenas se não bateu a asa ainda
    if (_pulo && image_index <= 0)
    {
        //pulando
        vspeed = -4;
        
        //ativando animação de bater asas
        image_index = 1;
        image_speed = 1;
    }
}