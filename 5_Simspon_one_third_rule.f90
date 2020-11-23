program Simspson_Rule

    implicit none

    real :: a,b,h,s,Integration
    integer :: n,i
    real,parameter :: pi=3.14

    print*,"SIMPSON's 1/3rd RULE"
    print*,"Function : y=5*(x**3)-3*(x**2)+(2*x)+1"

    print*,"Enter lower limit :"
    read*,a

    print*,"Enter upper limit :"
    read*,b

    print*,"Enter number of iterations (it must be even) :"
    read*,n

    h=(b-a)/n
    s=f(a)+f(b)

    do i=1,2,(n-1)
        s=s+4*f(a+i*h)
    end do
    do i=2,2,(n-2)
        s=s+2*f(a+i*h)
    end do

    Integration=(h*s)/3
    print*,"Answer of Integration : ",Integration

end program

function f(x)
    implicit none
    real :: f   ! Dummy Variable
    real :: x   ! Local Variable
!    f=5*x**3-3*x**2+2*x+1
    f=x*sin(x)
end function
