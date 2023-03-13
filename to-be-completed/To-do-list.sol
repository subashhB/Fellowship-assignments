//SPDX-License-Identifier:MIT
pragma solidity 0.8.10;
contract Todo{
    address owner;
    /*
    Create struct called task 
    The struct has 3 fields : id,title,Completed
    Choose the appropriate variable type for each field.

    */
  
    ///Create a counter to keep track of added tasks

    /*
    create a mapping that maps the counter created above with the struct taskcount
    key should of type integer
    */
   
    /*
    Define a constructor
    the constructor takes no arguments
    Set the owner to the creator of the contract
    Set the counter to  zero
    */
    
    /*

    Define 2 events
    taskadded should provide information about the title of the task and the id of the task
    taskcompleted should provide information about task status and the id of the task
    */ 
    
 /*
        Create a modifier that throws an error if the msg.sender is not the owner.
    */
    

    /*
    Define a function called addTask()
    This function allows anyone to add task
    This function takes one argument , title of the task
    Be sure to check :
    taskadded event is emitted
     */

    

    /*Define a function  to get total number of task added in this contract*/
    

    /**
    Define a function gettask()
    This function takes 1 argument ,task id and 
    returns the task name ,task id and status of the task
     */
    
    /**Define a function marktaskcompleted()
    This function takes 1 argument , task id and 
    set the status of the task to completed 
    Be sure to check:
    taskcompleted event is emitted
     */
    
}