# cake-mould

a mould for projet

## Main goal...

I would like create a mould 
for my next projets. With 3 directories,
headers, srcs and objs. Each folder with different type of file.
* header \*.h
* srcs \*.c
* objs \*.o


### Example

```
.
├── headers
│   └── bar.h
├── objs
│   ├── foo.o
│   └── main.o
└── srcs
    ├── foo.c
    └── main.c
```


## Final projet tree

```
.
├── headers
│   └── bar.h
├── Makefile
├── objs
│   ├── foo.o
│   └── main.o
├── program
├── README.md
└── srcs
    ├── foo.c
    └── main.c
```


## Display ascii tree

```tree | sed 's/├/\+/g; s/─/-/g; s/└/\\/g'```
