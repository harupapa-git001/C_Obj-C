#include <stdio.h>

int main(int argc, const char * argv[])
{
    int n = 123;
    
    int res = 0;
    
    for(int i = 0; i <= n; i++){
        res += i;
        
    }
    printf("%i total :%i", n, res);
    
    return 0;
}
