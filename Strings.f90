program datetime

    implicit none

    character(len=8)::dateinfo !ccyymmdd
    character(len=4)::year, month, day
    character(len=10)::timeinfo !hhmmss.sss
    character(len=2)::hour,minute,second

    call date_and_time(dateinfo,timeinfo)

    print *,"Date String : ",dateinfo
    print *,"Year : ",dateinfo(1:4)
    print *,"Month : ",dateinfo(5:6)
    print *,"Day : ",dateinfo(7:8)

    print *,"Time String : ",timeinfo
    print *,"Hour :",timeinfo(1:2)
    print *,"Minutes :",timeinfo(3:4)
    print *,"Seconds :",timeinfo(5:10)

end program
