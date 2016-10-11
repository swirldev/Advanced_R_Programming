# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

int_to_string <- function(x){
  c("one", "two", "three", "four", "five",
    "six", "seven", "eight", "nine", "ten")[x]
}

gt <- function(a, b){
  a > b
}

is_even <- function(x){
  x %% 2 == 0
}

square <- function(x){
  x^2
}

add_talk <- function(x, y){
  message("x is ", x)
  message("y is ", y, "\n")
  x + y
}

paste_talk <- function(x, y){
  message("x is ", x)
  message("y is ", y, "\n")
  paste0(x, y)
}

random_ints <- sample(c(seq(21, 101, 2), c(6, 8, 10)))

mark_antony <- c("Friends, Romans, countrymen,",
                 "lend me your ears;",
                 "I come to bury Caesar,", 
                 "not to praise him.")

# For compatibility with 2.2.21
.get_course_path <<- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.pathtofile <<- function(fileName){
  mypath <- file.path(.get_course_path(),
                      "Advanced_R_Programming", "Functional_Programming_with_purrr",
                      fileName)
}

# @param html An html file.
.viewer_question <<- function(html){
  path <- .pathtofile(html)
  temp <- tempfile(fileext = ".html")
  file.copy(path, temp, overwrite = TRUE)
  
  viewer <- getOption("viewer")
  if (!is.null(viewer))
    viewer(temp)
  else
    utils::browseURL(temp)
}