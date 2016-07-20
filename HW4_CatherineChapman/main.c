//Catherine Chapman
//Homework 4 - Road Warriors - Now with Pedestrians, pause, and structs!

#include "font.h"
#include "myLib.h"
#include "text.h"
#include <stdlib.h>
#include <stdio.h>

typedef struct
{
    int row;
    int col;
    int height;
    int width;
    int colchange;
    unsigned short color;

} CAR;

#define NUMCARS 6
CAR cars[NUMCARS];
CAR oldcars[NUMCARS];


typedef struct{
    int playerRow;
    int playerCol;
    int playerHeight;
    int playerWidth;
    int playerRowDel;
    int playerColDel;

} PLAYER;

PLAYER player;
PLAYER oldplayer;

int life;
int state;

enum{INSTRUCT, GAME, WIN, LOSE, PAUSE};

unsigned int buttons;
unsigned int oldButtons;

void initialize();
void game();
void instruct();
void pause();
void win();
void lose();

int main() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;

    
    state = INSTRUCT;
    fillScreen3(WHITE);

    while(1){   
        oldButtons = buttons;
        buttons = BUTTONS; 
        
        switch(state){
            case INSTRUCT:
                instruct();
                break;
            case GAME:
                game();
                break;
            case LOSE:
                lose();
                break;
            case WIN:
                win();
                break;
            case PAUSE:
                pause();
                break;
        }
    }
}

void instruct(){
    drawString(20, 10, "To play: Use the arrow keys to cross", DRKGREEN);
    drawString(29, 10, "the street without getting hit!", DRKGREEN);
    drawString(48, 10, "You have 5 tries, good luck!", DRKGREEN);
    drawString(70, 10, "To pause the game: hit start.", DRKGREEN);
    drawString(100, 10, "Press start to begin the game.", BLACK);

    if(BUTTON_PRESSED(BUTTON_START)){      
        fillScreen3(BLACK);
        initialize();
        state = GAME;
        waitForVblank();

    }


}
void game(){
    if(BUTTON_PRESSED(BUTTON_START)){
        state = PAUSE;
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        fillScreen3(BLACK);
        initialize();
        state = GAME;
    }
        update();
        waitForVblank();
        draw();
}

void pause(){
    drawString(50, 3, "You're paused! Press Start to continue,", ORANGE);
    drawString(60, 15, "select to return to start screen", ORANGE);

    if(BUTTON_PRESSED(BUTTON_START)){
        fillScreen3(BLACK);
        state = GAME;
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        fillScreen3(WHITE);
        state = INSTRUCT;
    }
}

void win(){
    drawString(55, 40, "You Win! You made it", ORANGE);
    drawString(65, 40, "without going splat! Woohoo", ORANGE);
    drawString(120, 20, "Hit Start to play again.", BLACK);
        if(BUTTON_PRESSED(BUTTON_START)){
            fillScreen3(WHITE);
            state = INSTRUCT;
            waitForVblank();
        }

}

void lose(){
    drawString(55, 20, "You lost, sorry!", RED);
    drawString(120, 20, "Hit Start to play again.", RED);
    if(BUTTON_PRESSED(BUTTON_START)){
        fillScreen3(WHITE);
        state = INSTRUCT;
        waitForVblank();
    }

}

void initialize(){
    for (int i = 0; i < NUMCARS; ++i)
    {
        cars[i].height = 6;
        cars[i].width = 9;
        cars[i].colchange = 1+ rand()%5;
    }

    cars[0].row = 35;
    cars[0].col = 232;
    cars[0].color = GREEN;

    cars[1].row = 47;
    cars[1].col = 108;
    cars[1].color = YELLOW;

    cars[2].row = 60;
    cars[2].col = 210;
    cars[2].color = MAGENTA;

    cars[3].row = 85;
    cars[3].col = 5;
    cars[3].color = CYAN;

    cars[4].row = 92;
    cars[4].col = 35;
    cars[4].color = RED;    

    cars[5].row = 115;
    cars[5].col = 2;
    cars[5].color = PURPLE;

    player.playerHeight = 6;
    player.playerWidth = 4;
    player.playerRow = 140;
    player.playerCol = 80;
    player.playerColDel = 1;
    player.playerRowDel = 1;

    life = 5;

}

void update(){
    for(int i=0; i<NUMCARS;i++){
        oldcars[i] = cars[i];
    }

    cars[0].col = cars[0].col - cars[0].colchange;
    cars[1].col = cars[1].col - cars[1].colchange;
    cars[2].col = cars[2].col - cars[2].colchange;
    cars[3].col = cars[3].col + cars[3].colchange;
    cars[4].col = cars[4].col + cars[4].colchange;
    cars[5].col = cars[5].col + cars[5].colchange;

    oldplayer = player;

    for (int i=0; i<3; i++){
        if (cars[i].col < 0){
            cars[i].col = (239 - cars[i].width);
        }
    }

    for(int i=3; i<6; i++){
        if(cars[i].col+cars[i].width > 239){
            cars[i].col = 0;
        }
    }

    //Keyhandlers for player movement here
    if(BUTTON_HELD(BUTTON_RIGHT)){
        player.playerCol = player.playerCol + player.playerColDel;
    }
    
    if(BUTTON_HELD(BUTTON_LEFT)){
        player.playerCol = player.playerCol - player.playerColDel;
    }
    
    if(BUTTON_HELD(BUTTON_UP)){
        player.playerRow = player.playerRow - player.playerRowDel;
    }
    
    if(BUTTON_HELD(BUTTON_DOWN)){
        player.playerRow = player.playerRow + player.playerRowDel;
    }
    
    if(player.playerRow > (160 - player.playerHeight)){
        player.playerRow = 160 - player.playerHeight;
    }

    if(player.playerRow < 0){
        player.playerRow = 0;
    }

    if(player.playerCol < 0){
        player.playerCol = 0;
    }

    if(player.playerCol > (240 - player.playerWidth)){
        player.playerCol = 240 - player.playerWidth;
    }

    if((player.playerRow+player.playerHeight < 25) && (life > 0)){
        fillScreen3(WHITE);
        state = WIN;
    }

    //collision handling for player vs all cars
    //also handles life loss and LOSE state switch.

    for(int i=0; i< NUMCARS; i++){
        if(((player.playerRow <= (cars[i].row + cars[i].height)) && (player.playerCol <= (cars[i].col +cars[i].width))) &&
        ((player.playerRow+player.playerHeight) > cars[i].row) && ((player.playerCol + player.playerWidth) >= cars[i].col)){
            life--;
            if (life == 0){
                fillScreen3(BLACK);
                state = LOSE;
            }
            else{
                player.playerRow = 140;
                player.playerCol = 80;
            }  
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
    drawBox(oldplayer.playerRow, oldplayer.playerCol, oldplayer.playerHeight, oldplayer.playerWidth, BLACK);
    drawBox(player.playerRow, player.playerCol, player.playerHeight, player.playerWidth, WHITE);
    

    //These are the cars the player's dodging
    for(int i=0; i<NUMCARS; i++){
        drawBox(oldcars[i].row, oldcars[i].col, oldcars[i].height, oldcars[i].width, BLACK);
        drawBox(cars[i].row, cars[i].col, cars[i].height, cars[i].width, cars[i].color);
    }

    //Shows you how many lives you have left
    char lifeBuffer[41];
    sprintf(lifeBuffer, "Lives: %d", life);
    drawString(148, 12, lifeBuffer, GRAY);
   
}   

