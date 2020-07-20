#include <stdio.h>

typedef struct {
    char *name;
    
    int age;
    
    char *mail;
}Person;

void clearMail(Person data){
    data.mail = "<<no mail>>";

}

void printPerson(Person data){
    printf("name :%s\n", data.name);
    
    printf("age :%i\n", data.age);
    
    printf("mail :%s\n", data.mail);
    
    printf("\n");
}

int main(int argc, const char * argv[])
{
    Person data = {"taro", 30, "taro@yamada.com"};
    
    printPerson(data);
    
    clearMail(data);
    
    printPerson(data);
    
    return 0;
}
