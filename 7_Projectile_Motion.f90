!   To study the projectile motion and plot x,y at angle 45 degrees

program Projectile
    implicit none

    real,parameter::g=9.81  ! acceleration due to gravity in m/s^2
    real,parameter::pi=3.1415926

    real::angle
    real::time
    real::theta
    real::U
    real::V
    real::Vx
    real::Vy
    real,dimension(100)::X_Array
    real,dimension(100)::Y_Array
    real::X
    real::Y
    real::total_time    ! total time of flight
    real::max_height    ! maximum height of projectile
    real::horizontal_range     ! maximum range of projectile
    integer::t

    print*,"Initial angle of launch (in degrees) - <Take 45 degrees> : "
    read*,angle
    print*,"Initial velocity of launch (in m/s) : "
    read*,U
    print*,"Time at which Position and Velocity needs to be calculated (in seconds) : "
    read*,time

    angle=angle*pi/180  !   convert to radians
    X=U*cos(angle)*time
    Y=U*sin(angle)*time - g*time*time/2.0
    Vx=U*cos(angle)
    Vy=U*sin(angle)-g*time
    V=sqrt(Vx*Vx+Vy*Vy)
    theta=atan(Vy/Vx)*180/pi
    total_time=2*U*sin(angle)/g
    horizontal_range=U*U*sin(2*angle)/g
    max_height=U*U*sin(angle)*sin(angle)/2*g

    print*,"Horizontal Displacement at given time = ",X
    print*,"Vertical Displacement at given time = ",Y
    print*,"Resultant Velocity at given time = ",V
    print*,"Direction (in degree) at given time = ",theta
    print*,"Total Time (in seconds) of flight = ",total_time
    print*,"Horizontal Range of projectile = ",horizontal_range
    print*,"Maximum Height of projectile = ",max_height

    do t=0,total_time
        X_Array(t)=U*cos(angle)*t
        Y_Array(t)=U*sin(angle)*t - g*t*t/2.0
    end do

    ! output data into a file
   open(1, file = 'Parabola_Motion.dat', status = 'new')
   do t=0,total_time
      write(1,*) X_Array(t), Y_Array(t)
   end do
   close(1)

end program
