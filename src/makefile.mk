#makefile.mk
ifndef TARGET
TARGET :=test
endif
CXXFLAGS:=-I../../include -I../test_gcc -std=c++17#g++ -c 编译 自动推导
LDFLAGS :=-L../xcom -L./xthread #链接 可用于自动推导
LDLIBS:=-lpthread #链接库 用于自动推导 
SRCS:=$(wildcard *.cpp *.cc *.c)#test_include.cpp 
OBJS:=$(patsubst %.cpp,%.o,$(SRCS))
OBJS:=$(patsubst %.cc,%.o,$(OBJS))
OBJS:=$(patsubst %.c,%.o,$(OBJS))
$(TARGET):$(OBJS)
	$(CXX) $^ -o $@ $(LDFLAGS) $(LDLIBS)
clean:
	$(RM) $(OBJS) $(TARGET)
.PHONY: clean