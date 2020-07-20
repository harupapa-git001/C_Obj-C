#include <stdio.h>

int main(int argc, const char * argv[])
{
    int n = 1234;
    
    int res = 0;
    
    int count = 0;
    
    while(count <= n){
        res += count++;
    
    }
    printf("%i total :%i", n, res);
    
    return 0;
}
