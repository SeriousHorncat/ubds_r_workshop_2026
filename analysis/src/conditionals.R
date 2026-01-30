x <- 8

if (x >= 10) {
  print('x is greater than or equal to 10')
}


# if .. else statement

if (x >= 10) {
  print('x is greater than or equal to 10')
} else {
  print ('x is less than 10')
}

# mutliple conditionals together
# curious, does r short curcuit the operations?
if ( x > 10 ) {
  print('x is greater than or eqaul to 10');
} else if ( x > 5) {
  print('x is greater than 5')
} else {
  print('x is 5 or less')
}

# use logical values directly

x <- 4 == 3
if( x ) {
  print('4 equals 3')
} else {
  print('not equals 3')
}

#### oooo,  ifelse function
# this is a function call
# is going to print or can 
y <- -3
# this works becaue this is being interpretively run, so it auto makes the string of text print out
# versus if the script was ran, it wouldn't be the same
ifelse(y < 0, "y is a negative number", "y is either positive or zero")

# multiple logicals
# this will fail, because its expecting a SINGLE function
x <- c(TRUE, TRUE, FALSE)
if( x) {
  print('x is TRUE')
}


if(any(x)) {
print('at least one value of x is true')
}

if(all(x)) {
  print('all of the values of x are TRUE')  
}

# for loop

for (i in 1:10) {
  print(i)
}

# using 2 sets of 4 loops to go over two sets of data
for (i in 1:5) {
  for(j in c('a', 'b', 'c', 'd', 'e')) {
    print(paste(i, j))
  }
}

output_vector <- c()

for (i in 1:5) {
  for( j in c('a', 'b', 'c', 'd', 'e')) {
    temp_output <- paste(i, j)
    output_vector <- c(output_vector, temp_output)
   }
}
output_vector

# predefining the output size saves comp resources
# this allows for the inner value to be allocated only once intsead of many times

output_matrix <- matrix(nrow = 5, ncol =5 )
j_vector <- c('a', 'b', 'c', 'd', 'e')
for ( i in 1:5 ) {
  for( j in 1:5 ) {
    temp_j_value <- j_vector[j]
    tmp_output <- paste(i, temp_j_value)
    output_matrix[i, j] <- temp_output  # assinging specifically the position to the vector
  }
}

output_matrix

output_vector2 <- as.vector(output_matrix) # coerces the matrix to be a 'vector'? 
output_vector2 

# while loops

z <- 1

while( z >0.1) {
  z <- runif(1)
  cat(z, '\n') #this will paste things together
}

# cat also can redirect output
?cat
