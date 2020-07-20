#include <stdio.h>

int main(int argc, const char * argv[])
{
    char arr[] = "Hello!";
    
    int n = sizeof(arr);
    
    for(int i = 0; i < n; i++){
        printf("%c", arr[i]);
        
    }
    printf(" (%i)", n);
    
    return 0;
}
