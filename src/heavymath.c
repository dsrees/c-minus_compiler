int answer;

int main(void) {
    int a;;
    int b;
    int c;
    int d;
    int e;
    int f;
    int arr[4];

    a = 594;
    b= 2432;
    c = 2600/2;
    d = e = f = b + c;
    
    arr[0] = a;
    arr[arr[0]-a + 1*2 - 1] = b/c*d+a-b / f;

    arr[1] = 2;
    arr[arr[1]] = 3;
    arr[arr[arr[1]]] = arr[0]-c/a;

    if(arr[0] > 3) {
        answer = 42;
    }else{
    answer = arr[0];
    }

    return 0;

}