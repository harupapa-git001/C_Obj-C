#include <stdio.h>

int main(int argc, const char * argv[])
{
    int data[] = {12, 345, 6789};
    
    int *arr = data;
    
    for(int i = 0; i < 3; i++){
        printf("%i\n", *arr++);
    
    }
    return 0;
}
