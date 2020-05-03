/* - BY MATEUS NOVAES 14.12.19 - ENJOY THIS */

// This creates the EMOJI stamp
set player = algo.stamp.clone(array{
{-1, -1,  0,  0,  0,  0, -1, -1},
{-1,  0, 10, 10, 10, 10,  0, -1},
{ 0, 10, 10, 10, 10, 10,  2,  0},
{ 0, 10,  0, 10, 10,  0,  2,  0},
{ 0, 10,  2, 10, 10,  2,  2,  0},
{ 0, 10,  0,  0,  0,  0,  2,  0},
{-1,  0,  2,  2,  2,  2,  0, -1},
{-1, -1,  0,  0,  0,  0, -1, -1}}, 10);

// Stage Object
set stage = object(){
	
	// atributes
	set w = 480; // width
	set h = 480; // height
	
	set top = - h / 2;
	set left = -w / 2;
	set right = w / 2;
	set bottom = h / 2;
	 
	// methods
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

// EMOJI Object
set emoji = object(){

	// atributes
	set stamp = player;
	set x = 70;
	set y = 70;
	set velX = 15;
	set velY = -15;
	set hw = stamp.width/2; // half-width of stamp
	set hh = stamp.width/2; // half-height of stamp
	
	// methods 
	set draw = function(){
		
		algo.goTo(x, y);
		stamp.draw();
	};
	
	set anim = function(){
		
		x += velX;
		y += velY;	
		stage.collide(emoji);
	}
	
	set setter = function(val){
		velX = velX + val;
	}
};

set i = 0;

// Some methods
set drawLevel = function(){
	
	stage.draw();
	emoji.draw();
}

set run = function(){
	
	// algo.autoClear();
	emoji.anim();
	drawLevel();
	i++;
	if(i == 20){
		// emoji.velX += velX + 1;
		emoji.setter(2);
		i = 0;
	}
}

util.pulse (run, 30);
algo.hide();
