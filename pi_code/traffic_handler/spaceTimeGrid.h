// SpaceTimeGrid.h
#pragma once
#include <array>
#include <cmath>
#include <iostream>

class SpaceTimeGrid {

private:
    //Size of grid 17x17
    static const unsigned int GRID_SIZE = 17;
    //How far into the future the handler looks in ticks 
    static const unsigned int TICKS_TIME_DEPTH = 50;
    //offset to make grid easier to tackle
    //The center block is the center instead of the edge 
    static const unsigned int CENTER_OFFSET = 8;

    
    //DEBUGGING VARIABLE
    //This variable is purely for debugging, should be check throughout running code to see if the math breaks at any point and an index
    //outside the bounderies is picked (DEBUGGING CODE)
    mutable bool outOfBounds = false; 


    std::array<int, GRID_SIZE * GRID_SIZE * TICKS_TIME_DEPTH> grid;

    //Help function meant to allow input of 3D grid corrdinate and translate them into the index
    //in the 1D array
    inline int getIndex(int centered_x, int centered_y, int t_indx) const
    {
        //This is the actual x/y cords on the Tensor
        int x_cord = centered_x + CENTER_OFFSET;
        int y_cord = centered_y + CENTER_OFFSET;

        if (x_cord < 0 || x_cord >= GRID_SIZE || y_cord < 0 || y_cord >= GRID_SIZE || t_indx < 0 || t_indx >= TICKS_TIME_DEPTH)
        {   
            //Invalid request for boundry
            return -2;
        }

        // BUG FIX: Must use x_cord and y_cord here, not centered_x and centered_y!
        return t_indx * (GRID_SIZE * GRID_SIZE) + y_cord * GRID_SIZE + x_cord;    
    }
    
    //const so it can be called by other const functions
    inline void set_outOfBounds() const { outOfBounds = true; }

public: 

    //Returns a check for if a out of bounds index was ever returned during run time
    inline bool check_outOfBounds() { return outOfBounds; }


    //Intialize grid to be filled with -1 indicating nothing is reserved
    inline SpaceTimeGrid() { 
        grid.fill(-1); 
    }

    //Checks if index if valid
    inline bool checkValidIndex(int tensor_index) const { 
        if(tensor_index == -2) { return false; };  
        return true ; 
    }

    // Check if a specific block is empty at a specific future tick
    inline bool isFree(int centered_x, int centered_y, int t_indx) const {
        
        int tensor_index = getIndex(centered_x,centered_y,t_indx);

        if(checkValidIndex(tensor_index))
        {
            if(grid[tensor_index] == -1) { 
                return true; 
            }
            return false;

        }
        else
        {
            set_outOfBounds();
            return false;
        }
  
    }

    // Lock a block for a specific car
    inline void reserveBlock(int centered_x, int centered_y, int t_indx, int car_id) {
        
        int tensor_index = getIndex(centered_x,centered_y,t_indx);
        if(checkValidIndex(tensor_index))
        {
            grid[tensor_index] = car_id;

        }
        else
        {
            set_outOfBounds();
        }
        
    }

    // Wipes the oldest plane in time which is the current present once the proccessing on it is over
    inline void clearTimeSlice(int current_tick) {

        // Find exactly where this time slice starts and ends in the 1D array
        int plane_size = GRID_SIZE * GRID_SIZE;
        int start_index = current_tick * plane_size;
        int end_index = start_index + plane_size;

        // Perform the fast flat loop (Your optimization)
        for (int i = start_index; i < end_index; i++) {
            grid[i] = -1;
        }
    }
};