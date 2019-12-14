/* -A GAME BY MATEUS 
		-ENJOY THIS GAME!!
*/


//Criar a estampa do emoji
set player = algo.stamp.clone(array{
{-1, -1,  0,  0,  0,  0, -1, -1},
{-1,  0, 10, 10, 10, 10,  0, -1},
{ 0, 10, 10, 10, 10, 10,  2,  0},
{ 0, 10,  0, 10, 10,  0,  2,  0},
{ 0, 10,  2, 10, 10,  2,  2,  0},
{ 0, 10,  0,  0,  0,  0,  2,  0},
{-1,  0,  2,  2,  2,  2,  0, -1},
{-1, -1,  0,  0,  0,  0, -1, -1}}, 7);

//##objeto palco##
set stage = object(){//stage = palco, cena
	//atributos
	set w = 480; //width - largura
	set h = 480; //height - altura
	//métodos	
	set draw = function(){
		algo.goTo(0,0)
		algo.rect.rect(w, h);
	};
}

//##emoji object##
set emoji = object(){
	//atributos
	set stamp = player;
	set x;
	set y;
	
	//métodos 
	set draw = function(){
		algo.goTo(x, y);
		stamp.draw();
	};
	
}

algo.hide();
emoji.draw();
stage.draw();








