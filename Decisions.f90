program ifProg
    implicit none


    integer :: ab = 100
    integer ::as=100
    integer::a=10
    integer :: marks = 78
    if(a<20) then
        print*,"a<20"
    end if
    print*,"Value of a = ",a

    !named if block
    marks=90.0
    gr:if(marks>90.0) then
        print *,"Grade A"
    end if gr

        ass:if(as<20) then
            print*,"as<20"
        else
            print*,"as>20"
        end if ass

   ! check the logical condition using if statement
   if( ab == 10 ) then

      ! if condition is true then print the following
      print*, "Value of a is 10"

   else if( ab == 20 ) then

      ! if else if condition is true
      print*, "Value of a is 20"

   else if( ab == 30 ) then

      ! if else if condition is true
      print*, "Value of a is 30"

   else

      ! if none of the conditions is true
      print*, "None of the values is matching"

   end if

   print*, "exact value of a is ", ab

   select case (marks)

      case (91:100)
         print*, "Excellent!"

      case (81:90)
         print*, "Very good!"

      case (71:80)
         print*, "Well done!"

      case (61:70)
         print*, "Not bad!"

      case (41:60)
         print*, "You passed!"

      case (:40)
         print*, "Better try again!"

      case default
         print*, "Invalid marks"

   end select
   print*, "Your marks is ", marks
end program
