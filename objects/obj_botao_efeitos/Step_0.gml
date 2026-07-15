var _click = mouse_check_button_pressed(mb_left);
var _selecao = position_meeting(mouse_x, mouse_y, self);

//efeitos no botão
if (_selecao)
{
    //efeito de selecionar
    image_xscale = lerp(image_xscale, xscale * 1.2, .2);
    image_yscale = lerp(image_yscale, yscale * 0.9, .2);
    
    //efeito de clicar
    if (_click)
    {
        //efeito de selecionar
        image_xscale = lerp(image_xscale, xscale * 0.7, .2);
        image_yscale = lerp(image_yscale, yscale * 1.5, .2);
        
        //desativando e ativando as layers de efeitos
        global.efeitos = !global.efeitos;
        ativa_efeitos();
    }
}
//voltando ao tamanho normal
else 
{
	image_xscale = lerp(image_xscale, xscale, .2);
    image_yscale = lerp(image_yscale, yscale, .2);
}

//mudando a sprite
if (global.efeitos) image_index = 1;
else                image_index = 0;