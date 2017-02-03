#include <stdio.h>
struct node{
	int value;
	struct node *next;
};
void printLinkedList(struct node n){
	if(n.next == NULL){
		printf("%i\n", n.value);
	}else{
		printf("%i\n", n.value);
		printLinkedList(*(n.next));
	}

}
void main(){
	struct node n1, n2, n3;
	n1.value = 1;
	n1.next = &n2;

	n2.value = 2;
	n2.next = &n3;

	n3.value = 3;
	n3.next = NULL;
	
	printLinkedList(n1);
}
