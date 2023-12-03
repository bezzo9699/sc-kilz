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
BZh91AY&SY�ǧ�  ��� }���oޮ����    P��λ�AD�!���    ��  �S��'�6�m�    G� �	�I�S6�ԏ�j<~�茆���6P�2z��FF��C��i�@#&@0�`I4КM��M
z���6�i�=@i��4��6SA�Q��iOM�ה�/{��C�|� ����;%0D�2��S��3�����Xħ�헳�>��00!I��. ���9B��G�~�B�<9���mF��n6�
Z�s�TM+�ު�鋱��J+;gA�����űW��	�w�����]S��6�n�\���I��n�vܶYI#�gz&��R��:��2��Z���۷�"�a|xjaG����u#��'�����"8��Z>l��{K� Qᆀ�UUUTJae��}S��y#�LV�R%���07Fɼ�A�b�q�v�6>6��;/a����-9~����6���&P��3i(P��'�/N����A�m�Q�ko��x?;z�\L䃂[��r9A@�H�2$̀����߶��Q.��]Ob�������3�L�H]&Ƥ�I���4!6�0WP�dűlZ���PG��� ��t�Yӑ8�8"*՞xغ�y7{B��;ă��8�S�.eU�T����&S=����^�X���BLoU�݉��p�7-5|��\�E��731��F���i��]�*�xtˌ�r�3K�v�0�p���'M�}�j֚���(M�/ �����sR*EhH�`�6���d�kvP�����Pײ�Os�������˴w�dF�v�be���I�і-l-�D��%8��e�f7���߂�
)��g|�kJ�:���iLDR�W+�Ȟ�Ͳ�"��i�ʙ6�̅Hn�a)ZR�p��
:I��ӇG4�*�i�,è�3��Ǆ��d1��,Hį�&��ٮR!HK�@��G���V���a�Y���$��s�	*��H�
����