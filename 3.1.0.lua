-- -*- lua -*-
-- -----------------------------------------------------------
-- vapor 3.1.0
-- -----------------------------

help([[NCAR vapor visualization software]])

local vapor = [==[/usr/bin/singularity run /gpfs/group/pmm116/default/sw/vapor_aci.simg "$@";]==]

set_shell_function('vapor',vapor,vapor)


