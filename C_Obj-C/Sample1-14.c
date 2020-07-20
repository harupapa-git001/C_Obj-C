#include <stdio.h>

int main(int argc, const char * argv[])
{
    char txt1[] = "This is test!";
    
    char *txt2 = txt1;
    
    txt1[2] = 'a';
    
    txt1[3] = 't';
    
    txt1[8] = 'H';
    
    txt1[9] = 'A';
    
    txt1[10] = 'G';
    
    txt1[11] = 'E';
    
    printf("%s\n", txt2);
    
    printf("不快になった方がいましたら大変申し訳ありません。\nテストですのでご容赦願います。");
    
    return 0;
}
