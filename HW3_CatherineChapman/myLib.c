#include "myLib.h"

void setPixel(int row, int col, unsigned short color)
{
    VIDEO_BUFFER[OFFSET(row,col, 240)] = color;
}

void drawTriangle(int row, int col, unsigned short color) {

    int base = 20;
    int height = 20;
    int hyp = 21;

	int b, h, d;

    for(h = 0; h<height; h++){
        setPixel(row+h, col, color);
    }
    for(b = 0; b<base; b++){
        setPixel(row, col+b, color);
            
        for(d=0; d<hyp; d++){
            setPixel(row+h-d, col+d, color);
        }
    }
}

void drawBox(int row, int col, int height, int width, unsigned short color){
    int r, c;
    for (r=0; r<height; r++){
        for(c=0; c<width; c++){
            setPixel(r+row, c+col, color);
        }
    }
}

void waitForVblank()
{
	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}