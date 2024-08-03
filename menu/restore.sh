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
BZh91AY&SY�P�� �_�qs���?�������PD@  `?> � �)@QB�4�A����� hh4d  �bC���h44424 ��� L@hp4�M���F�d��4ѐ 	��i�������44�2  a1��ALS������~��є�?JmO�1�SOQ�E�2OP�=G�=FcI�щ�@ښ4M �iL<%јvq�ؽ���4���J�	D��>L?��4Q�I�hsH��3�ŧ���G�;DS�wЁ��a�6�G�~���"QΖ=�$3Cy��?s���M���oq�'+�a�� d՘����N���ڐ:�Bo��3(�%�a�Q���7-�qp#��\��״�0�j��ls/C�v��Y$Bn殶ng����f��BN!��F�����3?+��a�s����4nlmu7�M̞T3�'��Z��5j0�7����q����Q�ì!�!	p��!���C��o�X�A�{#�sk7�����Y5�=!�(�v<�k��;�
�/�	@I�ԕm2g��޷���?P�$�!��3�f�{�B�1��>�;r���'�&��:�S�Ff�U�����d���W}�>	1����;���S�u�s�����S�0Tx(�e�U�>>l�q�r(�$65`rwY��+pjt��[��҄�twA������K"%m!i��tр(W5�9�����X�M���c�C��e�N#�2�x�P�w�]�&�#��8��Hx��!�G�ԅC�7�Xj�C3��� � �lh��[�M�y
������Q�PS}��K��t�I]��f�������6!W���h��c%n=�fnW��M/���7ՙ�z��̒L?�����YO�0�S�E�(m��y�]���ԏu��}�r�P|H!K�n�/a	1��w]+��pG���k��a��l `BN'P������Q�6���ʺ��&a�����գ�Hl�,0��I��h�:]��s�޷[��!(�VO#c`l~���{!f�}D-�1��\��3�mBԠ��[Dԯ�G����Lр��0:�0��i9��! �#��� �:\�
h&q;[��VƬ��a��	��*-G;�xp�04	# �Ǒ�0��N�}��5<�Y:�_���l������<c7�<a��'���0�{í�r�èlr<���;�yM/+�=��I��qAaj�ܳ{K�b���nx�]��C��t:��=g��?a�K����;��f򙍏+`��lmxBOy��əA!��Gc�j���l� �@��޳2�,�Å�.�9&�q��X��@��i�r��R2{�h�pp*�Τ�F��<#��+]��F��!'����&�3t���7��O�����8<,o(��%�1������K�%�-���r#p�LCxަ�{{��Y	38�(�2os>� KXC�ot������օ�fQ���� u���u)��u�{E�F@܅�U���ndJ\
��BB�-��C/�`*Tm
H
7��+'�fQ
���Y�[V�Л6њ��v��/od���9���~��5����6�h8���C��h�MN@K��*���iaAa��nv������=�g%��_#�<��� ��lq<�hm 00?�w$S�	�
|�