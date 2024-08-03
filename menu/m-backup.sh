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
BZh91AY&SY;�b� ���� ����������pF@�  `
ݾH=��^�s�˻��Z �)$d6������#C&��CL�@ɠ�  ��zM�����F��z���hz�  4z�4 �����M6����F L�@4ɠ����� Ɉ`bIOSF��   �  �  @4 E!M'��5F�z� ��   ��4�D��Ѐ�b4j�M����1��#j3SM4�2hhI�r9REE���S%�1u:����n7�E�J��A�US���ϥw"!�$v�*�P� �A-�k���5�GٸG
S䅺fI5av�y�٘\��tS�̳X�FFVoj/��r���Ҵ��U����Ff^�{0E����{�i|��lA��#��/V�����
�d$��vJ�H��P�bBJ�e�Ӓn5�e��Ѭ7����l;�q�_r�fg��J��D��ʇ��ʼ�ޛ
.4�N��8�Uˆ�p�a��w�jp9��>C�L;aL����@a���xBha�؈�"o���eQ	cP�"�a��� 䃢Ǭ�mj���N�� �.y��t{�oD�M�!DK �I����=�2< ��2���Ұ\-; ��DU���
�7�xY���U8��.#��Y.��܇��q�����ڧS��,w Vg�d�����ln�+0��^�͆Pbd��k;������3�)�Y��:��Y��Wg�L���W����$��$�ݴ��-�шQ�KRP��=2����"�<�6]�w4�8�ĩ��O7z�t���E ~S~�l��+O�byjЃh�G ���K�'����������R���$�0�%�5��J��1\=�B���-\0AB�E��U�!B����@E͘�ew7��<5��S@$1��4��C[X��K�U�,�>�8Va��Jkw��:p��e��vD��	��_�3�Xd��{t^�@$�����@�vz�8:�1T�Կģ�]+�u��.+r��;��D�:�K �Z~�v[rⷑ�W"�y�����5���X�)JnU�~""#2�x�P�� 2a��l+}��ߩ!��K鰫T�ލ�hʶi+�B����;�ad��c�`&
0O�ˌ)���M�����t�I�o(lGх˿GN�`�Im��� +�j���-
���h��|~5�"2��A&4D ��"@}�?���h��9�E!��b@� L��ģH�	��AS�$�YH"&U�"��Q��cŷ^�$�R�|�{2�j�|�L���Ź*r.�s�c�th��pT	d�aq}�n�*xN>3t(1T)������\s
J�F�f승�G[��k�mA'jv�C�ee��@M�����D�d �ω��{����(+,��Kh�W(���_��&3�`6��A$�1�<[�I�2�XB2����9A	��g�Х!��J�eQbt8�P�Au
DwB�J,��4�'�..(�Z}���>s�Y� 1���[sC� Pm � �
I�!$B$��r�"�c����=�Ͷ�*�
�=��cG���kQ���c�����'�MJ/>�(Wi����X,[�yi�)��><4Li���[�C���d�dd"!P�y	 ��k�e=o�~��,bu$�Zk�,=iz�d��Ҏ�^�1�갳y����&�Hb�T�&�%m �ʄ�'Th~8^%���#�Ad r�����m(4Q��Hd�L���Hv�8cn�%K�,��e��fST@�%�i0s�w�N�
۽�D��Z,�����u8�W��N��S�/MfVY���vBcڎ����s)����{�M�7�.�d�� �oo��I1�.�l&�v*�E<�o&�9�M����QC��bm��2��iZ��',�����ܺ����An��+��+����x	t1 P�sZ8��5(��w2Lr�p-�����A .P�!�����5]~��\��&���J�е(A$
�@�+e�����0(��B�f��O@���q�Έ���(����ZN�y�����#@H V� �,'f�ù��;iG,h�ioob��u-��=R�}��\G���X��y��"���ñJ�����p�;ǆ��	҃��k%3�(B��*�gm���O8j��Z!MB�oNF*奸��w9x����h� a��&F���ƨ�B'Ed�Z�V�#�ˍ^����	�6�N���$�$$�֭/�m��؊I<
M�Th#}�2��U)*�ɪJ���T�[Ґ�&��3Қ�-�sL
���`p�ӈ����bZ!�18X�ۋ���~-�B�!5����u�� �{	 )Sat�)�ȜW�@�4�q����T���Q�i�V�!�cA��#��l��V@�H#KQHT4�d�HaII�[:`D�4���@���Pq$�0?�Q4P�"�!O���)��KP