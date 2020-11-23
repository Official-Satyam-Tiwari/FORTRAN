!Program to write the points satisfying the parabola equation in a file

program outputdata
    implicit none

    real,dimension(100)::x,y
    real,dimension(100)::p,q
    integer :: i
    real::a

    print*,"Enter the value of a(distance from origin to focus) : "
    read*,a

    do i=1,100
        x(i)=i*0.1 !Taking 100 values of x as multiple of 0.1
        y(i)=sqrt(4*a*x(i))
    end do

    open(1,file="parabola.dat",status="old")
    do i=1,100
        write(1,*),x(i),y(i)
    end do

    close(1)
end program
