add_library(CsDBus SHARED "")
add_library(CopperSpice::CsDBus ALIAS CsDBus)

set_target_properties(CsDBus PROPERTIES OUTPUT_NAME CsDBus${BUILD_ABI})

add_definitions(
   -DQT_BUILD_DBUS_LIB
)

set(EXTRA_DBUS_CXXFLAGS)
set(EXTRA_DBUS_LDFLAGS)

if (DBUS1_FOUND)
   include_directories(${DBus1_INCLUDE_DIR})
   target_link_libraries(CsDBus
      PRIVATE
      ${DBus1_LIBRARIES}
   )
endif()

include_directories(
   ${CMAKE_BINARY_DIR}/include
   ${CMAKE_BINARY_DIR}/privateinclude

   ${CMAKE_BINARY_DIR}/include/QtCore
   ${CMAKE_BINARY_DIR}/privateinclude/QtCore/private

   ${CMAKE_BINARY_DIR}/include/QtDBus
   ${CMAKE_BINARY_DIR}/privateinclude/QtDBus/private

   ${CMAKE_CURRENT_SOURCE_DIR}
)

set(DBUS_PUBLIC_INCLUDES
   QtDBus
)

list(APPEND DBUS_INCLUDES
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusabstractadaptor.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusabstractinterface.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusargument.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusconnection.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusconnectioninterface.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuscontext.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuserror.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusextratypes.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusinterface.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmacros.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmessage.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmetatype.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuspendingcall.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuspendingreply.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusreply.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusserver.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusservicewatcher.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusunixfiledescriptor.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusvirtualobject.h
)

list(APPEND DBUS_PRIVATE_INCLUDES
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusabstractadaptor_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusabstractinterface_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusargument_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusconnectionmanager_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusconnection_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuscontext_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusintegrator_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusinterface_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusintrospection_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmessage_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmetaobject_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmetatype_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuspendingcall_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbus_symbols_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusthreaddebug_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusutil_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusxmlparser_p.h
)

target_sources(CsDBus
   PRIVATE
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusabstractadaptor.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusabstractinterface.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusargument.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusconnection.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusconnectioninterface.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuscontext.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusdemarshaller.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuserror.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusextratypes.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusintegrator.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusinterface.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusinternalfilters.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusintrospection.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmarshaller.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmessage.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmetaobject.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmetatype.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusmisc.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuspendingcall.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbuspendingreply.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusreply.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusserver.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusservicewatcher.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbus_symbols.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusunixfiledescriptor.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusutil.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusvirtualobject.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusxmlgenerator.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/qdbusxmlparser.cpp
)

macro_generate_public("${DBUS_PUBLIC_INCLUDES}"   QtDBus)
macro_generate_private("${DBUS_PRIVATE_INCLUDES}" QtDBus)
macro_generate_misc("${DBUS_INCLUDES}" QtDBus)

function_variable_fixup("${EXTRA_DBUS_CXXFLAGS}" EXTRA_DBUS_CXXFLAGS)
function_variable_fixup("${EXTRA_DBUS_LDFLAGS}"  EXTRA_DBUS_LDFLAGS)

target_sources(CsDBus
   PRIVATE
   ${DBUS_INCLUDES}
)

target_include_directories(CsDBus
   PUBLIC
   $<INSTALL_INTERFACE:include/QtDBus>
   $<INSTALL_INTERFACE:include>
)

target_link_libraries(CsDBus
   PRIVATE
   CsCore
)

set_target_properties(CsDBus
   PROPERTIES
   COMPILE_FLAGS ${EXTRA_DBUS_CXXFLAGS}
   LINK_FLAGS ${EXTRA_DBUS_LDFLAGS}
)

function_generate_resources(CsDBus)

macro_generate_package(
   CsDBus
   QtDBus
   "${EXTRA_DBUS_CXXFLAGS}"
   "CsCore"
)

install(
   TARGETS CsDBus
   EXPORT CopperSpiceLibraryTargets ${INSTALL_TARGETS_DEFAULT_ARGS}
   RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
   LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
   ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

install(
   DIRECTORY ${CMAKE_BINARY_DIR}/include/QtDBus
   DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
   COMPONENT Devel
)
