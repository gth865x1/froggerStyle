# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1
# 26 "myLib.h"
void setPixel(int, int, unsigned short);

void drawTriangle(int, int, unsigned short);
void drawBox(int, int, int, int, unsigned short);
void draw();
void update();
void waitForVblank();
# 2 "myLib.c" 2

void setPixel(int row, int col, unsigned short color)
{
    ((unsigned short *)0x6000000)[((row)*240 +(col))] = color;
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
 while(*(volatile unsigned short *)0x4000006 > 160);
 while(*(volatile unsigned short *)0x4000006 < 160);
}
