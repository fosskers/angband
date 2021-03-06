MACRO(CONFIGURE_CURSES_FRONTEND _NAME_TARGET)

    FIND_PACKAGE(Curses)

    IF (CURSES_FOUND)

        TARGET_LINK_LIBRARIES(${_NAME_TARGET} PRIVATE ${CURSES_LIBRARIES} ncursesw)
        TARGET_COMPILE_DEFINITIONS(${_NAME_TARGET} PRIVATE -D USE_GCU)
        TARGET_COMPILE_DEFINITIONS(${_NAME_TARGET} PRIVATE -D USE_NCURSES)
        MESSAGE(STATUS "Support to NCurses Frontend - Ready")

    ELSE()

        MESSAGE(FATAL_ERROR "Support to NCurses Frontend - Fail")

    ENDIF()

ENDMACRO()