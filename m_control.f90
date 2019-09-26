MODULE m_control

    USE appgraphics
    
    IMPLICIT NONE
    INTEGER, PARAMETER :: font_size_big = 20, font_size_small = 12
    
    INTEGER :: screen_main, screen_printer
    INTEGER :: root_menu, file_menu, help_menu, item_menu, view_menu
    INTEGER :: printer_box, teletype_box, teletype_send_button
 !   INTEGER :: start_button, stop_button, sort_button

CONTAINS

    SUBROUTINE init_control()
        IMPLICIT NONE
        screen_main = initwindow(400, 200, closeflag = .TRUE.)
        CALL setbkcolor(systemcolor(COLOR_WINDOW_BKGD))
        CALL settextstyle(WINDOWS_FONT, HORIZ_DIR, font_size_big)
        !CALL setmatchthemetextstyle()
        CALL clearviewport()
        CALL setwindowtitle("Fortran Machine")        
        
        screen_printer = initwindow(800, 600, closeflag = .FALSE.)
        CALL setbkcolor(systemcolor(COLOR_WINDOW_BKGD))
        CALL settextstyle(WINDOWS_FONT, HORIZ_DIR, font_size_big)
        !CALL setmatchthemetextstyle()
        CALL clearviewport()
        CALL setwindowtitle("printer")
        printer_box = createtextbox(20,20, 760, 500)
        CALL settextboxcontents(printer_box, "hello printer !")
        teletype_box = createtextbox(20, 540, 690, 30)
        CALL settextstyle(WINDOWS_FONT, HORIZ_DIR, font_size_small)
        teletype_send_button = createbutton(720, 540, 60, 30, "SEND", teletype_send_cb)

    END SUBROUTINE

    SUBROUTINE init_menu()
        IMPLICIT NONE
        CALL setcurrentwindow(screen_main)
        root_menu = addmenu("", MENU_FOR_WINDOW)
        file_menu = addmenu("File", root_menu)
        view_menu = addmenu("View", view_menu)
        help_menu = addmenu("Help", root_menu)
        
        item_menu = addmenuitem("About", help_menu, about)
        item_menu = addmenuitem("Quit", file_menu, quit)
    END SUBROUTINE

    SUBROUTINE quit()
        IMPLICIT NONE        
        CALL stopidle()
    END SUBROUTINE

    SUBROUTINE about()
        IMPLICIT NONE
        CALL dlgmessage(DIALOG_INFO, "Fortran Machine, by ker2x")
    END SUBROUTINE

    ! CALLBACKS
    SUBROUTINE teletype_send_cb()
        IMPLICIT NONE
    END SUBROUTINE

END MODULE