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
BZh91AY&SY~pHP  ���1s�����������PD@  P�Wd�3�Εdܑ���M��2�&M2�S4�2=G����H2=L�I154�OSOS�P�M �h�� �H�H?FE?!A�OI���#��C�4d ���C&�d� � h2h 4  � �I$�B��M�����j4=@�F��  z�CHD�q���Œ��j���Ǹ� 1�5b&�]�Nl���0�P��ҙ��j=�K�Za���G�<����v4wg�g2��c����Yk��f�U����y�$���wR���hi�eX)��lH�d"V�c%)�Mԅx���/W�]I��K|nk��
p�-o
Zg�����C��=q�6��*�iRA*�i�S�n�Fr�y��jɓ6����:����#���1$:��;��*,Wr�P������yM�y)���Υ�u�3�ȀS��������i���p�@�L��n������o�i�Vva�)��o��	5���D��
 ���7���9�ļ�3S�7��$_d�r���I�o��.޾4�Aޙ����K\6������?�1��\V�#_6A�|���Ȳ�g%�t�*#1.ҊԅdV��ԗ�+�{E�Z�� ?`�
�#q�~^H�
O���8M ���� C�U�ᲅ���T��W�6kX���a�����6�[�լ������çs�0��3�R�����(���|ţWo��K?�;�����K���kvOJ 3K���ႄB��f�wdD��`�)��/=7 .�4���͒���nە���
J���ڜ���UAMv��b��3�ǲFp�"ɓ��HBN�AOQtMܾS�j��)�=盞B�0؏u�`�f0h��ۃ�m
9a�Q�֐G����xt�[���0��*�j�)I�t�DayN�+�]��Jz��)]�ŷ���c�y!w�z,�3z�v��@-΁�޲�Jğ5�m� ��F�Bȩ
sBA��@,X!�9Rj��8r��kvq�F���HU4�:t�8/�P�0K��d�9Aѡ�wo���Hd���?t�XT�N��h���;�aSO2��_��C���(X��o���N�n4��U?@j-h��M	5��i)�)��{�+3�^	E} �,�k��绸NF�q�]E�F ��%G�W:�3�O�#P���9>I�����k^"�^Y��!8�)C�<*��mu	�ht��$�'8�!:�2K�qp�$�*t}lCCc���w=ǧ\�!N�͘�2͇�/��Sۻn��L�f��B7%�tϱ��Mv��e�4���o$��f��ȵM5���bYrV(E�ʵ�Z��=Zcb��Qһ��
�[\��|\�l@�U�'[�'R!���$�7To�%�lM$3�Ug��6�C��8�+ʕ�UW3��p����*�R�6߽��@�!L�IE�C*9�C\`z�Ł!U{
�4�!�k���߬�(D�؄�Kl����p�,8F��I�m����΀��@�Ą&c/�I  ��3�rE8P�~pHP