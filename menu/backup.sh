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
BZh91AY&SYG=�S  ���=s �����������PD@  P{��Rr�wX%�%<#F�b�MG��#�M22a24��ML�h) �e2���OTz��3H4 �@ �h ��&�i��l���124���j0@�����4 4�  Ѧ@�� 1  $P���jG�6�FC&�G�   hh4���}S�׳���㑼�r��P��H#TLju��~Q1B惺'�����`�?;]��=������*ɷ3#s~N��n����mN��V�\ɗ�	4D�U<Y.y��$OK�\�؃u��I�/Zx��^LD�j�rr.�@cn�K�Y`��}W��|c�FV���_:K1�G$�6���\�q=Oj�nJ$c�j���S��S�B�����yd�v��%�c �I�:o;\TCܖ�jF5�����6�,S1-$����Z�/�8�B�ەbۧ
T'\`!]����Z�m/�!7�/gI�~E�V����:f( ��\��������)223��1����Fg+0�b�"�kD�˪��Wu�)'8��NU7��^�q��&JM��8�Y棡�%��}M��F�w;*��75="�be�7��إ�4���-�z���.��������x��i0��0=�:�����!@�L�x��г�k�3eY]3�>C�Z�XnnUs;��đs{Q��,.	pg�F��IǕNFbX*�b��V��)��{��3��{05[��蘊G ��|;�#�����6?����w�
k`ڥ\tهR��7U��:l]�4ATb%j{pI�(pYڙh"�Aq'nl))1�(��#�(F���U�M��-*|�!��I�=T$�{S����(,��fĚXu��3��	��d% �l�y,�X�̔���J�f��8㲑l�4)P˭^�@C2>�!�kM�#�z�G,�e��=(���.Ī����łJ����u�u�Lz�@�y�?5ٰ�w*�u��+���f�T�i�#�gb3L��')$��\�f�ſ$(9�DI��Elv޲��qHm��ej��\��uGӋ��nU6;�$It!��Dz��+y�x$D�9\�{��Ǩ���]w"�	決HSӴ F��jt�MXe���������� ��.+O�0��"��"�AHq�.��Dj��s��4",����@����r#i�cβ�&��P/�C�!
��*�i|dP�y���w�8���X�0Jeu,���
�x\(�΂�ct�J�T2�s� #Z�k֠AB#Y�'LtF9�, �A5J1"�"�	w� ȸ��h���-�!��-J�y0z��1��(@�K��L�z��d�9�Zf�A����}��|@�Ą&�[� �&1��w$S�	s��0