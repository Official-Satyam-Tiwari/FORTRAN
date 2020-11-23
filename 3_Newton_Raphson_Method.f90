!NEWTON RAPHSON METHOD (for finding root of real valued function)

program NewtonRaphson

    implicit none

    real :: x0,x1,e,f,fd
    integer :: i    !Counting Iterations

    print*,"Enter the initial guess : "
    read*,x0
    print*,"Enter the value of tolerance : "
    read*,e

    print*,"         n             x0             x1      "
    print*,"---------------------------------------------"

    i=0 !Initial value
    x1=x0-f(x0)/fd(x0)
    print*,i,x0,x1

    do while(abs(x1-x0)>e)
        x0=x1
        x1=x0-f(x0)/fd(x0)
        i=i+1   !Increase 1 after each loop
        print*,i,x0,x1
    end do

    print*,"The value of root x after ",i," iteration(s) : ",x1

end program

function f(x)
    implicit none
    real::f !Dummy Variable
    real::x !Local Variable
    f=x-exp(-x)
end function

function fd(x)
    implicit none
    real::fd    !Dummy Variable
    real::x     !Local Variable
    fd=1+exp(-x)
end function
