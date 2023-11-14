TOP      = bcd_to_seven_test
SRC      = bcd_to_seven.v bcd_adder.v
TEST_SRC = bcd_to_seven_test.v
BIN      = $(TOP).vvp

$(BIN): $(SRC) $(TEST_SRC)
	iverilog -gsupported-assertions -o $(BIN) -s $(TOP) $(SRC) $(TEST_SRC)

.PHONY: all clean test

all: $(BIN)

test: $(BIN)
	vvp $(BIN)

clean:
	rm -f *.vvp *.vcd
