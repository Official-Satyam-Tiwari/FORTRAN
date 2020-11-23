program variableTesting
    implicit none

    integer :: total
    real :: avg
    complex :: cx
    logical :: done
    character(len=80) :: message

    total=20000
    avg=166.67
    done=.true.
    message="Hello"
    cx=(3.0,5.0)
    !intrinsic function to assign values to complex variable
    cx=cmplx(1.0/2.0,-7.0)

    print *,total,avg,done,message,cx

end program
