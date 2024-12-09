module func
    implicit none

contains
    ! Calculate the L2 norm of a vector
    function v_norm(n,vec) result(norm)
        implicit none
        integer, intent(in) :: n
        real, intent(in) :: vec(n)
        real :: norm
    
        norm = sqrt(sum(vec**2))
    end function v_norm

end module func