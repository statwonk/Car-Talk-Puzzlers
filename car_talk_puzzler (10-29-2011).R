## Car Talk Puzzler (10-29-2011)

## Figuring out algorithm
test <- seq(1, 10, 1)
test.vector.two <- (test %% 2)
test.vector.two

## Alogrithm begin
lightbulbs <- seq(1,20000, 1) # Create vector of 20,000 numbers, not zero
lightbulbs <- ifelse(lightbulbs != 0, TRUE, FALSE) # If this vector is not zero, then place a true
                                                                      # this is an "on" lightbulb
n <- length(lightbulbs) # Find the length of the input vector
i = 2 # We start the sequence by pulling the second light cord after the lights have been turned on.
for(i in 1:(n-1)) {
        division.vector <- (seq(1, n, 1) %% i)  # This creates a vector of n-length, in our case, 20000 remainders
                                                # acquired by dividing by the sequence number, 2, 3, etc.
        lightbulbs <- ifelse(division.vector == 0, ifelse(lightbulbs == TRUE, FALSE, TRUE), lightbulbs)
            # For each sequence, eg. turn off every second lightbulb, the remainder will be zero in the
            # location that the switch will be pulled, so if it is zero, then "pull the lightswitch".
            # To pull the lightswitch, if the lightswitch is "on" = TRUE, then make it false, else it
            # should be made true.  In places where the remainder is not zero, leave be.
}

lightbulbs <- ifelse(lightbulbs == TRUE, FALSE, TRUE)
summary(lightbulbs)
