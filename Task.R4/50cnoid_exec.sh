#!/bin/bash -x

_taskname="R4"
_top_dir="/media/player/JVRC4GU"

task_exec_cmd="${_top_dir}/model/tasks/task_exec.sh"

###
/bin/bash -x ${task_exec_cmd} ${_top_dir} ${_taskname}
