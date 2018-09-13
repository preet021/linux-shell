#ifndef SHELL_H
	
	#define SHELL_H

	extern char home[1024];
	extern char pwd[1024];
	extern int is_bg;
	extern int allwd_cmd_sz;
	extern char* allowed_cmds[];
	extern void (*allowed_execs[])(char**);
	struct P {
		char pname[128];
		int pid;
	}process;
	extern struct P running[1024];
	extern int size_running_procs;

	int redirect_handler (char* cmd);
	void execute_cd (char** args);
	void execute_exit (char** args);
	void execute_pwd (char** args);
	void execute_echo (char* args);
	void execute_ls (char** args);
	void execute_pinfo (char** args);
	void execute_remindme (char** args);
	void execute_clock (char** args);
	void executeCmd (char** args, void (*exec_fun)(char**));
	char** parseStr (char* cmd, char* delim);
	int isAllowed (char* cmd);
	void interpretCmd (char* cmd);
	char* scanCmd ();
	char* setPwd (char* cwd);
	void printCmdPrompt ();
	void trim (char* s, char* cmd);

#endif