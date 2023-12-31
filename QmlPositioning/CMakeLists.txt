cmake_minimum_required(VERSION 3.16)

project(QmlPositioning VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appQmlPositioning
    main.cpp
)

qt_add_qml_module(appQmlPositioning
    URI QmlPositioning
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES BlueSquare.qml
    QML_FILES DarkSquare.qml
    QML_FILES GreenSquare.qml
    QML_FILES RedSquare.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQmlPositioning PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQmlPositioning
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQmlPositioning
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQmlPositioning
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
