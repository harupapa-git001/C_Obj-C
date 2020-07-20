#include <stdio.h>

void print100Total(){
    int total = 0;
    
    for(int i = 1; i <= 100; i++){
        total += i;
        
    }
    printf("total :%i\n", total);
}

void printTotal(int n){
    int total = 0;
    
    for(int i = 1; i <= n; i++){
        total += i;
        
    }
    printf("total :%i\n", total);

}

int getTotal(int n){
    int total = 0;
    
    for(int i = 1; i <= n; i++){
        total += i;
        
    }
    return total;
}

int main(int argc, const char * argv[])
{
    print100Total();
    
    printTotal(100);
    
    printf("Total = %i\n", getTotal(100));
    
    return 0;
}
