CXX      = g++
CXXFLAGS = -std=c++17 -Wall -pthread

TARGET = traffic_controller
SRCS   = main.cpp \
         comms_handler/commsHandler.cpp \
         traffic_handler/traficHandler.cpp

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET)