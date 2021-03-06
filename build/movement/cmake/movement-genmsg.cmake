# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "movement: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imovement:/home/pi/internship/src/movement/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(movement_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/internship/src/movement/msg/accgyro.msg" NAME_WE)
add_custom_target(_movement_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "movement" "/home/pi/internship/src/movement/msg/accgyro.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpgga.msg" NAME_WE)
add_custom_target(_movement_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "movement" "/home/pi/internship/src/movement/msg/gpgga.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpvtg.msg" NAME_WE)
add_custom_target(_movement_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "movement" "/home/pi/internship/src/movement/msg/gpvtg.msg" "std_msgs/Float32"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(movement
  "/home/pi/internship/src/movement/msg/accgyro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/movement
)
_generate_msg_cpp(movement
  "/home/pi/internship/src/movement/msg/gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/movement
)
_generate_msg_cpp(movement
  "/home/pi/internship/src/movement/msg/gpvtg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/movement
)

### Generating Services

### Generating Module File
_generate_module_cpp(movement
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/movement
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(movement_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(movement_generate_messages movement_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/internship/src/movement/msg/accgyro.msg" NAME_WE)
add_dependencies(movement_generate_messages_cpp _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpgga.msg" NAME_WE)
add_dependencies(movement_generate_messages_cpp _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpvtg.msg" NAME_WE)
add_dependencies(movement_generate_messages_cpp _movement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(movement_gencpp)
add_dependencies(movement_gencpp movement_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS movement_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(movement
  "/home/pi/internship/src/movement/msg/accgyro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/movement
)
_generate_msg_eus(movement
  "/home/pi/internship/src/movement/msg/gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/movement
)
_generate_msg_eus(movement
  "/home/pi/internship/src/movement/msg/gpvtg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/movement
)

### Generating Services

### Generating Module File
_generate_module_eus(movement
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/movement
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(movement_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(movement_generate_messages movement_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/internship/src/movement/msg/accgyro.msg" NAME_WE)
add_dependencies(movement_generate_messages_eus _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpgga.msg" NAME_WE)
add_dependencies(movement_generate_messages_eus _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpvtg.msg" NAME_WE)
add_dependencies(movement_generate_messages_eus _movement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(movement_geneus)
add_dependencies(movement_geneus movement_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS movement_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(movement
  "/home/pi/internship/src/movement/msg/accgyro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/movement
)
_generate_msg_lisp(movement
  "/home/pi/internship/src/movement/msg/gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/movement
)
_generate_msg_lisp(movement
  "/home/pi/internship/src/movement/msg/gpvtg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/movement
)

### Generating Services

### Generating Module File
_generate_module_lisp(movement
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/movement
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(movement_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(movement_generate_messages movement_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/internship/src/movement/msg/accgyro.msg" NAME_WE)
add_dependencies(movement_generate_messages_lisp _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpgga.msg" NAME_WE)
add_dependencies(movement_generate_messages_lisp _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpvtg.msg" NAME_WE)
add_dependencies(movement_generate_messages_lisp _movement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(movement_genlisp)
add_dependencies(movement_genlisp movement_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS movement_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(movement
  "/home/pi/internship/src/movement/msg/accgyro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/movement
)
_generate_msg_nodejs(movement
  "/home/pi/internship/src/movement/msg/gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/movement
)
_generate_msg_nodejs(movement
  "/home/pi/internship/src/movement/msg/gpvtg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/movement
)

### Generating Services

### Generating Module File
_generate_module_nodejs(movement
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/movement
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(movement_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(movement_generate_messages movement_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/internship/src/movement/msg/accgyro.msg" NAME_WE)
add_dependencies(movement_generate_messages_nodejs _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpgga.msg" NAME_WE)
add_dependencies(movement_generate_messages_nodejs _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpvtg.msg" NAME_WE)
add_dependencies(movement_generate_messages_nodejs _movement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(movement_gennodejs)
add_dependencies(movement_gennodejs movement_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS movement_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(movement
  "/home/pi/internship/src/movement/msg/accgyro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/movement
)
_generate_msg_py(movement
  "/home/pi/internship/src/movement/msg/gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/movement
)
_generate_msg_py(movement
  "/home/pi/internship/src/movement/msg/gpvtg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/movement
)

### Generating Services

### Generating Module File
_generate_module_py(movement
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/movement
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(movement_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(movement_generate_messages movement_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/internship/src/movement/msg/accgyro.msg" NAME_WE)
add_dependencies(movement_generate_messages_py _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpgga.msg" NAME_WE)
add_dependencies(movement_generate_messages_py _movement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/internship/src/movement/msg/gpvtg.msg" NAME_WE)
add_dependencies(movement_generate_messages_py _movement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(movement_genpy)
add_dependencies(movement_genpy movement_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS movement_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/movement)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/movement
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(movement_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/movement)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/movement
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(movement_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/movement)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/movement
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(movement_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/movement)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/movement
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(movement_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/movement)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/movement\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/movement
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(movement_generate_messages_py std_msgs_generate_messages_py)
endif()
