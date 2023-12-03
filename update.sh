#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY1�2  ���M����ooޮ����    @Β���4S51=M<���4Ѧ� hz�L���P� L�F�2h@�   d��44���@@1# H���#Sڧ�xSM�m�i����m#!���P �"'LG�gF3Œ�7����|5�4iN����m�����-��kl$����ė,E�[�bC��(�њ�L�=X�, ��D��E��_�}+)>��9}.��5�X�YX����a(HH�dg����)�ȋr6�k��L����Yn��w��,\�$��0���h72D��㯟��N�ߤ�Tr�������h!P�$˪ռ茝}w�*�`� �ߢ��7��LZ�	�%�;]h�;�X�f���/c�����P�ə�6��6�>��fI�k^l���WVh�j�%��fh��7�v#O�W��X��sOdƝ��o�xe[$3��[��./<ߚ�)�Օ���r���~h]�'����+�����y�!\)�
v� K�t#�>���[�v�>}F$&�
,�Df!2x\�����g&aMN����H��hI��v8,STY�'l��P�� �f�uI��w���Юq_x^bŻR�Rq�S�m��E�49X~�]# f� pb<�m�b�=�^�p�LJ�"���ZV6KHX�h0��|����oI�y���`PP�a'Y�m9f�É^)ral��2��d��/�C�	��Q��_m�a !/�L"�"��J,\� E��62��&3�)>�K;�����c���L�����$��	$��U����)��)��