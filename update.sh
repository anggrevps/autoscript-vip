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
BZh91AY&SYΛR�  ���DX���/nޮ����    @�  "�4���  h  4 �4�@a4dhhd0���4 b2d�M#C!�� �� ��I2LFM	��i�l&S����(�bx��A �G�Ƹ����iDw3�22I0FJ2��$ݘkڸ�[S9����8�%������U�W]@xD �At ��)���gG@ ��K��S!�VX`�h��?�z2���)���Q���x�y@��f�AP��[p��g�t6�n�%�[����t���	�&CC�`�"e���Ю�gG<�a�O�#���ǁ�k���Z����VsȇR���U�G�bР�|���¸q���#W�HH���y��'����7d�\�䄆�II�~zU�Gw�����acnc6�e����|<'k��Fdx��������x���9���&�YFXY!���@1渮���L�~�E��瘄9�{�$��˨[��F&8���t86.��Q9����'��YJ�?�p�O��|�X.^Gֵv��`3 �ňs3k1�c��)��p�D��
�� dS���2t�9�cҠ"��f'p�Ѣ8���C���j���x���{�jd6CO�2�^�%Ż�6hР+��A�^Sn,�uO�p=�&���B��0�x��a�g�=u|��-Q��D�5�!��^�/�y��QJ�$9�O�X��$�o�bF	��i@��)�ֳ�ܨ*5�3ɐ�eV���E�2q��L���$,8srq���r`b�e��y/cZÖ�W���[2�(�S`�Ap\M�j�Z�ȕ/Dvs+l_�e��<�I%�	$��W/�]��BC:mJ\