#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f TxtInOut/output.sed ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/output.sed"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/output.sed"
    mv TxtInOut/output.sed ${OUTPUTS1}
fi
if [ ! -f TxtInOut/septic.out ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/septic.out"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/septic.out"
    mv TxtInOut/septic.out ${OUTPUTS2}
fi
if [ ! -f TxtInOut/watout.dat ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/watout.dat"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/watout.dat"
    mv TxtInOut/watout.dat ${OUTPUTS3}
fi
if [ ! -f TxtInOut/output.sub ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/output.sub"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/output.sub"
    mv TxtInOut/output.sub ${OUTPUTS4}
fi
if [ ! -f TxtInOut/bmp-ri.out ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/bmp-ri.out"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/bmp-ri.out"
    mv TxtInOut/bmp-ri.out ${OUTPUTS5}
fi
if [ ! -f TxtInOut/output.hru ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/output.hru"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/output.hru"
    mv TxtInOut/output.hru ${OUTPUTS6}
fi
if [ ! -f TxtInOut/output.rch ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/output.rch"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/output.rch"
    mv TxtInOut/output.rch ${OUTPUTS7}
fi
if [ ! -f TxtInOut/chan.deg ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/chan.deg"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/chan.deg"
    mv TxtInOut/chan.deg ${OUTPUTS8}
fi
if [ ! -f TxtInOut/hyd.out ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/hyd.out"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/hyd.out"
    mv TxtInOut/hyd.out ${OUTPUTS9}
fi
if [ ! -f TxtInOut/output.std ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/output.std"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/output.std"
    mv TxtInOut/output.std ${OUTPUTS10}
fi
if [ ! -f TxtInOut/output.rsv ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/output.rsv"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/output.rsv"
    mv TxtInOut/output.rsv ${OUTPUTS11}
fi
if [ ! -f TxtInOut/input.std ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/input.std"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/input.std"
    mv TxtInOut/input.std ${OUTPUTS12}
fi
if [ ! -f TxtInOut/bmp-sedfil.out ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/bmp-sedfil.out"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/bmp-sedfil.out"
    mv TxtInOut/bmp-sedfil.out ${OUTPUTS13}
fi
if [ ! -f TxtInOut/fin.fin ]; then
    echo -e "$(c R)[error] The model has not generated the output TxtInOut/fin.fin"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output TxtInOut/fin.fin"
    mv TxtInOut/fin.fin ${OUTPUTS14}
fi
