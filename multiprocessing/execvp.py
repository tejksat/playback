import os
import sys
import time


def log(msg):
    pid = os.getpid()

    print('[%3d] %s' % (pid, msg))


if __name__ == '__main__':
    log('__main__ started')

    if os.fork() == 0:
        log('Child forked')

        # an optional sleep to receive the connection from the IDE after
        # forking the process to loose the connection with a greater
        # probability after `os.execvp()`
        time.sleep(0.7)

        os.execvp('python', ['python', '-u'] + sys.argv)

        log('would never be printed')
    else:
        log('Parent continued')

        # the time that test script runs
        time.sleep(10)

        log('Finished')
