var _click = mouse_check_button_pressed(mb_left);
var _selecao = position_meeting(mouse_x, mouse_y, self);

//efeitos no item
if (_selecao)
{
    image_index = 1;
    
    //comprando o item, se o item tiver liberado, n compra
    if (_click && bloqueado)
    {
        if (global.peixes >= custo)
        {
            //desbloqueando
            bloqueado = false;
            
            //gastando peixes
            global.peixes -= custo;
        }
    }
}
//voltando ao index normal
else 
{
	image_index = 0;
}