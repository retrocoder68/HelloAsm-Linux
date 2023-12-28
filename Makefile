# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

# Program and object files
APP=hello
OBJS=hello.o

# Tools
AS=as
LD=ld
RM=rm -f

# Flags
ASFLAGS=
LDFLAGS=-e _start

# Targets
$(APP): $(OBJS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $^

.PHONY: test clean

test: $(APP)
	./$(APP)

clean:
	$(RM) $(APP) $(OBJS)

