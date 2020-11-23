program printNum
    implicit none
    !printing numbers from 11 to 20
    integer::n,nfact=1,i,j,k
    do n=11,20
        print *,n
    end do

    !factorials
    do n=1,10
        nfact=nfact*n
        print *,n," ",nfact
    end do

    !factorials using do while loop
    n=1
    nfact=1
    do while(n<=10)
        nfact=nfact*n
        print *,n," ",nfact
        n=n+1
    end do

    !nested loops example
    iloop: do i=1,3
    jloop: do j=1,3
    kloop: do k=1,3

        print*,"(i,j,k) : ",i,j,k

        !using exit statement
        if(k==2) then
            exit jloop !using exit statement just like break in c++
        end if
           end do kloop
           end do jloop
           end do iloop

    !using cycle statement just like continue in c++
    do i=1,20
        if(i==5) then
            cycle
        end if
        print*,i
    end do

    !using stop statement just like exit in c++
    do i=1,20
        if(i==5) then
            stop
        end if
        print*,i
    end do

end program
