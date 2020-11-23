program gravitationalDisp
    implicit none

    real,parameter::g=9.81
    real::s
    real::t
    real::u
    t=5.0
    u=50
    s=u*t-g*(t**2)/2
    print *,"Time = ",t
    print *,"Disp = ",s
end program
