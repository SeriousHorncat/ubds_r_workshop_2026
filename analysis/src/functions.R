
fahr_to_kelvin <- function(temperature) {
  celsius <- temperature - 273.15
  return(celsius)
}

fahr_to_kelvin(300)


# stop stops the entire script, and not just the function
fahr_to_kelvin <- function(temperature) {
  if(!is.numeric(temperature)) {
    stop("temperature must be a numeric vector.")
  }
  
  kelvin <- ((temperature - 32) * (5/9)) + 273.15
  return(kelvin)
}

### using stopifnot()
fahr_to_kelvin <- function(temperature) {
  stopifnot(is.numeric(temperature))
#  if(!is.numeric(temperature)) {
#    stop("temperature must be a numeric vector.")
#  }
  
  kelvin <- ((temperature - 32) * (5/9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(300)
fahr_to_kelvin("300")

### xomplex functions
 calculateGDP <- function(data) {
   gdp <- data$pop * data$gdpPercap
   return(gdp)
 }

 head(gapminder)
 
 calculateGDP(head(gapminder))

 calculateGDP <- function(data, year = NULL, country=NULL) {
   if(!is.null(year)) {
     data <- data[data$year %in% year, ]
   }

   ## using is.na is different ..... because wat
   if(!is.na(country)) {
     data <- data[data$country %in% country,]
   }
   
   gdp <- data$pop * data$gdpPercap
   
   new <- cbind(data, gdp=gdp)
   return(new)
 }
 head(gapminder)
 head(calculateGDP(gapminder, year=1962, country="Australia"))
 head(calculateGDP(gapminder,country="Australia",  year=1962))

 ## R expects arguments to be in the exact same order as defined in the function, 
 # to use a different order, they must be named parameters instead
  head(calculateGDP(gapminder,"Australia", 1962))

 
 