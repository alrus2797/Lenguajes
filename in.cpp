#include<iostream>


int input(int n, int p){
    int i = 0;
    int res=0;
    for(int i =0;i<=n;i++){
        res+=i*p;
    }
    return res;
}

int main(){
    input(5,3);
}
