PROGRAM fortranmachine

USE appgraphics, ONLY : closewindow, loop
USE m_control,   ONLY : screen_main, init_control, init_menu
USE m_global

IMPLICIT NONE

    CALL init_global()
    CALL init_control()
    CALL init_menu()
    
    CALL loop()
    CALL closewindow(screen_main)

END PROGRAM fortranmachine
