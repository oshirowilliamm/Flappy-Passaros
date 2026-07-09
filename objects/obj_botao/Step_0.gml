var _click = mouse_check_button_pressed(mb_left);
var _selecao = position_meeting(mouse_x, mouse_y, self);

//mudando cor do botão de acordo com o texto
switch (texto) 
{
	case "Jogar": image_index = 1; break;
    case "Loja":  image_index = 2; break;
}

//efeitos no botão
if (_selecao)
{
    //efeito de selecionar
    image_xscale = lerp(image_xscale, xscale * 1.2, .2);
    image_yscale = lerp(image_yscale, yscale * 0.9, .2);
    
    //efeito de clicar
    if (_click)
    {
        image_xscale = lerp(image_xscale, xscale * 0.7, .2);
        image_yscale = lerp(image_yscale, yscale * 1.5, .2);
        
        if (global.transicao)
        {
            //efeito de transição
            global.destino = destino;
            layer_sequence_create("Transicao", 0, 0, sq_transicao);
            
            //desligando a transição
            global.transicao = false;
        }
    }
}
//voltando ao tamanho normal
else 
{
	image_xscale = lerp(image_xscale, xscale, .2);
    image_yscale = lerp(image_yscale, yscale, .2);
}