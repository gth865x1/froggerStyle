#include "myLib.h"

unsigned short *videoBuffer = (unsigned short *)0x6000000;

DMA *dma = (DMA *)0x40000B0;

void setPixel(int row, int col, unsigned short color)
{
    videoBuffer[OFFSET(row,col, 240)] = color;
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
       DMANow(3, &c, &videoBuffer[OFFSET(row+r, col, 240)], DMA_ON | width | DMA_SOURCE_FIXED);
    }
}

void fillScreen3(unsigned short color)
{
    volatile unsigned short c = color;
    DMANow(3, &c, videoBuffer, 38400|DMA_ON | DMA_DESTINATION_INCREMENT | DMA_SOURCE_FIXED);
       
}


void waitForVblank()
{
	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}