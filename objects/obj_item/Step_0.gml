var _selecao = point_in_rectangle(mouse_x, mouse_y, x1_item, y1_item, x2_item, y2_item);
var _click = mouse_check_button_pressed(mb_left);
var _bloqueado = global.bloqueados[index];

//se tiver bloqueado, nao tem animação
if (_bloqueado) 
{
    image_index = 0;
    image_speed = 0;
}
else 
{
	//so tem animação se o passaro estiver selecionado
    if (global.sprite_player == sprite) 
    {
        image_speed = 1;
    }
    else 
    {
        image_index = 0;
        image_speed = 0;
    }
}


//efeitos no item
if (_selecao)
{
    //efeito de seleção
    index_fundo = _bloqueado + 2;
    
    //comprando o item, se o item tiver liberado, n compra
    if (_click)
    {
        //se tiver bloqueado, compra o item
        if (_bloqueado)
        {
            if (global.peixes >= custo)
            {
                //desbloqueando
                global.bloqueados[index] = false;
                
                //gastando peixes
                global.peixes -= custo;
                
                //selecionando sprite 
                global.sprite_player = sprite;
            }
        }
        //se tiver desbloqueado, seleciona o item
        else 
        {
            //selecionando sprite
        	global.sprite_player = sprite;
        }
    }
}
//voltando ao index normal
else 
{
    index_fundo = _bloqueado;
}