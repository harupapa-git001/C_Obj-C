#include <stdio.h>

typedef struct {
    char *name;
    
    int age;
    
    char *mail;
}Person;

void printPerson(Person data){
    printf("name :%s\n", data .name);
    
    printf("age :%i\n", data.age);
    
    printf("mail :%s\n", data.mail);
    
    printf("\n");
}

int main(int argc, const char * argv[])
{
    Person data1 = {"taro", 30, "taro@yamada.com"};
    
    Person data2 = {"hanako", 24, "hanako@flower.jp"};
    
    printPerson(data1);
    
    printPerson(data2);
    
    return 0;
}
