#!/bin/sh

KERL="/usr/bin/kerl"
KERLRC="/root/.kerlrc"
ERTS="R15B03"
ERLTARGET="/usr/local/erlang"

echo "INSTALLING KERL"
curl --silent https://raw.github.com/spawngrid/kerl/master/kerl > ${KERL}
chmod +x ${KERL}
echo "KERL_DEFAULT_INSTALL_DIR=$KERL_BASE_DIR/installs" > ${KERLRC}
echo "KERL_INSTALL_MANPAGES=yes" >> ${KERLRC}
echo "KERL_DISABLE_AGNER=yes" >> ${KERLRC}
echo 'KERL_CONFIGURE_OPTIONS="--enable-native-libs --enable-hipe --enable-smp-support --enable-threads --enable-kernel-poll"' >> ${KERLRC}

echo "INSTALLING ERLANG"
${KERL} update releases
${KERL} build ${ERTS} ${ERTS}
${KERL} install ${ERTS} ${ERLTARGET}/${ERTS}
sh ${ERLTARGET}/${ERTS}/activate
echo "export PATH=$PATH:${ERLTARGET}/${ERTS}/bin/" > /etc/profile.d/path.sh
