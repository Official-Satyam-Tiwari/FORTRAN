program Characters
    character(len=10)::ab
    character(len=70)::title,fname,lname
    character(len=50)::fullname
    character (80) :: text
    integer :: i
    character:: ch
    character:: a, b, c

    title="Mr. "
    fname="Satyam "
    lname="Tiwari"
    fullname=trim(title)//trim(fname)//trim(lname) !Concatenation operator
    print *,"Full Name : ",fullname

    !Testing Characters
   text = 'The intrinsic data type character stores characters and   strings.'
   i=index(text,'character')

   if (i /= 0) then
      print *, ' The word character found at position ',i
      print *, ' in text: ', text
   end if


   do i=1,len(text)
        a=text(i:i)
        print *,ab," : ",i
   end do

   do i = 65, 90
      ch = achar(i)
      print*, i, ' ', ch
   end do


   a = 'A'
   b = 'a'
   c = 'B'

   if(lgt(a,b)) then !using ascii 7-bit character set
      print *, 'A is lexically greater than a'
   else
      print *, 'a is lexically greater than A'
   end if

   if(lgt(a,c)) then
      print *, 'A is lexically greater than B'
   else
      print *, 'B is lexically greater than A'
   end if

   if(llt(a,b)) then
      print *, 'A is lexically less than a'
   end if

   if(llt(a,c)) then
      print *, 'A is lexically less than B'
   end if


end program
