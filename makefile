CC=nvcc
OPTIONS=--std=c++11
RELEASE=
DEBUG=-g -G
INCLUDES=-I /usr/local/include

UTIL=/home/john/projects/flamingo/utilities
TEST_INCLUDES=-I $(UTIL) 
TEST_LINKS=-lgtest -lpthread -lboost_thread-mt
DEPENDS=complex.h complex.inl comples_test.cu

commit:$(DEPENDS)
	git commit -a -f commit.txt

test:$(DEPENDS)
	$(CC) -o complex_test main_test.cu -D COMPLEX_TEST $(TEST_LINKS) $(TEST_INCLUDES) $(OPTIONS)


