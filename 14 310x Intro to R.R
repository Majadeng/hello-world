install.packages("swirl")
library("swirl")
install_course_zip("/Users/jiaodeng/Desktop/14_310x_Intro_to_R.zip",multi=FALSE)
swirl()
print("hello world")
z <- c (pi, 205, 149, -2)
y <- c (z, 555, z)
y <- 2 * y + 760
my_sqrt <- sqrt (y - 1)
swirl()

23/08/2017
2: Basic Building Blocks
5+7
x<-5+7
x
y<-x-3
y
z<-c(1.1,9,3.14)
z
?c
z
c(z,555,z)
z*2+100
my_sqrt<-sqrt(z-1)
3
my_sqrt
my_div<-(z/my_sqrt)
my_div<-z/my_sqrt
my_div
c(1,2,3,4)+c(0,10)
c(1,2,3,4)+c(0,10,100)

3. Sequences of Numbers
1:20
pi:10
15:1
?":"
?':'
seq(1,20)
seq(0,10, by=0.5)
seq(5, 10, length=30)
seq(5, 10, length=30)
my_seq <- seq(5, 10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0,1,2), times = 10)
rep(c(0,1,2), each = 10)
0

24/08/2017
4: Vectors

num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
tf
num_vect >= 6
my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse = " ")
my_name <- c(my_char, "maja")
my_name
paste (my_name, collapse = " ")
paste ("Hello", "world!", sep = " ")
paste ("1:3", "X", "Y", "Z", sep = "")
paste (1:3, c("X", "Y", "Z"), sep = "")
paste(LETTERS, 1:4, sep = "-")


25/08/2017
5. Missing values

x <- c(44, NA, 5, NA)
x*3
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y, z), 100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
0/0
Inf-Inf

6. Subsetting vectors

x
x[1:10]
x[is.na(x)]
x[!is.na(x)]
y <- x[!is.na(x)]
y
y[y > 0]
x[x > 0]
x[!is.na(x) & x>0]
x[c()]
x[c(3, 5, 7)]

info()
| When you are at the R prompt (>):
  | -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl
| will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

x[0]
x[3000]
x[c(-2, -10)]
x[-c(2, 10)]

vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2)
vect["bar"]
vect[c("foo", "bar")]

26/08/2017

7. Matrices and Data frames

my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4, 5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(1:20, nrow = 4, ncol = 5, byrow = FALSE, dimnames = NULL)
identical(my_matrix, my_matrix2)
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my_data
class(my_data)
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data)
colnames(my_data) <- cnames
my_data

8. Looking at data

ls()
class(plants)
dim(plants)
nrow(plants)
ncol(plants)
object.size(plants)
names(plants)
head(plants)
head(plants, nrow = 10)
head(plants, 10)
tail(plants, 15)
summary(plants)
table(plants$Active_Growth_Period)
str(plants)

9. Base graphics

data(cars)
?cars
head(cars)
plot(cars)
?plot
plot(x = cars$speed, y = cars$dist)
plot(x = cars$dist, y = cars$speed)
plot(x = cars$speed, y = car$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance", main = "My Plot")
plot(cars, main = "My Plot")
plot(cars, main = "My Plot Subtitle")
plot(cars, sub = "My Plot Subtitle")
col = 2
plot(cars, col = 2)
plot(cars, xlim = c(10, 15))
plot(cars, pch = 2)

data(mtcars)
?boxplot
boxplot(formula = mpg ~ cyl, data = mtcars)
hist(mtcars$mpg)

(http://www.ling.upenn.edu/~joseff/rstudy/week4.html
  

