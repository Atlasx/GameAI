project(Chapter2)

include_directories(include)

set(SOURCES
	src/main.cpp
	src/foo.cpp
)

set(HEADERS
	include/foo.h
)

add_executable(Chapter2 ${SOURCES} ${HEADERS})
