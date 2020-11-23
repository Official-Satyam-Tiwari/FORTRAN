program testingInt
    implicit none ! Turns off implicit typing

    real :: a,b,divr
    integer :: i,j,divi
    character(len=40) :: name

    ! 2 Byte integer
    integer(kind=2)::shortval

    ! 4 Byte integer
    integer(kind=4)::longval

    ! 8 byte integer
    integer(kind=8)::verylongval

    ! 16 byte integer
!    integer(kind=16)::veryverylongval error

    ! Default = 4 byte integer
    integer :: largeval

    print *,huge(shortval),huge(longval),huge(verylongval),huge(largeval)

    name="Default len is 1"
    a=2.0
    b=3.0
    i=2
    j=3
    divr=a/b
    divi=i/j
    print *,divr,divi,name,name(1:6)

end program
