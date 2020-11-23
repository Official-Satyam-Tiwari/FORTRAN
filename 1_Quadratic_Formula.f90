!To find the roots of a Quadratic Equation by Quadratic Formula

program QuadraticFormula

    implicit none

    real::a,b,c,d,rt1,rt2   !Declaring Variables

    print*,"Enter the coefficient of x^2 :"
    read*,a
    print*,"Enter the coefficient of x :"
    read*,b
    print*,"Enter the constant term :"
    read*,c

    d=(b**2)-(4*a*c) !Determinant

    if(d>0) then
        rt1=(-b+sqrt(d))/(2*a)
        rt2=(-b-sqrt(d))/(2*a)
        print*,"First Root = ",rt1,"| Second Root = ",rt2
    else if(d==0) then
        rt1=(-b+sqrt(d))/(2*a)
        print*,"Root = ",rt1
    else
        print*,"No Real roots exist"
    end if

end program
