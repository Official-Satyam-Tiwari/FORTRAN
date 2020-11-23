program Trapezoidal_Rule

    implicit none

    real :: a,b,h,s,Integration
    integer :: n,i
    real,parameter :: pi=3.14

    print*,"TRAPEZOIDAL RULE"
    print*,"Function : y=sin(x)"

    print*,"Enter lower limit(in degrees) :"
    read*,a
    a=a*pi/180  !Converting degrees to radians

    print*,"Enter upper limit(in degrees) :"
    read*,b
    b=b*pi/180  !Converting degrees to radians

    print*,"Enter number of iterations :"
    read*,n

    h=(b-a)/n
    s=0.5*(f(a)+f(b))

    do i=1,(n-1)
        s=s+f(a+i*h)
    end do

    Integration=h*s
    print*,"Answer of Integration : ",Integration

end program

function f(x)
    implicit none
    real :: f   ! Dummy Variable
    real :: x   ! Local Variable
    f=sin(x)
end function
