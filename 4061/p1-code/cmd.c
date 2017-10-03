#include<stdio.h>
#include<commando.h>

cmd_t *cmd_new(char *argv[]) {
	
	cmd_t *cmdPtr = malloc(sizeof(cmd_t));
	cmdPtr->name = strdup(argv[0]);
	cmdPtr->argv = argv;

};
/* Allocate a new cmd_t with the given argv[] array. Make string
   copies of each of the strings contained within argv[] using
   strdup() as they likely come from a source that will be
   altered. Ensure that cmd->argv[] is ended with NULL. Set the name
   field to be the argv[0]. Set finished to 0 (not finished yet). Set
   str_status to be "INIT" using snprintf(). Initialize the remaining
   fields to obvious default values such as -1s, and NULLs.*/

void cmd_free(cmd_t *cmd);
// // Deallocate a cmd structure. Deallocate the strings in the argv[]
// // array. Also deallocat the output buffer if it is not NULL. Finally,
// // deallocate cmd itself.

void cmd_start(cmd_t *cmd);
// // Fork a process and start the command in cmd in it.  Change the
// // str_status field to "RUN" using snprintf().  Create a pipe for
// // out_pipe to capture standard output.  In the parent process, ensure
// // that the pid field is set to the child PID.  In the child process,
// // direct standard output to the pipe using the dup2() command. For
// // both parent and child, ensure that unused file descriptors for the
// // pipe are closed (write in the parent, read in the child).

void cmd_update_state(cmd_t *cmd, int block);
// // If the finished flag is 1, do nothing. Otherwise, update the state
// // of cmd.  Use waitpid() and the pid field of command to wait
// // selectively for the given process. Pass the block argumnent, one of
// // DOBLOCK or NOBLOCK, to waitpid() to cause either non-blocking or
// // blocking waits.  Use the macro WIFEXITED to check the returned
// // status for whether the command has exited. If so, set the finished
// // field to 1 and set the cmd->status field to the exit status of the
// // cmd using the WEXITSTATUS macro. Call cmd_fetch_output() to fill up
// // the output buffer for later printing.
// //
// // When a command finishes (the first time), print a status update
// // message of the form
// //
// // @!!! ls[#17331]: EXIT(0)
// //
// // which includes the command name, PID, and exit status.

char *read_all(int fd, int *nread);
// // Read all input from the open file descriptor fd. Store the results
// // in a dynamically allocated buffer which may need to grow as more
// // data is read.  Use an efficient grown scheme such as doubling the
// // size of the buffer when additional space is needed. Use realloc()
// // for resizing.  When no data is left in fd, set the integer pointed
// // to by nread to the number of bytes read and return a pointer to the
// // allocated buffer. UPDATE: Make sure to null-terminate the string
// // that is returned.

void cmd_fetch_output(cmd_t *cmd);
// // If cmd->finished is zero, print an error message with the format
// // 
// // ls[#12341] not finished yet
// // 
// // Otherwise retrieves output from the cmd->out_pipe and fills
// // cmd->output setting cmd->output_size to number of bytes in
// // output. Data should be read() from the cmd's out_pipe into
// // cmd->out_buf (allocated in this function). If out_buf runs out of
// // space, realloc() it to a larger size and continue reading. Using a
// // temporary buffer may help with this.
//
void cmd_print_output(cmd_t *cmd);
// // Print the output of the cmd contained in the output field if it is
// // non-null. Print an error message like
// // 
// // ls[#17251] has no output yet
// //
// // if output is NULL. The message includes the command name and PID.
