# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"



# 1 "font.h" 1
# 1 "text.h" 1
# 9 "text.h"
extern const unsigned char fontdata_6x8[12288];
# 2 "font.h" 2

extern const unsigned char fontdata_6x8[12288];

void drawChar(int row, int col, char ch, unsigned short color);
void drawString(int row, int col, char *str, unsigned short color);
# 5 "main.c" 2
# 1 "myLib.h" 1
# 26 "myLib.h"
void setPixel(int, int, unsigned short);

void drawTriangle(int, int, unsigned short);
void drawBox(int, int, int, int, unsigned short);
void draw();
void update();
void waitForVblank();
# 6 "main.c" 2


int height = 6;
int width = 9;
int colchange = 2;

int playerHeight = 6;
int playerWidth = 4;
int playerRow = 140;
int playerCol = 80;
int playerColDel = 1;
int playerRowDel = 1;

int oldplayerRow;
int oldplayerCol;

int car1row = 35;
int car1col= 232;

int car2row = 115;
int car2col = 2;

int car3row = 60;
int car3col = 210;

int car4row = 85;
int car4col = 5;

int car5row = 47;
int car5col = 108;

int car6row = 92;
int car6col = 35;

int oldcar1col;
int oldcar2col;
int oldcar3col;
int oldcar4col;
int oldcar5col;
int oldcar6col;

int life = 5;

int main() {
    *(unsigned short *)0x4000000 = 3 | (1<<10);;

    while(!(~(*(volatile unsigned int *)0x4000130) & (1<<3))){
        drawString(60, 10, "To play: Use the arrow keys to cross", ((0) | (31)<<5 | (0)<<10));
        drawString(69, 10, "the street without getting hit!", ((0) | (31)<<5 | (0)<<10));
        drawString(78, 10, "You have 5 tries, good luck!", ((0) | (31)<<5 | (0)<<10));
        drawString(100, 10, "Press start to begin.", ((31) | (31)<<5 | (31)<<10));
    }

    for(int i=0; i<159; i++){
        for(int j=0; j<239; j++){
            setPixel(i, j, 0);
        }
    }

    while(1){

        update();
        waitForVblank();
        draw();

    }
}


void update(){

    car1col = car1col - (colchange*2);
    car2col = car2col + (colchange*2);
    car3col = car3col - colchange;
    car4col = car4col + colchange;
    car5col = car5col - (colchange*3);
    car6col = car6col + (colchange*3);

    if (car1col < 0){
        car1col = (239-width);
    }
    if (car3col < 0){
        car3col = (239-width);
    }
    if (car5col < 0){
        car5col = (239-width);
    }

    if(car2col+width > 239){
        car2col = 0;
    }

    if(car4col+width > 239){
        car4col = 0;
    }
    if(car6col+width > 239){
        car6col = 0;
    }


    if((~(*(volatile unsigned int *)0x4000130) & (1<<4))){
        playerCol = playerCol + playerColDel;
    }

    if((~(*(volatile unsigned int *)0x4000130) & (1<<5))){
        playerCol = playerCol - playerColDel;
    }

    if((~(*(volatile unsigned int *)0x4000130) & (1<<6))){
        playerRow = playerRow - playerRowDel;
    }

    if((~(*(volatile unsigned int *)0x4000130) & (1<<7))){
        playerRow = playerRow + playerRowDel;
    }

    if(playerRow > (160 - playerHeight)){
        playerRow = 160 - playerHeight;
    }

    if(playerRow < 0){
        playerRow = 0;
    }

    if(playerCol < 0){
        playerCol = 0;
    }

    if(playerCol > (240 - playerWidth)){
        playerCol = 240 - playerWidth;
    }
    if((playerRow+playerHeight < 25) && (life > 0)){
        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, 0);
            }
        }
        drawString(55, 40, "You Win! You made it", ((31) | (31)<<5 | (0)<<10));
        drawString(65, 40, "without going splat! Woohoo", ((31) | (31)<<5 | (0)<<10));
    }



    if(((playerRow <= (car1row + height)) && (playerCol <= (car1col +width))) &&
        ((playerRow+playerHeight) > car1row) && ((playerCol + playerWidth) >= car1col)){
      life--;
      if (life == 0){

        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, 0);
            }
        }
        drawString(55, 20, "You lost, sorry!", ((31) | (0)<<5 | (0)<<10));
      }
      else{
        playerRow = 140;
        playerCol = 80;
      }
    }

    if(((playerRow <= (car2row + height)) && (playerCol <= (car2col +width))) &&
        ((playerRow+playerHeight) > car2row) && ((playerCol + playerWidth) >= car2col)){
      life--;
      if (life == 0){

        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, 0);
            }
        }
        drawString(55, 20, "You lost, sorry!", ((31) | (0)<<5 | (0)<<10));
      }
      else{
        playerRow = 140;
        playerCol = 80;
      }
    }

    if(((playerRow <= (car3row + height)) && (playerCol <= (car3col +width))) &&
        ((playerRow+playerHeight) > car3row) && ((playerCol + playerWidth) >= car3col)){
      life--;
      if (life == 0){
        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, 0);
            }
        }
        drawString(55, 20, "You lost, sorry!", ((31) | (0)<<5 | (0)<<10));
      }
      else{
        playerRow = 140;
        playerCol = 80;
      }

    }

    if(((playerRow <= (car4row + height)) && (playerCol <= (car4col +width))) &&
        ((playerRow+playerHeight) > car4row) && ((playerCol + playerWidth) >= car4col)){
      life--;
      if (life == 0){
        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, 0);
            }
        }
        drawString(55, 20, "You lost, sorry!", ((31) | (0)<<5 | (0)<<10));
      }
      else{
        playerRow = 140;
        playerCol = 80;
      }

    }
    if(((playerRow <= (car5row + height)) && (playerCol <= (car5col +width))) &&
        ((playerRow+playerHeight) > car5row) && ((playerCol + playerWidth) >= car5col)){
      life--;
      if (life == 0){
        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, 0);
            }
        }
        drawString(55, 20, "You lost, sorry!", ((31) | (0)<<5 | (0)<<10));
      }
      else{
        playerRow = 140;
        playerCol = 80;
      }

    }

    if(((playerRow <= (car6row + height)) && (playerCol <= (car6col +width))) &&
        (((playerRow+playerHeight) > car6row) && ((playerCol + playerWidth) >= car6col))){
      life--;
      if (life == 0){
        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, 0);
            }
        }
        drawString(55, 20, "You lost, sorry!", ((31) | (0)<<5 | (0)<<10));
      }
      else{
        playerRow = 140;
        playerCol = 80;
      }

    }
}

void draw(){

    drawBox(20, 0, 5, 240, ((31) | (31)<<5 | (31)<<10));
    drawBox(130, 0, 5, 240, ((31) | (31)<<5 | (31)<<10));
    drawBox(73, 0, 4, 240, ((31) | (31)<<5 | (0)<<10));
    drawBox(79, 0, 4, 240, ((31) | (31)<<5 | (0)<<10));

    drawBox(136, 0, 23, 240, ((5) | (10)<<5 | (0)<<10));
    drawBox(0, 0, 20, 240, ((5) | (10)<<5 | (0)<<10));



    drawBox(oldplayerRow, oldplayerCol, playerHeight, playerWidth, 0);
    drawBox(playerRow, playerCol, playerHeight, playerWidth, ((31) | (31)<<5 | (31)<<10));

    oldplayerRow = playerRow;
    oldplayerCol = playerCol;



    drawBox(car1row, oldcar1col, height, width, 0);
    drawBox(car2row, oldcar2col, height, width, 0);
    drawBox(car3row, oldcar3col, height, width, 0);
    drawBox(car4row, oldcar4col, height, width, 0);
    drawBox(car5row, oldcar5col, height, width, 0);
    drawBox(car6row, oldcar6col, height, width, 0);

    drawBox(car1row, car1col, height, width, ((0) | (31)<<5 | (0)<<10));
    drawBox(car2row, car2col, height, width, ((12) | (7)<<5 | (17)<<10));
    drawBox(car3row, car3col, height, width, ((31) | (0)<<5 | (31)<<10));
    drawBox(car4row, car4col, height, width, ((0) | (31)<<5 | (31)<<10));
    drawBox(car5row, car5col, height, width, ((31) | (31)<<5 | (0)<<10));
    drawBox(car6row, car6col, height, width, ((31) | (0)<<5 | (0)<<10));


    oldcar1col = car1col;
    oldcar2col = car2col;
    oldcar3col = car3col;
    oldcar4col = car4col;
    oldcar5col = car5col;
    oldcar6col = car6col;
}
