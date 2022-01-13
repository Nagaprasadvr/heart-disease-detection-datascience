#length of pendulum
l <- 10
#differential time change
dt <- 0.3
#acceleration due to gravity
g <- 9.8
#no of iterations
n <- readline("enter number of iterations: ")
n <- as.numeric(n)
q <- 0.09
flag = readline("enter 1 to plot time vs omega or 2 to plot time vs theta : ")
flag = as.numeric(flag)
time <- c(0*n)
omega <-c(0*n)
theta <-c(0*n)
theta[1] <- pi/6
for (i in seq(1,n-1,1))
{
  omega[i+1] = omega[i] - (g/l * sin(theta[i]) * dt + q * omega[i] * dt)
  theta[i+1] = theta[i] + omega[i+1] * dt
  time[i+1] = time[i] + dt
  

}
print(omega)
print(theta)
print(time)
print("done")
if( flag == 1 )
{plot(time,theta, type = 'l',col = "blue")}

if( flag == 2)
{plot(time,omega, type = 'l',col = "blue")}

