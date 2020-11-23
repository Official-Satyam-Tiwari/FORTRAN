! TO FIND THE MAXIMA AND MINIMA OF AN ALGEBRIC FUNCTION USING SECOND DERIVATIVE TEST FROM THE GIVEN VALUES

program maxima_minima
    implicit none
    real::ddy
    integer::i
    real,dimension(2)::x
    x(1)=-0.6
    x(2)=0.3
    do i=1,2
        if(ddy(x(i)) > 0) then
            print*,x(i),"is the Local Minimum"
        end if
        if(ddy(x(i)) < 0) then
            print*,x(i),"is the Local Maximum"
        end if
    end do
end program

function y(x)   !Defining Algebric Function
    implicit none
    real :: y   !Dummy Argument
    real :: x   !Local Variable
    y=5*(x**3)+2*(x**2)-3*x
end function

function ddy(x) !Second Derivative of above Algebric function
    implicit none
    real :: ddy   !Dummy Argument
    real :: x   !Local Variable
    ddy=30*x+4
end function
