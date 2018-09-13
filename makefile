shell: \
			main.o \
			execute_cd.o \
			executeCmd.o \
			execute_echo.o \
			execute_exit.o \
			execute_ls.o \
			execute_pinfo.o \
			execute_pwd.o \
			execute_remindme.o \
			execute_clock.o \
			interpretCmd.o \
			isAllowed.o \
			parseStr.o \
			printCmdPrompt.o \
			redirect_handler.o \
			scanCmd.o \
			setPwd.o \
			trim.o
	$(CC) -g -o shell $^

clean:
	@rm -f *.o shell

main.o: shell.h main.c
	$(CC) -g -c main.c

execute_cd.o: shell.h execute_cd.c
	$(CC) -g -c execute_cd.c

execute_clock.o: shell.h execute_clock.c
	$(CC) -g -c execute_clock.c

execute_remindme.o: shell.h execute_remindme.c
	$(CC) -g -c execute_remindme.c

executeCmd.o: shell.h executeCmd.c
	$(CC) -g -c executeCmd.c

execute_echo.o: shell.h execute_echo.c
	$(CC) -g -c execute_echo.c

execute_exit.o: shell.h execute_exit.c
	$(CC) -g -c execute_exit.c

execute_ls.o: shell.h execute_ls.c
	$(CC) -g -c execute_ls.c

execute_pinfo.o: shell.h execute_pinfo.c
	$(CC) -g -c execute_pinfo.c

execute_pwd.o: shell.h execute_pwd.c
	$(CC) -g -c execute_pwd.c

interpretCmd.o: shell.h interpretCmd.c
	$(CC) -g -c interpretCmd.c

redirect_handler.o: shell.h redirect_handler.c
	$(CC) -g -c redirect_handler.c

isAllowed.o: shell.h isAllowed.c
	$(CC) -g -c isAllowed.c

parseStr.o: shell.h parseStr.c
	$(CC) -g -c parseStr.c

printCmdPrompt.o: shell.h printCmdPrompt.c
	$(CC) -g -c printCmdPrompt.c

scanCmd.o: shell.h scanCmd.c
	$(CC) -g -c scanCmd.c

setPwd.o: shell.h setPwd.c
	$(CC) -g -c setPwd.c

trim.o: shell.h trim.c
	$(CC) -g -c trim.c