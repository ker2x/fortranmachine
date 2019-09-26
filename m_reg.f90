MODULE m_reg

    IMPLICIT NONE
    ! VAX registers
    TYPE :: reg_t 
        INTEGER (kind=4) :: R0
        INTEGER (kind=4) :: R1
        INTEGER (kind=4) :: R2
        INTEGER (kind=4) :: R3
        INTEGER (kind=4) :: R4
        INTEGER (kind=4) :: R5
        INTEGER (kind=4) :: R6
        INTEGER (kind=4) :: R7
        INTEGER (kind=4) :: R8
        INTEGER (kind=4) :: R9
        INTEGER (kind=4) :: R10
        INTEGER (kind=4) :: R11
        INTEGER (kind=4) :: AP      ! (R12 / Argument Pointer)
        INTEGER (kind=4) :: FP      ! (R13 / Frame Pointer)
        INTEGER (kind=4) :: SP      ! (R14 / Stack Pointer)
        INTEGER (kind=4) :: PC      ! (R15 / Program Counter)
        !Status register
        LOGICAL :: carry, overflow, zero, negative, trace
    END TYPE

    type(reg_t) ::  reg

CONTAINS

    SUBROUTINE reg_reset()
        IMPLICIT NONE
        reg%R0  = 0
        reg%R1  = 0
        reg%R2  = 0
        reg%R3  = 0
        reg%R4  = 0
        reg%R5  = 0
        reg%R6  = 0
        reg%R7  = 0
        reg%R8  = 0
        reg%R9  = 0
        reg%R10 = 0
        reg%R11 = 0
        reg%AP  = 0
        reg%FP  = 0
        reg%SP  = 0
        reg%PC  = 0
        
        reg%carry = .FALSE.
        reg%overflow = .FALSE.
        reg%zero = .FALSE.
        reg%negative = .FALSE.
        reg%trace = .FALSE.
    END SUBROUTINE


END MODULE