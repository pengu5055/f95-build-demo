# Config
MAKEFLAGS += --no-builtin-rules --no-builtin-variables
FC := gfortran
LD := $(FC)
RM := rm -f

# Sources
OBJS := func.f95 main.f95
PROG := demo

# Rules
.PHONY: all clean
all: $(PROG)

$(PROG): $(OBJS)
	$(LD) -o $@ $^

$(OBJS): $(MAKEFILE_LIST)

clean:
	$(RM) $(filter %.o, $(OBJS)) $(wildcard *.mod) $(PROG)
