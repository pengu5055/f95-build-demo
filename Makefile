OBJS := func.o main.f95
PROG := executable

all: $(PROG)
	echo "$@ depends on $^"

$(PROG): $(OBJS)
	gfortran -o $@ $^

$(OBJS): %.o: %.f95
	gfortran -c -o $@ $<
