
NAME=krycc
CPPFLAGS=
LDFLAGS=
CXXFLAGS=-g -O1

OBJS = \
	main.o \
	jit.o \
    predef.o

.SUFFIXES :
.SUFFIXES : .cpp .o

all: $(NAME)

clean:
	rm -f $(NAME) *.o > /dev/null

$(NAME): $(OBJS)
	$(CC) $(LDFLAGS) $(CXXFLAGS) -o $(NAME) -lm -lstdc++ -lLLVM -lclang -lclang-cpp $(OBJS)

.cpp.o:
	$(CC) -c $(CPPFLAGS) $(CXXFLAGS) -Fo$*.o $<


