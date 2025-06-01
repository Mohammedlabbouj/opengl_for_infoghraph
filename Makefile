# Define the compiler and standard
CC = C:/ProgramData/mingw64/mingw64/bin/g++.exe
CXXFLAGS = -g -std=c++17

# Define directories
INCLUDE_DIR = include
LIB_DIR = lib
SRC_DIR = src
OUTPUT_DIR = out

# Default file is main if not specified
FILE ?= main

# Define files
SOURCE_FILE = $(SRC_DIR)/$(FILE).cpp
GLAD_FILE = $(SRC_DIR)/glad.c
OUTPUT = $(OUTPUT_DIR)/$(FILE)

# Define libraries
LIBS = -lglfw3dll

# Build target
$(OUTPUT): $(SOURCE_FILE) $(GLAD_FILE)
	@$(CC) $(CXXFLAGS) -I$(INCLUDE_DIR) -L$(LIB_DIR) $(SOURCE_FILE) $(GLAD_FILE) $(LIBS) -o $(OUTPUT)
	@echo "File compiled successfully: ✅✅"

# Clean target
clean:
	rm -f $(OUTPUT_DIR)/*

# Run target
run:
	@echo "Running the program...🏃‍♂️🏃‍♂️🏃‍♂️ "
	@./$(OUTPUT_DIR)/$(FILE)
