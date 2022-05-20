max := "50000"

node.for:
	@echo "== node with for loops =="
	node for.p.js $(max)

node.while:
	@echo "== node with while loops =="
	node while.p.js $(max)

python.while:
	@echo "== python with while loops =="
	python3 while.p.py $(max)

python.iterator:
	@echo "== python with iterator loops =="
	python3 iterator.p.py $(max)

lua.for:
	@echo "== lua with for loops =="
	lua for.p.lua $(max)

lua.while:
	@echo "== lua with while loops =="
	lua while.p.lua $(max)

go.for:
	@echo "== go with for loops (C-style) =="
	go run for.p.go $(max)

go.while:
	@echo "== go with for loops (while-style) =="
	go run while.p.go $(max)

rust.iterator:
	@echo "== rust with iterator loops =="
	rustc --crate-name p -C opt-level=3 iterator.p.rs && ./p $(max) && rm p

rust.while:
	@echo "== rust with while loops =="
	rustc --crate-name p -C opt-level=3 while.p.rs && ./p $(max) && rm p

c.for:
	@echo "== c with for loops =="
	gcc -O3 for.p.c && ./a.out $(max) && rm ./a.out

c.while:
	@echo "== c with while loops =="
	gcc -O3 while.p.c && ./a.out $(max) && rm ./a.out

all: node.for node.while lua.for lua.while python.while python.iterator go.for go.while rust.iterator rust.while c.for c.while
