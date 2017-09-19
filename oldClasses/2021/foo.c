#define <stdio.c>
void foo(int x)
{
	int a[3];
	char buf[4];
	a[0] = 0xF0F1F2F3;
	a[1] = x;
	gets(buf);
	printf("a[0] = 0x%x, a[1] = 0x%x. buf = %s\n", a[0], a[1],buf);
}
void main(){
}
