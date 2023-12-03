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
BZh91AY&SY� �  �_� ]�3 � >���@  ��2 F�!�`d #A��02���dSRjhjz��1I���i��S���	KGL+u/�.j?#�<OܒI=�jT�0�?��-k-k-l`�˄h9���s��<���i�����_]�Y_d�O����ߙ�Z��n��Zt��:>�Ώ:9�������r4w��Z��+3�}�R�\Xռ^���^�R��ʕ��$�I$�LO���ǘ�m�^E|�)�`gv��u�����h>������������+�5�qNc���fK���x��i��G,��q�&�4+'�DH�"B#�oۡ[*0�u�b��$��Jj?�`,\q��\�Ja�V��M����(���F�l�e�i-j�q�Z���\gJs��z��]��BC�d