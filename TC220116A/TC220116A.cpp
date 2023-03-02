extern "C" int printf(const char*, ...);

enum DAY
{   MON=1, TUE, WED, THU, FRI, SAT, SUN
};

typedef struct 
{   int x;
    int y; 
} Struct1;

int g_a;

int fun1(int x)
{   
    typedef struct 
    {   int x;
        int y; 
    } Struct2;
    
    Struct2 st2;
    st2.x = 1;
    st2.y = 2;    
    
    return x+st2.x;
}

//int main (int argc, char *argv[])
int main(){

    //int v1[10] = {0};         // not support
    //int v2[2][2] =            // not support
    //{
    //    {1,2},
    //    {2,3},
    //};
    
    int a       = 1;
    short int b = 2;
    short c     = 3;
    const int d = 4;
    int* p      = &a;
    int   r;
    //const char* s = "abc";    // issue
    Struct1 st1;
    enum DAY e1 = WED;
    

    st1.x = 1;
    st1.y = 2;    

    printf("Hello, world\n");
    printf("a=%d, b=%d, c=%d, d=%d, *p=%d\n", a, b, c, d, *p);
    //printf("s=%s\n", s);
    r = fun1(1);
    printf("fun1=%d\n", r);
    printf("st1.x=%d\n", st1.x);
    printf("e1=%d\n", e1);
    
    return r;
}
