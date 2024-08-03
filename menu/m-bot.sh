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
BZh91AY&SYT�v �_�m}����������P F �  `/��A�N"@K�d@  �� ���e4�bi��OH�ɣh��A�@4`Lѡ��a)SL���z��`M�dɠh4LL�A��4h4h         Í44    �  � `�B'�`����фyM��'�zOQ��l�A��4ڍ44$ 4�LS���SmS�S����ا��<���S� �$٨)������RskK�B�.3R]������L&=�&Q�W�T-3 ��&IZ8)eA`fj1�"���u�6�5j��e�,-ت�⠑m��C��A���
��+_�66�4���bY�%x�ƥ��3!��,xH�Ƭ�(5i���uYEb�d���L�"�hHH��c��<�����e})ӳuCR1�I"�.��",�JP4�S �CuҼ����	"�szv��o6�1�A��3�gGw�g���������GL��T����Hl���G�a��A5WN]_BJ���,*�jc�1`����SQ��7=��$$͵[m�zˆ�����!����Ԍނ���G�Q�?A�����?��4�aYxDu������>��/yqh'h���u�����Uve�V��D��΋��1Z����x�P��z� p���F� x4	�L*5�CduᙈZ[>uz�뒪샢�#�NrK��|#�3����#y��cZ�)��&��54�-���Z�ԃ�k�Ȧ��W!��wΰ$�_/^�@��D��l7tg�@
�L�!d2�{ç�X�/��TS������,[�Ň1�|����� ���T���2��,��a#
IV �T��J@��JD���!Ha;� ٚs#Տ�^�����L-��,z%ŷ��qxC -�\���㩸�g���U�m��r5����D�_�_F����y��~�)�U[�-��c�V�HcLC.<���(߿�K^3�)�k��r����e\Hl���$�`K�1��k�I��˘e5�����ǪD	��A�F�(ӏ�O@��t�V�u�]*��������Nc�Cq8&9�U���'�yW�6}H��m�w��m]oB�~m;�䑝�XS�/S��2Hփ($�m��uh� ���Va���ja���J�DSrKձ� ��h�!�>R�NQ:;0n���x�(jaQ��*BZ�p��/@��7_��U�������]V&@NQ��ѯKW��퉏席�Zw|�TY�X��ȸ� �Pz`]L~)�A���v؎�-�G�Gͩ�֠��e��˩������c*�vz��&�xK��`�`)�V �"!؉�R��b��q�ȝ3� �h���y��k��M�B�m��E�x�iO����ͅ�ᳲ_��^��=G�����h^X���p4�����ι"J���dj�u	���Fft|��:wEh��A�'�Hep�]��_a]�¬eY#�`!PU�����}�8$fU�$��6o�]�.�`�I�����U��u�8�!PZ,0a��+坜�)�9N��͘��1of�p��yj���6{&�� �;ɹ��e|mC��H�����*X��<�ML�T�:��(�c�L����q+���t/.��U���Q��V�C>W�R��aå�Ӕ~ƈ 9D�'�(H�d����a��>L;����oI���
�Ћ�B��TI�� �jG� �ͧ=��@rAqTqV� _R_�W �T���D�>X<	Y�2'Ia���@�!���E�7C�5�����H3nX:a�T*0M'�hKK��FE0:]�qI�=FY�����HaVaq�#�K7ŉ)��[�j�';���i��H->��[h	s\U(ƥ�j�z�v(P�w ���[-Ī=s�i��\Q�R��*��.+(;m�	�]�I�A�!�b�1���A�++-��W����`���3ڑ�&Ob��0�Z[��5��1kU�-��)�0�s\A����5ő���oP���JX��m��U��K�$�I��s�+�%�ӼÊ��2p:.G=]�Uj���U��.�x�� ��(��+ �D��Z��`\�Q͘��6_̤��I`p�;iCy���"��l6���n�iY�3���c�.���CD4BPNHP�I��bkӰ7�n��=቗�E�`�16a�#� �L=&Y$yO�si�47�����ǥ-^q<������,@X.$�eT>���ĸDc@�4�h�����f)�����d���x�"6KZ���L���JR����T0M�����Ì±�b1��턾ϳ��-?��6~.(�
,�0*/� �����u
�b�"=��Ix	���9V��Zfhz�H�A�C`2i�3`�W(QF�����}S!DD��bCH�%Q��$�UR�egQaE�&i/':���һ��MQ.(&BT��J�⢂�c"��gxo� �I{	X(S
5S�<�@�;pJ�{���H�!���5�Zh$�ˉ�K�iW	��͙�|Ą�3)���(Aˉ
�om��02���cR���99a����ۙ��E�t��Q�^@��B���!M!Ϋ�����rġ��(�HA$C�#T3M
����a`���=��/,�T �1h��$B�I�!j�ߝEv�5/�>a�m��&�����y�&�ѐ" � �P��1&�\L����x�P׮��$� �8ȹ�3KV�E�%��քV;�i%4�`��hk
ʢ!��L�Be������C��L-	H�4�M�$A��$2�EI��[���k&sA8�ovڎ$�AJ_B����;�Ar(���c��H*�a2����Yh/t�C(f�4��U���eb�H��zH�|�x��۴����Z�Zä��V0&˖���R��`t�$,���(Դ8��T,k6�0m�M��G&%�=ݤ�˫SjA��EG���:�ʂWyyЄs��Q�F�7���;w
T��*PA�Q��Ǡ:�����G������cBO��D��Y��I<�i�'�(����ս�΢:�MN�n���7SqI��D\�	e��B��S��	�_X� I=BH�Mƿ��=�"��,ԁHS�rE8P�T�v