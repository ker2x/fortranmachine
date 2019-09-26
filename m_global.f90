MODULE m_global

    LOGICAL :: is_powered           ! power ON/OFF
    LOGICAL :: reset_requested      ! reset button was pressed
    
CONTAINS

    SUBROUTINE init_global()    ! set defaut state at program start
        IMPLICIT NONE
    
        is_powered      = .FALSE.
        reset_requested = .FALSE.
    
    END SUBROUTINE
    
END MODULE