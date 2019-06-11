#include <stdio.h>
#include <stdlib.h>
#define MAX_N 20000
int main(int argc, const char **argv) {
    int n = atoi(argv[1]);
    int sieve[MAX_N];
    int h;
    int i;  //I could probably define these on the same line
    int j;
    int k;
    for(h=0;h<MAX_N;h++){
        sieve[h]=h;   //fill the array with natural numbers and zero- there's some debate that zero is natural
    }
    for(i=2;i<n;i++){
        for(j=i+i;j<n;j=j+i){ //i and j will never have the same value
            if(sieve[j]!=0){
                sieve[j]=0;  //paint the doorpost with lamb's blood
            }
        }
    }
    for(k=2;k<n;k++){
        if(sieve[k]!=0) {
            printf("%d\t", sieve[k]);  //print every number not passed over
        }
    }
    printf("Hello, World!\n");
    printf("%s\n",argv[0],argv[1]);
    printf("%d\n",n);
    return 0;
}