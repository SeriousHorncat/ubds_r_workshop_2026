# this is a double
double_var <- 3.14
typeof(double_var)

double_var_2 <- 1
typeof(double_var_2)

# This is an integer


# this is a complex number
complex_var <- 1 + 1i
typeof(complex_var)

# this is a logical
logical_var <- TRUE
tyepof(logical_var)

# this is a character
char_var <- "this is a character"
typeof(char_var)


## COLLECTIONS
# Vectors

my_vector <- vector(length = 3)
my_vector

another_vector <- vector(mode='character', length=3)
another_vector
str(another_vector)
str(my_vector)


another_vector[1]

double_vector <- c(5,7,9)
double_vector
double_vector[3]

multi_vector <- c(2,6, '3')
multi_vector



cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_catnip = c(1, 0, 1))
cats

## Writing the data frame to a file
write.csv(cats, "data/feline-data.csv",
          row.names = FALSE)

cats_2 <- read.csv("data/feline-data.csv")

# adds new row
age <- c(2,3,5)
cbind(cats_2, age)

# invalid because the rows do not match
#age <- c(2,3,4,5)
#cbind(cats, age)

nrow(cats)
length(age)

age <- c(2,3,5)
age

cats <- cbind(cats_2, age)
cats
## Adding a new row

newRow <- list("tortoisshell", 3.3, TRUE, 9)
newRow

cats <- rbind(cats, newRow)

#### Removing the rows

cats[-4,]

cats[,-4] ## to remove a column

cats[c(-3,-4),] ## rows 3 - 4, all columns?

names(cats)

drop <- names(cats) %in% c("age")
drop

cats[, !drop] #why would you do this?


#### Append two dataframes
# column names have to be the same name if you are combining
cats <- rbind(cats, cats)
cats


df <- data.frame(
  first_name = c("Your", "Name"),
  last_name = c("GOes", "Here"),
  lucky_number = c(7,13)
)
df

nextRow <- list("Kate", "Daughtry", 4)
df <- rbind(df, nextRow)
df



### Gapminder dataset download

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")

gapminder <- read.csv("data/gapminder_data.csv")

### Type of structure of columns

str(gapminder)
summary(gapminder)
summary(cats)
typeof(gapminder$country)
str(gapminder$continent)

nrow(gapminder) # number of columns
ncol(gapminder) #number of columns

dim(gapminder) # Rows.  then columns together
names(gapminder) # prints out the column names
colnames(gapminder)  #prints out the column names

## length for the data frame is number of columns
length(gapminder)

#prints the first 3 rows
head(gapminder)
head(gapminder, n = 10)

tail(gapminder)
tail(gapminder, t = 8)


tail(gapminder)

#middle rows (example, rows 800 - 820)
gapminder[800:810, ]

#random rows
gapminder[sample(nrow(gapminder), 5), ]
