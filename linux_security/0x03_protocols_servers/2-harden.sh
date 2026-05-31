#!/usr/bin/env python3
 
import os
import stat
 
 
def harden_world_writable_dirs(start_path="/"):
    for dirpath, dirnames, _ in os.walk(start_path):
        try:
            mode = os.stat(dirpath).st_mode
            if mode & stat.S_IWOTH:
                print(dirpath)
                new_mode = mode & ~stat.S_IWOTH
                os.chmod(dirpath, new_mode)
        except PermissionError:
            pass
        except OSError:
            pass
 
 
if __name__ == "__main__":
    harden_world_writable_dirs("/")
