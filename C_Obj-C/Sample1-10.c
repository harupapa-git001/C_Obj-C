#include <stdio.h>

int main(int argc, const char * argv[])
{
    int arr[5] = {10, 20, 30, 40, 50};
    
    int res = 0;
    
    for(int i = 0; i < 5; i++){
        res += arr[i];
        
    }
    printf("total :%i", res);
    
    return 0;
}
