#Océane Gagner


#Sub-exercise 3-a

# Sum values in a column of a data frame.
#
# ARGUMENTS:
# d: a data frame or tibble
# var: the name of a column of d, provided as a string
#
# RETURN VALUE:
# if the specified column exists and contains numbers, returns the sum of
# all values in the column; otherwise, returns NULL
sum_column <- function(d, var) {
  # Set a default value to return
  result <- NULL
  x <- d[[var]] # Remember, as we showed in class: there are two ways
  # to access a column, and this is one; you should try
  # and figure out why the other way won't work here,
  # but that's not part of the homework
  if (!is.null(x)) { # This tests to see whether the column exists in
    # d; again, you should try and find a way to test
    # this out for yourself to verify that it's true,
    # but that's not part of the homework
    # YOUR CODE HERE: if x contains numbers, set the variable
    # result to be the sum of the values in x
    if (is.numeric(x)) {
      result <- sum(x)
    }
    #
    # You will need to do a bit of research in order to figure out how
    # to test whether a vector contains numbers.
  }
  return(result)
}


#Sub-exercise 3-b

#Sum values in a vector.
#ARGUMENTS:
#  x: a vector
#RETURN VALUE:
#  if the vector contains numbers, returns the sum of
#all values; otherwise, returns NULL

my_sum <- function(x){
  result <- NULL #Instancie la variable result à NULL
  if(is.numeric(x)){ #Si les éléments de x sont de type int
    result <- sum(x) #Ajoute au résultat les éléments de x
  }
  return(result)
}
  


#Sub-exercise 3-c

sum_divided_by <- function(x, k){
  result <- NULL #Instancie la variable result à NULL
  if(is.numeric(x) & is.numeric(k)){#Si les éléments de x sont numériques et que k est un int
    result <- sum(x/k) #on ajoute à result les éléments de x divisés par k
  }
  return(result)
}


#Sub-exercise 3-d

my_mean <- function(x){
  k <- length(x) #k est la taille du vecteur x
  result <- NULL #Instancie result à NULL
  result <- sum_divided_by(x, k) #Applique la fonction sum_divided_by avec x le vecteur et k la taille de ce vecteur
}





