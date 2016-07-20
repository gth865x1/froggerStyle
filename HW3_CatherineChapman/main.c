//Catherine Chapman
//Homework 3 - Road Warriors - Now with Pedestrians

#include "font.h"
#include "myLib.h"
#include "text.h"

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
    REG_DISPCTL = MODE3 | BG2_ENABLE;

    while(!KEY_DOWN_NOW(BUTTON_START)){
        drawString(60, 10, "To play: Use the arrow keys to cross", GREEN);
        drawString(69, 10, "the street without getting hit!", GREEN);
        drawString(78, 10, "You have 5 tries, good luck!", GREEN);
        drawString(100, 10, "Press start to begin.", WHITE);
    }

    for(int i=0; i<159; i++){
        for(int j=0; j<239; j++){
            setPixel(i, j, BLACK);
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

    //Keyhandlers for player movement here
    if(KEY_DOWN_NOW(BUTTON_RIGHT)){
        playerCol = playerCol + playerColDel;
    }
    
    if(KEY_DOWN_NOW(BUTTON_LEFT)){
        playerCol = playerCol - playerColDel;
    }
    
    if(KEY_DOWN_NOW(BUTTON_UP)){
        playerRow = playerRow - playerRowDel;
    }
    
    if(KEY_DOWN_NOW(BUTTON_DOWN)){
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
                setPixel(i, j, BLACK);
            }
        }
        drawString(55, 40, "You Win! You made it", YELLOW);
        drawString(65, 40, "without going splat! Woohoo", YELLOW);
    }

    //collision handling for player vs all cars

    if(((playerRow <= (car1row + height)) && (playerCol <= (car1col +width))) &&
        ((playerRow+playerHeight) > car1row) && ((playerCol + playerWidth) >= car1col)){
      life--;
      if (life == 0){

        for(int i=0; i<159; i++){
            for(int j=0; j<239; j++){
                setPixel(i, j, BLACK);
            }
        }
        drawString(55, 20, "You lost, sorry!", RED);
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
                setPixel(i, j, BLACK);
            }
        }
        drawString(55, 20, "You lost, sorry!", RED);
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
                setPixel(i, j, BLACK);
            }
        }
        drawString(55, 20, "You lost, sorry!", RED);
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
                setPixel(i, j, BLACK);
            }
        }
        drawString(55, 20, "You lost, sorry!", RED);
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
                setPixel(i, j, BLACK);
            }
        }
        drawString(55, 20, "You lost, sorry!", RED);
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
                setPixel(i, j, BLACK);
            }
        }
        drawString(55, 20, "You lost, sorry!", RED);
      }
      else{
        playerRow = 140;
        playerCol = 80;
      }  

    }
}

void draw(){

    drawBox(20, 0, 5, 240, WHITE);
    drawBox(130, 0, 5, 240, WHITE);
    drawBox(73, 0, 4, 240, YELLOW);
    drawBox(79, 0, 4, 240, YELLOW);
    
    drawBox(136, 0, 23, 240, DRKGREEN);
    drawBox(0, 0, 20, 240, DRKGREEN);

    //This is the player!

    drawBox(oldplayerRow, oldplayerCol, playerHeight, playerWidth, BLACK);
    drawBox(playerRow, playerCol, playerHeight, playerWidth, WHITE);
    
    oldplayerRow = playerRow;
    oldplayerCol = playerCol;


    //These are the cars the player's dodging
    drawBox(car1row, oldcar1col, height, width, BLACK);
    drawBox(car2row, oldcar2col, height, width, BLACK);
    drawBox(car3row, oldcar3col, height, width, BLACK);
    drawBox(car4row, oldcar4col, height, width, BLACK);
    drawBox(car5row, oldcar5col, height, width, BLACK);
    drawBox(car6row, oldcar6col, height, width, BLACK);   
    
    drawBox(car1row, car1col, height, width, GREEN);
    drawBox(car2row, car2col, height, width, PURPLE);
    drawBox(car3row, car3col, height, width, MAGENTA);
    drawBox(car4row, car4col, height, width, CYAN);
    drawBox(car5row, car5col, height, width, YELLOW);
    drawBox(car6row, car6col, height, width, RED);


    oldcar1col = car1col;
    oldcar2col = car2col;
    oldcar3col = car3col;
    oldcar4col = car4col;
    oldcar5col = car5col;
    oldcar6col = car6col;
}   

