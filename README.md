# learning assembly langauge

## Notes
* Syscall Calling conventions  

| arch | syscallNR | return | arg0 | arg1 | arg2 | arg3 | arg4 | arg5 |
| :--: |  :-----:  |  :--:  | :--: | :--: | :--: | :--: | :--: | :--: |
| arm  |  r7       |  r0    | r0   |  r1  |  r2  |  r3  |  r4  |  r5  |
| arm64|  x8       |  x0    | x0   |  x1  |  x2  |  x3  |  x4  |  x5  |
| x86  |  eax      |  eax   | ebx  |  ecx |  edx |  esi |  edi |  ebp |
|x86_64|  rax      |  rax   | rdi  |  rsi |  rdx |  r10 |  r8  |  r9  |

* Total no of syscall are 332  

* Some important syscalls  

| NR | syscall name | rax  | arg0(rdi)    | arg1(rsi)   | arg2(rdx) | arg3(r10) | arg4(r8)  | arg5(r9) |
|:--:|:------------:|:----:|:------------:|:-----------:|:---------:|:---------:|:---------:|:--------:|
| 0  | read         | 0x00 | fd           | *buffer     | count     |           |           |          |
| 1  | write        | 0x01 | fd           | *buffer     | count     |           |           |          |
| 2  | open         | 0x02 | *filename    | flags       | mode      |           |           |          |
| 3  | close        | 0x03 | fd           |             |           |           |           |          |
| 34 | pause        | 0x22 |              |             |           |           |           |          |
| 35 | nanosleep    | 0x23 | *rqtp        | *rmtp       |           |           |           |          |
| 36 | getitimer    | 0x24 | which        | *value      |           |           |           |          |
| 37 | alarm        | 0x25 | seconds      |             |           |           |           |          |
| 38 | setitimer    | 0x26 | which        | *value      |           |           |           |          |
| 39 | getpid       | 0x27 |              |             |           |           |           |          |
| 56 | clone        | 0x38 | long         | long        | int*      | int*      | long      |          |
| 57 | fork         | 0x39 |              |             |           |           |           |          |
| 58 | vfork        | 0x3a |              |             |           |           |           |          |
| 59 | execve       | 0x3b | *filename    | *argv       | *envp     |           |           |          |
| 60 | exit         | 0x3c | error_code   |             |           |           |           |          |
| 61 | wait4        | 0x3d | pid          | *state_addr | options   | *ru       |           |          |
| 62 | kill         | 0x3e | pid          | sig         |           |           |           |          |
| 63 | uname        | 0x3f | old_utsname* |             |           |           |           |          |


* Other syscalls - [syscall tables](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)
