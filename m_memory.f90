MODULE m_memory

    IMPLICIT NONE
    !vax memory
    !P0 : Process Space
    !P1 : Process Stack
    !S0 : Operating system
    !S1 : reserved
    !ROM0 : read only memory

    TYPE memory_t
        INTEGER (KIND=4), ALLOCATABLE :: mem
        INTEGER (KIND=4) :: size
        LOGICAL :: is_allocated
        LOGICAL :: is_readonly
    END TYPE
    
    TYPE(memory_t) :: P0
    TYPE(memory_t) :: P1
    TYPE(memory_t) :: S0
    TYPE(memory_t) :: S1
    TYPE(memory_t) :: ROM0
    
CONTAINS

    SUBROUTINE memory_init()
        IMPLICIT NONE
        P0%is_allocated   = .FALSE.
        P1%is_allocated   = .FALSE.
        S0%is_allocated   = .FALSE.
        S1%is_allocated   = .FALSE.
        ROM0%is_allocated = .FALSE.
        
        P0%is_readonly   = .FALSE.
        P1%is_readonly   = .FALSE.
        S0%is_readonly   = .FALSE.
        S1%is_readonly   = .FALSE.
        ROM0%is_readonly = .TRUE.
    END SUBROUTINE
END MODULE