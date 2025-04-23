# Event loop cycle - C program is a part of libuv
 ## Async Code Execution 
 - Last In, First Out

 1. Timers - Set timeout and set interval
 2. Pending callbacks - any IO callbacks
 3. Idle prepare - Internal use only 
 4. Poll - how long to poll/block for any IO events 
 5. Check - Execute immediate callbacks 
 6. Close callbacks - clean up phase

### The I/O Cycle - Between event loop and backthread pool 
 - Long run operations: power/fetching or database query

