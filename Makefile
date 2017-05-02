#############################################################################
# Makefile for building: ROS_module
#############################################################################

CXX      = g++
LINK     = g++
CXXFLAGS = `pkg-config --cflags roscpp pcl_conversions pcl_ros` -W 
INCPATH  = 
LIBS     = $(SUBLIBS) $(ros_libs_nocolon) 
ros_libs = $(shell pkg-config --libs roscpp pcl_conversions pcl_ros)
ros_libs_nocolon = $(subst -l:,,$(ros_libs))

####### Files

HEADERS = 
SOURCES = main.cpp 
OBJECTS = main.o 
TARGET   = pcl_sample

first: all
####### Implicit rules

.SUFFIXES:.cpp

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $< 


all: Makefile $(TARGET)

$(TARGET): $(UICDECLS) $(OBJECTS) $(OBJMOC) 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJMOC) $(LIBS) 

clean:
	rm -f $(OBJECTS) $(TARGET)


