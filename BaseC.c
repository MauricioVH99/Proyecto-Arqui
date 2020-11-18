#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int converto(int N, int b);
int main(){
int N,b;

    printf("Ingrese el numero decimal, N=");
    scanf("%i",&N);
    printf("Ingrese la nueva base, b=");
    scanf("%i",&b);
    converto(N,b);
return 0;

}
int converto(int N, int b){
    int i,k,t,m;
    char *CN;

m=(int)(log(N)/log(b));
CN=(char *)malloc(m+1);

for(i=0;i<=m;i++){
    t=pow(b,m-i);
    k=(N/t)%b;

    switch(k){
        case 0:
        CN[i]='0';
        break;
        case 1:
        CN[i]='1';
        break;
        case 2:
        CN[i]='2';
        break;
        case 3:
        CN[i]='3';
        break;
        case 4:
        CN[i]='4';
        break;
        case 5:
        CN[i]='5';
        break;
        case 6:
        CN[i]='6';
        break;
        case 7:
        CN[i]='7';
        break;
        case 8:
        CN[i]='8';
        break;
        case 9:
        CN[i]='9';
        break;
        case 10:
        CN[i]='A';
        break;
        case 11:
        CN[i]='B';
        break;
        case 12:
        CN[i]='C';
        break;
        case 13:
        CN[i]='D';
        break;
        case 14:
        CN[i]='E';
        break;
        case 15:
        CN[i]='F';
        break;
        case 16:
        CN[i]='G';
        break;
        case 17:
        CN[i]='H';
        break;
        case 18:
        CN[i]='I';
        break;
        case 19:
        CN[i]='J';
        break;
        case 20:
        CN[i]='K';
        break;
        case 21:
        CN[i]='L';
        break;
        case 22:
        CN[i]='M';
        break;
        case 23:
        CN[i]='N';
        break;
        case 24:
        CN[i]='O';
        break;
        case 25:
        CN[i]='P';
        break;
        case 26:
        CN[i]='Q';
        break;
        case 27:
        CN[i]='R';
        break;
        case 28:
        CN[i]='S';
        break;
        case 29:
        CN[i]='T';
        break;
        case 30:
        CN[i]='U';
        break;
        
    }
}
printf("(%i)_10=(%s)_%i \n",N,CN,b);
free(CN);
return 0;
}
