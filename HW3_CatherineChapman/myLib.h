#define REG_DISPCTL *(unsigned short *)0x4000000
#define VIDEO_BUFFER ((unsigned short *)0x6000000)

#define SCANLINECOUNTER *(volatile unsigned short *)0x4000006

#define BG2_ENABLE (1<<10);
#define MODE3 3

#define COLOR(r, g, b) ((r) | (g)<<5 | (b)<<10)

#define OFFSET(r,c, rowLength) ((r)*rowLength+(c))

#define RED COLOR(31, 0, 0)
#define GREEN COLOR(0, 31, 0)
#define BLUE COLOR(0, 0, 31)
#define MAGENTA COLOR(31, 0, 31)
#define CYAN COLOR(0, 31, 31)
#define YELLOW COLOR(31, 31, 0)
#define BLACK 0
#define WHITE COLOR(31, 31, 31)
#define GRAY COLOR(25, 25, 25)
#define PURPLE COLOR(12, 7, 17)
#define DRKGREEN COLOR(5, 10, 0)
#define DRKGRAY COLOR(4, 4, 4)

void setPixel(int, int, unsigned short);

void drawTriangle(int, int, unsigned short);
void drawBox(int, int, int, int, unsigned short);
void draw();
void update();
void waitForVblank();

#define BUTTON_A		(1<<0)
#define BUTTON_B		(1<<1)
#define BUTTON_SELECT	(1<<2)
#define BUTTON_START	(1<<3)
#define BUTTON_RIGHT	(1<<4)
#define BUTTON_LEFT		(1<<5)
#define BUTTON_UP		(1<<6)
#define BUTTON_DOWN		(1<<7)
#define BUTTON_R		(1<<8)
#define BUTTON_L		(1<<9)

#define KEY_DOWN_NOW(key)  (~(BUTTONS) & key) //used in an if statement to evaluate whether something is happening or not

#define BUTTONS *(volatile unsigned int *)0x4000130