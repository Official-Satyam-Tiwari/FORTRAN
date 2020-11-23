!To find the sum of series (sine series) :
!sin(x) = x - x^3/3! + x^5/5! - x^7/7!

program Sum_of_Series

    implicit none

    real :: x,sinx=0
    integer :: i,n,fact
    real,parameter::pi=3.14 !Constant

    print*,"To find the sum of series (sine series) : sin(x) = x - x^3/3! + x^5/5! - x^7/7"

    print*,"Enter the no. of iterations : n = "
    read*,n
    print*,"Enter the value of x(in degrees) : x = "
    read*,x
    x=x*pi/180

    do i=0,n
        sinx=sinx+(((-1)**i)*(x**(2*i+1)))/fact(2*i+1)
    end
    o
    print*,"sin(",x,") = ",sinx

end program

function fact(n)    !Computing Factorial
    implicit none
    integer::f,n,i    !Local Variables
    integer::fact   !Dummy Variable
    f=1
    do i=1,n
        f=f*i
    end do
    fact=f
end function
