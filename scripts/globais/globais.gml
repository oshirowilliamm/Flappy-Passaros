//debug para ver o framerate do jogo
//show_debug_overlay(true);

randomise();

//saber que o player perdeu
global.perdeu = false;

//pontos
global.pontos = 0;

//level
global.level = 0;
global.lista_pontos = [100, 250, 500, 800, 1200, 1800, 2500, 3500, 5000];

//coletavel (peixe)
global.peixes = 0;

//destino da transicao
global.destino = rm_game;

//variavel de controle para criar a transição
global.transicao = true;

//variavel para o bloqueio dos itens
global.bloqueados = [false, true, true];

//variavel para saber qual sprite do player
global.sprite_player = spr_arara;

//variavel de controle para ativar os efeitos
global.efeitos = true;


//função para perder o jogo
function perde_jogo()
{
    //só posso perder, se ainda n perdi
    if (global.perdeu) exit;
    
    //perdi
    global.perdeu = true;

    //subindo
    vspeed = -4;
    
    //fazendo o background parar
    layer_hspeed("bg_arvores",          0);
    layer_hspeed("bg_reflexo_arvores",  0);
    layer_hspeed("bg_reflexo_agua",     0);
    
    //reiniando o jogo em um certo tempo
    alarm[0] = game_get_speed(gamespeed_fps);
    
    //criando a transição
    global.destino = rm_inicial;
    layer_sequence_create("Transicao", 0, 0, sq_transicao);
}

//função para resetar variaveis globais ao perder
function reseta_global()
{
    //tirando o perde
    global.perdeu = false;
    
    //reiniciando pontos
    global.pontos = 0;
    
    //reiniciando level
    global.level = 0;
}

//função de ir para room
function muda_room()
{
    global.transicao = false;
    room_goto(global.destino);
}

//função que liga a transição de volta
function liga_transicao()
{
    global.transicao = true;
}

//função para ativar e desativar os efeitos
function ativa_efeitos()
{
    layer_enable_fx("Folhas", global.efeitos);
    layer_enable_fx("bg_reflexo_agua", global.efeitos);
    layer_enable_fx("bg_reflexo_arvores", global.efeitos);
    layer_enable_fx("bg_reflexo_lua", global.efeitos);
    layer_enable_fx("Peixes", global.efeitos);
}