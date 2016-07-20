# 1 "font.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "font.c"
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];

void drawChar(int row, int col, char ch, unsigned short color);
void drawString(int row, int col, char *str, unsigned short color);
# 2 "font.c" 2
# 1 "myLib.h" 1
# 26 "myLib.h"
void setPixel(int, int, unsigned short);

void drawTriangle(int, int, unsigned short);
void drawBox(int, int, int, int, unsigned short);
void draw();
void update();
void waitForVblank();
# 3 "font.c" 2

void drawChar(int row, int col, char ch, unsigned short color){
 int r, c;
 for(r=0; r<8; r++){
  for(c=0; c<6; c++){
   if(fontdata_6x8[((r)*6 +(c)) + 48*ch]){
    setPixel(r+row, c+col, color);
   }
  }
 }
}

void drawString(int row, int col, char *str, unsigned short color){
 while(*str){
  drawChar(row, col, *str, color);
  str++;
  col+= 6;

 }
}
