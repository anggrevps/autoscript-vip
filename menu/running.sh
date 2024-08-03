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
BZh91AY&SYc�>p 	_�w������������P�F�  `�����}��v2st J�Y(QB�I��L��z�dM4��d6�� i�@       h  �� h �   j���j~�� �  �2 �24  @"��P�@�h M �2 44ɓ���  $�И�LLM&���A�=COBi�@hh�@� 4�A� �FM&ԛM��O#I���4ڞ�  ~��L�@h��O���HZYKA�[��G�G_�V�a�9J�@�  UE   PP1@s@�$���i�C[7VY��_�����Ӧ�F����g�Z}s������j O���T8��K+h��(���c� ��v�� �Cȶ�i���oR#�az31ZL�*r%�Ղ��W-����ￛ,��P�}"��0�0�`�75������@m�Z��g�A�{�yT)�� s��
�0ֲW�=z#P��Q/Pu��H�P����_\���]�y�(ГA�}dǯ�M�HA�>���=��!qk[;立8q�|���4�6�Yd�\Aj���ϊگ�P@��%SJ&7�&���4%��2�4ȣ��?���v�lQ&( �m%F�iGc�E ��N�/�B�qL�Ϭ55�~q��9T��zm	R����*{p����� ���h/y��J����X���O�G�={q&� ��9]�c��lb@��� ���������yQ ��SՌ�r��Ym�U��%�=D��ŏ�6|�[/'v��֖�2H
b��AKi(S�+FaÜ)m;Z�xǙ�A�wp�׋���#X)��ȫf���D��^�h6�/��&j���(��REB�*ͭJ<mN֯A�&��[B�P�22�i�S��qc��|W��X��dU�����ﻭ��c!dribz�$�0
j���
@s��|]��8M���� �����>!I>'\�"�F�i!�?2�)?G�!J� i��O�+:�	%��+J�2��J�828�qL�s���j ��N�� i�P����"���q��AU�*�K��-5�`���,��}}�6�e��������<�Vi,� �r�SM����
jOK�t��g-���Oʡ�q�?�؃��e<�=z����0f�moپ�=��z���ޚ�r2��!p�#A�{��qa�&��� �6������:�:��H�)����xY�)��K=ӱ$��	�Z��Ġآ�Z�	y�c�6��P���(�5���wE�'c6�J�qd����K& �J�7���~�8�0;�c� IA�"�Bb�BuĆ!:�8�[>�¦��ko��y�@Pax��"�iq�>A�~��ɗo\P�[L��S�$}4H��_?�#�@pe�S�ۜ���Z���rTN?�8��{7m:���ի�b��WY�E6�ǘ�zz(nڞR�)����)�c������q�-T{��-�yl�.��i 3%>Iɖ�9�n&Ws����(�`��h�;lPMz��wn��H����g:�U,�D��#T.%���!,:D��������3�u���F�:
��9WK$ǻP넬H�f�˩5���0�Qv\KJ�KtA0�WKn�ɞ�h\��\M�J	��9������N <����1K͍9�Ьh�(i<8a Oϴ¶���m���=�D/H�D��
�HIFp��Q�G�6�0㧳�H7a��r�0�K9�T�^fG9mb��]�l�hȺ|>�l�������N�A��/��:�}��&6?Xg�v��Kg?a_�Rs�8����q`�~K�6��^]�@�b��+���O�fH�zNڐ��k�Q��;U���,�������߭bӐT8}D��s�����4$��H7މ��S�1�H<$kx%�Õ�a�6�5��{tͥ~T���>��5�w_Y��L+Un�sq�8�80^^}�Q���-ř ����/)���SLll�:@m�pBF/F�X"�1p9E��W�͐��� .�T��섎�G�9�M��-@�ﺾ�;���j$���IiaE�B>�Ȗ�{��Z��%�C�H��������N�HX!`��p�2'�e3�3:,�R�%ON���)Mݹ�hT���Ԅt�=S�?i����� �q�B\�p�����^8�9�e�`.~'f�0��:f^)xGT�0!�	H5!'�4ږxވr<b�^��UUU;�MCd�Q�������m�ʕ�5�w{�i^k�;�>�m'D�3;t&d�������D�8.� �9u5w��+?1������{�a�����2�Y�P]�~�c��C�zJ�A ĽfT��8��=��;�#�Ƿpi5e	D�������Ft�o�"YMڂ�������\�p0)jC��ȳè��~	|�n��vf�yl�����uZ��b�Z�F����ُ��'L\�\�!��)y"�� �x�֍ţF���� `U=p&s5�+M��S�$�ʮ��m&Jk��$|�q�{���#|0�����4a����nlh���ly�՗w�|�	�=�t��.��z��P���H�	���J}�)K ��&���-���J@�h���KH�����I�N�˪�x�2#� ����A�Zh�P���ZS�Ӓ�g�kgU��Kǻ���ް�"&�B����n5��GJt��E!Z�R��
��W�n���!t[_0&kQb�BB�ΐ��`�b��^þ�:�?�P��d�> ��-p^��0r�}ˈ,K(Vi9��;�
N䳜{�"%"]����'5��B��.	��\,H�$$
��k��� �"	�
f�mף��z�9�ջP4I���+��"���.�r�8v���LA��*�pu�����猘I2T�5�lUBHIvk�Q���bn��	�ݾqu)��׭�02q���kz&�$[�*��`p�=�ZB�}�J�0�!��T��#�l�T{Ƞ�@�Hn⒴�� !l���wb��Sa(�XF���H�A@ y�s�NC
'6Y��	���J��0A����
���|T�DW�P!�����u��/�|���(܄�^����"�(H1��8 