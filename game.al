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
{-1, -1,  0,  0,  0,  0, -1, -1}}, 10);

//##objeto palco##
set stage = object(){//stage = palco, cena
	//atributos
	set w = 480; //width - largura
	set h = 480; //height - altura
	
	set top = - h / 2;
	set left = -w / 2;
	set right = w / 2;
	set bottom = h / 2;
	 
	//métodos	
	set draw = function(){
		algo.goTo(0,0)
		algo.rect.rect(w, h);
	};
	
	set collide = function(ball){
		if(ball.x + ball.hw >= right || ball.x - ball.hw <= left ){
			ball.velX = -ball.velX;
		}elseif(ball.y - ball.hh <= top || ball.y + ball.hh >= bottom ){
			ball.velY = -ball.velY;
		}
	};
	
};

//##emoji object == bola##
set emoji = object(){
	//atributos
	set stamp = player;
	set x = 70;
	set y = 70;
	set velX = 15;
	set velY = -15;
	set hw = stamp.width/2; // half-width = meia largura 
	set hh = stamp.width/2; //half-height = meia altura
	
	//métodos 
	//método de desenhar a estampa
	set draw = function(){
		algo.goTo(x, y);
		stamp.draw();
	};
	
	//método para animar a bola
	set anim = function(){
		x += velX;
		y += velY;	
		
		//colisão com o palco
		stage.collide(emoji);
	}
	
	set setter = function(val){
		velX = velX + val;
	}
	
};

//Algumas funções 

set i = 0;

set drawLevel = function(){
	stage.draw();
	emoji.draw();
}

set run = function(){
	//algo.autoClear();
	emoji.anim();
	drawLevel();
	i++;
	if(i == 20){
		//emoji.velX += velX + 1;
		emoji.setter(2);
		i = 0;
		
	}
}

util.pulse (run, 30);
algo.hide();








