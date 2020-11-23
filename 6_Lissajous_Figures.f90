!   To draw the Lissajous figures using given equations & studying the effect of varying phi

program Lissajous
    real::A=1.0, B=2.0, w1=2.0, w2=3.0, pi=4*atan(1.0), i
    real,dimension(100)::x,y,t
    phi=pi
    do i=0,100
        x(i)=A*sin(2*w1*0.1*i)
        y(i)=B*cos(2*w2*0.1*i+phi)
        print*,x(i),y(i)
        write(6,*),x(i),y(i)
    end do
end program
