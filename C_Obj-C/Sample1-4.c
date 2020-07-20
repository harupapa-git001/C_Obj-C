#include <stdio.h>

int main(int argc, const char * argv[])
{
    int n = 12345;
    
    if(n % 2 == 0){
        printf("%i is even number.", n);
    
    } else {
        printf("%i is odd number.", n);
        
    }
    return 0;
}
