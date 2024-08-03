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
BZh91AY&SY%_  ���g�� ����������@D@  P^U�GWm���&�H����<��4z	�h� h CM $��MM��y)�����C� 4�  G� "i@ � h  �d    4�A����� hh4d  �bA"DBeO�G�P�6���zM������P=Ch��S@ڗR�9���/^4�ΗϚ
X��{�N��v�+��z����Q��E!H�[>|ċ���\Ut��<ŋD�`H���u)�v��]%�XÈ� �]/�)$f0����g�V�h��t�sW���̆Q�6ܫ�${��ݚF8�GE�H�#˥2��9M���K��C��/VU%��6�|���~���ۋ�2܅q�h[�/b6���7����JD<���X&`"�) I�" "�]l��r��Jj�0��8Jtb=�J���`8�n��ӵ�L��3�@|�Ib��x���	h,)2�����a]J�B��,���eA֗"Q�?��ߣ� +�U#9c�BKD#P�V!*2�Ibd6"�Çj�%nd��8������@t�W��g�p����*s��$%�-f#Yo�^%B�{>�*��1�!u�YX��bU�h'gA�X�?�?M�f�>��������p(�V���=�up�>���J�W�Dr�K�5���Q�зR�R�Ū��d�ZN4�4d�+��Xi<���
>��,CV�O�x)�&mJ�a�	��2J5at���B�3eˍ�Z��m����@�%�G�!�s(H<�L���0t�X����ƞ�^5j���V�t�4�R�G.�N�����`ҖC��R3�7��H�pR�7�"LH�YL�_��J8T&�x�i���<d�x���"�|~K����nЌ�CF
����U���4�U��_3�Un]���;v�-\[{�$+��p�\ϸw)�(,�Nj�!V���F�U����ڸ['\�,wJ,4�u��:IcY.����v��_�H3��ہ��0Rm��T$��ԅ#�L"���}�O&�M��5∟���@�m<mJTY�A{��F�s��s�|SR.�SO�\3�J.�g#�(llQ�)ʲ�Y���A#)�/��X��9L��m�:�����n��O-�vC�C�\�;	��d�L���w$S�	Q��