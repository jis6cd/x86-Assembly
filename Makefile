#Jessica Shaughnessy
#jis6cd
#11/13/2017

CXX = clang++ -m64

CXXFLAGS = -Wall -g

AS = nasm

ASFLAGS = -f elf64 -g

OFILES = timer.o threexplusone.o threexinput.o

.SUFFIXES: .o .cpp

.SUFFIXES: .o .s

main: 		$(OFILES)
	$(CXX) $(CSSFLAGS) $(OFILES)

clean:
	/bin/rm -fm *.o *~
