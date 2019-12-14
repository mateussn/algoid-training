/* -A GAME BY MATEUS 
-ENJOY THIS GAME!!
*/


//Creating a stamp of a emoji

set player = algo.stamp.clone(array{
{-1, -1,  1,  1,  1,  1, -1, -1},
{-1,  1, 10, 10, 10, 10,  1, -1},
{ 1, 10, 10, 10, 10, 10,  2,  1},
{ 1, 10,  1, 10, 10,  1,  2,  1},
{ 1, 10,  2, 10, 10,  2,  2,  1},
{ 1, 10,  1,  1,  1,  1,  2,  1},
{-1,  1,  2,  2,  2,  2,  1, -1},
{-1, -1,  1,  1,  1,  1, -1, -1}}, 7);

set stage = object(){//stage = palco, cena
	set w = 480; //width
	set h = 480; //height
	
	set draw = function(){
		
	};
}