#include <stdio.h>

int main(int argc, const char * argv[])
{
    int n = 12;
    
    switch((n % 12) / 3){
        case 0:
            printf("%i gatsu is Winter.", n);
            
        case 1:
            printf("%i gatsu is Spring.", n);
        
        case 2:
            printf("%i gatsu is Summer.", n);
            
        case 3:
            printf("%i gatsu is Fall.", n);
    }
    return 0;
}
