cmd_/home/george/Modules/Test/modules.order := {   echo /home/george/Modules/Test/hello.ko; :; } | awk '!x[$$0]++' - > /home/george/Modules/Test/modules.order
