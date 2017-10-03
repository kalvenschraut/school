#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>

int main(void) {
  // Make sure to compile sleep_print first:
  // gcc -o sleep_print sleep_print.c
  char *child_argv[] = {"./sleep_print","5","CHILD: Awake and Done",NULL};
  pid_t child_pid = fork();
  if(child_pid == 0){
    execvp(child_argv[0],child_argv);
    perror("errno indicates");
    printf("Couldn't run '%s': is it compiled??\n",child_argv[0]);
    exit(1);
  }
  int done = 0;
  while(!done){
    printf("Type text or quit to exit and then press enter to check on child:\n");
    char buffer[1024];
    char *input = fgets(buffer,1024,stdin);
	int eq;
    input[strlen(input)-1] = '\0'; // Eliminate newline in buffer
	eq = strncmp(&input[strlen(input)-4], "quit", 4);
	if (eq != 0) {
		printf("Entered text: '%s'\n",input);
		printf("Waiting\n");
		int status;
		pid_t pid = waitpid(child_pid, &status, WNOHANG);
		if (pid == 0) {
			printf("child not finished: wait returned 0\n");
		} else if (WIFEXITED(status)) {
			printf("CHILD FINISHED STATUS: %d\n", WEXITSTATUS(status));
			done = 1;
		} else if (WIFSIGNALED(status)) {
			printf("Child killed by signal number %d\n", WTERMSIG(status));
			done = 1;
		}
	} else {
		printf("Killing child\n");
		kill(child_pid, SIGKILL);
		done = 1;
	}
  }
  printf("Exiting wait-loop\n");
  return 0;
}


