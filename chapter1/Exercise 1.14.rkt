#lang sicp

Below is a diagram of the process taken by count-change procedure to count number of ways to count 11 cents.  I can see that the function works
correctly from drawing out the graph.  It's evident that the space required by the process is amount (n), because you need to remember the node you
came from.  It is less clear why the time required by the process is, because the way the process branches out is funky.  For the simplest
case, 1 type of coin, it's evidently O(n) because you add pennys until you reach amount (also reflecting max space required).  For the second case,
it would be O(n^2), because at each step you can continue adding same kind of coin OR fork the tree into added the second type of coin.
Evidently as you increase number of coins, the number of branches that can go out at each step is the number of coins, so if number of coins is K
the general order of growth of time (ie. number of steps required to enumerate all possibilities) is O(n^K).  Increasing the amount or the number of coins
would quickly make this function intractable

Really hard question...


- (cc 11 3)
 - (cc 11 2)
  - (cc 11 1)
   - (cc 11 0) <= 0
   - (cc 10 1)
    - (cc 10 0) <= 0
    - (cc 9 1)
      - (cc 9 0) <= 0
      - (cc 8 1)
       - (cc 8 0) <= 0
       - (cc 7 1)
         - (cc 7 0) <=0
         - (cc 6 1)
           - (cc 6 0) <=0
           - (cc 5 1)
             - (cc 5 0) <=0
             - (cc 4 1)
               - (cc 4 0) <=0
               - (cc 3 1)
                 - (cc 3 0) <=0
                 - (cc 2 1)
                   - (cc 2 0) <=0
                   - (cc 1 1)
                     - (cc 1 0) <=0
                     - (cc 0 1) <=1   //11 pennys
  - (cc 6 2)
    - (cc 6 1)
      - (cc 6 0) <= 0
      - (cc 5 1)
       - (cc 5 0) <=0
       - (cc 4 1) 
         - (cc 4 0) <=0
         - (cc 3 1)
          - (cc 3 0) <= 0
          - (cc 2 1)
           - (cc 2 0) <= 0
           - (cc 1 1)
             - (cc 1 0)
             - (cc 0 1) <= 1 //1 nickel, 6 pennys
    - (cc 1 2)
      - (cc 1 1)
      - (cc 1 2)
        - (cc 1 1)
        - (cc 0 1) <= 1 //2 nickels, 1 penny
 - (cc 1  3)
  - (cc 1 2)
   - (cc 1 1)
    - (cc 1 0)  <= 0
    - (cc 0 1) <= 1    //1 dime, 1 penny
   - (cc -4 2) <= 0
  - (cc -9 3) <= 0
  

