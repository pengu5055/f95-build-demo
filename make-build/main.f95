program main
    use func
    implicit none
    real, parameter :: pi = 3.14159265
    integer, parameter :: n = 10
    real :: result_sin(n)
    integer :: i
    real :: v(9)

    do concurrent (i = 1:n)
        result_sin(i) = sin(i * pi/4.)
        print *, result_sin(i)
    end do

    v(:) = 7
    print *, "Vector norm = ", v_norm(9, v)
end program main
