# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1
# 28 "myLib.h"
extern unsigned short *videoBuffer;

void setPixel(int, int, unsigned short);

void drawBox(int, int, int, int, unsigned short);
void draw();
void update();
void waitForVblank();
void fillScreen3(unsigned short color);
# 50 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;






void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control);






typedef volatile struct
{
        volatile const void *src;
        volatile void *dst;
        volatile unsigned int cnt;
} DMA;

extern DMA *dma;
# 2 "myLib.c" 2

unsigned short *videoBuffer = (unsigned short *)0x6000000;

DMA *dma = (DMA *)0x40000B0;

void setPixel(int row, int col, unsigned short color)
{
    videoBuffer[((row)*240 +(col))] = color;
}

void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control)
{
    dma[channel].src = source;
    dma[channel].dst = destination;
    dma[channel].cnt = control;

}

void drawBox(int row, int col, int height, int width, unsigned short color){
    int r;
    volatile unsigned short c = color;
    for (r=0; r<height; r++){
       DMANow(3, &c, &videoBuffer[((row+r)*240 +(col))], (1 << 31) | width | (2 << 23));
    }
}

void fillScreen3(unsigned short color)
{
    volatile unsigned short c = color;
    DMANow(3, &c, videoBuffer, 38400|(1 << 31) | (0 << 21) | (2 << 23));

}


void waitForVblank()
{
 while(*(volatile unsigned short *)0x4000006 > 160);
 while(*(volatile unsigned short *)0x4000006 < 160);
}
