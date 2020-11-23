program Numbers
    complex::a,b,c,t=(0,1)
    integer :: i=10
    real :: x=5.17
    logical :: lg
    character :: ch

    print *,cmplx(i,x)

    !complex arithmetic
    a=(1,2)
    b=(3,4)
    print *,a*b*t

    !check kind
    print *,kind(a),kind(i),kind(x),kind(lg),kind(ch)
end program
