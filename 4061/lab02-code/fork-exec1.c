#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

int main(void){

  char *child_argv[] = {"pwd",NULL,NULL,NULL};
  char *child_cmd = "pwd";

  printf("Running command '%s'\n",child_cmd);
  printf("------------------\n");
  pid_t child = fork();
  if (child == 0) {
	 execvp(child_cmd,child_argv);
  }
  waitpid(child, NULL, 0);
  printf("------------------\n");
  printf("Finished\n");
  return 0;
}
  
