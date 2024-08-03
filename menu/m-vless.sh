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
BZh91AY&SY�'h ���{�(�����������p�F��  `!}����� ��M�P�H�e�m�jl*�c���JUI�+X��)U!JT�!
�* )�TP�&�bbh���� ��24� �L	�`�M56�4ԛT�!4�Cj�(�OLS�C�yA�h��z���F�h                              �4b%?I�O�0��x�L�Ɗh���PmL� �&� D�	��P�Sb'�z4�2��ji�=C�F�OQ��<����4�C�ɦCOD� XDE��ea�#o'�p�& ��n��S�S���eJ��s0��<��NB������Ia��/�yf[J�M�g�ʵYQ_ܡ�3^�aRj�� ²��t<��2��C�/O'<�F���N�A׈h�|._�#-����I���kM8i�]
�O�j�+����A������&��$![G���a�o�,!j2�	U�7CG><���t�R�%>E���x�8�qc�PQ��*\��.ȶa��Ķ�T��M��z�ڽ����v���P�i�W�U/��7.����~{k�3���i�}�s��
_�h�0*7c�I*[�sZ��̆8W<��@PwK�������O)�U
����"�N�`�
Xp����0�k �+�v��dws�-4W�OH�5�:_ 94��~QH�y�7����mF���v��_�ݩ��Nv��/���ۻ@�.G3�񞹁��wϠ����MTy	i7˝�a�~����-˧��Vfg;�����n�?(O�_|]��*3x�Z:��������|<�#�/�sAqR1X� ���	�J�D*ݠ�d�FJ�ПL�&�OhE�/�ƩE�L�Yym�n�ځ`�i �v� �^�֥�U�m;@B!!V�5��]y5Y�s�9�'f����_�@"�"wOoz�B�~���zD(�E�X�b@	��~�ܐ	#� �F!÷���:�m�Z��m����j_2�S�)ԜS���ì@�f�힨Gۍ�A�����P� ��M�y�ϳ���L=g��"��@��Ӊ`�)b��7}���S��kB�N:Z��[KU�gGED��o��	yȾ�~Sʙq�Q����������D	���`U�kZֽ��\P�ƀַ�}a?��[��(V�UW�ʵA���h�3���^Ӑ�<S��y��xC�栨�1��r�-zL��z�	�|��!j�\\>Oö�7w�1i�@��t=ƾ �/)?}J��Ud:z��z�#�Ǥ�c}9Y�8�KV[$�G[K�qr�]2�����qfoh��EZΣ��keU�1��w�Ӗ~�����p$y52�¬�)�u�:,4�Jp׽��:;F���``m;U�S�bw�&ׅ}[N���vKL�N��>�2go�%��r�Z���F`��rXZ��$-5�6�I!'�0Z8Uо�<;8��"�-E�4�"ȱ �;0��L��
Um�,�.���r:�5��F.��]Bx���Aۗ.K�
�,�v�������F�=�z�b����z��jbe�;�N9��j�-D�!��I$�rR�0�\��{�@�^}��ysfƜĬ��4m�){uwB؀�hr�D(�pm�N.�GC����;��><�'�@Z���n5��N���������h���@s䧈��C�?]� �!�S��*ވ��=�n�2��g��+��_�A�'�|44gC������8��:<��Z��0�ӷ 4~�~�3�#ն����)�ʥ��<��"\(��`Ì��X����ҷzt�Qa�	"�@k��K%
�D}�' o��\�4%z�u[C�@e1Q2�6@��i����-k%U���Z�;��P���n(��C���\� ���WNx!�r��J��K� �iR2O<�c��	�&�$�Ó~�D�P̽BdE����`QOtIc���Z�{"�!������E�!�����O� ��)+��S�,r�J][t�S�E�D P��2�e�XF�S�X x ��0R�+��U��RE1[:Cm�g۵6#hQf�HLa�,�� �Š~h�"�J`!�(�D��'�}&򟬅G9�*}d���g��¾��|S.X�����|�s�?��w�����h�}���_�!�

����c�t�<'����T/�`��?T�� 0�1Pzz�I�O//�ş;�>Ib*�#ib�,�K@1�`���x�`�[��
ZT+%а��~�S�A����R\�B!Q����ޑ `03���A����n� a��i�C����yP�P5��v��5���Pv:��y�8@b���v7�`$�<���떤E.�����0��N��7�\܃H0����I�8���s����rs�\B̍�5� ��k�2O�BG��J���Δ�ӊ�e����W5f���ȹEx�^��Y�6��c�XP�s8l��J��E����b�)X?o��B��@�!�x�V�*�E�������.U������t�6Eb��@���@#E�*Z����=��AO�[~Iloa|$�2\�{����߃�N=Է�|6�*�UA\G�������U��Of�P�%�
�P��B���L�C�'��!P`���nJ�#2�I-Kq��� +A�TA��� D� Ea�9���9M��TK�@�E�������%�B�I��	�6e�sM�L�<�����*gm����w+��*Ob�͇p10�J%y-�`���C�B��e��T�czK���=�1����OҢ�ڀ�3� ��0S2E�Y'n��>��$5�ϒ�Sl��n_M�n00`��h^�/�cN�%�ֹ��1�c2S����U�W�*��%6g2Ц1��J! _��1k��H`)�JH��A�3߉�C��V�������!����ߓ��kK,�'�]tv>�+dp!�yM�u6U3�
8�M�P���ú�p��<;���S���7A1�F�4�W�f0�B�(}����#�������93Y������?!��4H{�p�MZ � ����Z<�|�PIUh� 'yT�����G�~o�y~�	���@"�8�`F~���f�� �R! ��- A�a�3���>C�8wKa�W�0���ѭ���n`ة����+=���9���.�L\]b���4UUSEW(�˷.�����W��Ţ�򩗤GG�?���7���rR@t"�P��P*KmDwUKj4-�jP��>��^�d�����:�(P!>K�U�$Hs��ݣO~,k�Z�h"��
���ӻ�KC��쳝M�LhI�~d�a����`�PSA�
[w!��4�(����Fi4�R����/�>�/72���n�l��6�:N�p�n��,e�E3�/*Š�UL����p��Mh��k��Ԡ� ���m�\/�C�ƴe�P�N�8*�J��4��H	L3h^��.��}&�E�.�p ՛�u�P��9�V�S�B}���`���jm��{:����r���)�VkzU?�[�"�e��*�"�!�֢v�Hh���o�2ˀ�����am��!��"aXT�G���6�Us:54�����&K�� |\�4J
���:�_��T���+�,^uU�l�� �pu�pV@b��+o
7�%s�pżh�#
��H��#�Ük}���oT��h��X�f܈��	PM�PT����YK;	&�ݽF@�� 7�8���r!���P��K�H��/M;���� ��F��5�5~G��ȹ��Jfs��A!���U�As��"�Ӣn2�9����
{c�����oSq}�&Eۈ�M�0�"(OA,@5����҅�[qY�W�d "@�L���<h~{Wحj��� 0��� ���������n$��Pq*�= j�@�#�b����f.lFI��tS?��U��
q��M�J?yH���E=�A��o�DڠH|�$]۲ղn�����*�����c��Ch?.h�w�a�B�|�M���dr�S�<b��Z ��	��*y��GF�z��� ﷠�Fʨ�9`��>U}Q�Wh���3�W�F�(�PÇ��j�<X�@�'��5,��*�`�!,�)���V?��ѧ�s<+��}�/��� (�U���4|Ѥ����UoSQ�zU��KM ��v�*d��Z�^�HoDMȉ9�~f�}~�B�*���v5��<�PSj��\E��hb���_��K�Ƅ�)L����b��ʎM���FѸ�QI��_��\�ՇK�KL�@���)}ȗ9�5�U�9��p�=��3,��S�Xj0*�]m`��VR��č�*����NnT@��J�豕GD,/Pu��1
�2�YȐE*9Z 6�C` �B"[=�6��M
l�*@�R���Xb򨧨�C�TGK~Fc �e�(9hQvX�z2!���J:E!d�"HF�TD�)Kא�.��� ;w8'��q=�C9��r����z���K�!" 't�H�%��	Cp��(Q�6n"��z�a��5�*!B��B�2�d��8e��H��!A=��M �Z<ъN"������%"�ҦQ�x�Qe8��U���*��qCq@ܤ�h���#B]P. X�̙s����Z���#I��	0$Z9a��7��(��rÙ����tP��o_CJd[@���A��f�-����Z�g+�N�a�Uy�9IԴ�t���ƶ�pw���3	q@JA[PAΦ�[@�wD3���y���%�������'�B*c��C�
�JR�h�=s}s"�@y����_a�eT��v�zF��W(��Ц~�u�k�
����="�*��`'gC�6Ѕ���U�t�<b,	]M��|rP4�8_uf�|��PXot��N@qOXյv��ݺ8�K���B����a��!��'
b�\St0ڨ�`a Y��"�� �S�N~zd�\�Q�=���tdL��tps��%��-A��9�n��C"&���#��Y�<�8�r�������]��6�h1��\�b̍eK͊X��T2= fԦ�/�*�wʸ���ՈL�w�����\���-�#��y�qBE�7Ci $ �HSEH|f��B(IXK&�c�R�8�mM*P�B�+�p*X	/L\���9�%�!�A�(��D��vP��)3=�>|ڒ�Ċ����ؗ@�F�0�4�@�ՋB��$�W���"�i�� ({
b"`]A�d`j��	B���.�`@8 @�T��&��9�ȀaTL��wZX}���}c§ĥ��u_h~ ��3�	��"�:�r�����b���@B�(t�@6z��0H�����eOuN�{`�5��)�O��{�PM��e��u��<��sp%P�������1J8��!�_Ţ! �,���!�(B�r�<&:�j���6X'RX4��R��}�\�a�ə�"6��hj�C�e��`��t�!�KCZŪ�sJ"���
GdZ�H�+
��
���)���(f`aCI����
���{��E�nS�<@@D��pPp5������UAԥ�nw�M�q̧���@�_�H<A"��)�D���=� ���ȣf�0Э�,����!��W\�]i�T�=}AP�ʔF j��}�q�E�o��~�\U3��B<�L	���D����U�勭Ǝ�k��-��:���Ӝ��KF�JP7�h�0��1��Q㉒�	(��7��D<F d��hN�-9ԻB�`2�@0>��dFB�L=n*td���p@(���.�ֆ(�.��$@d[У^CR����~��0� t�Ș����;�x�V�_t"�*�������1D,)�W"��}W�i��D�tg�"p"Ӻ�@lAnt�xl�sB���ǂ��x\�:�o0]��`��4^��	�r���!	Id�P6B�@B񈋰��0��`@�B����!
ɣ�����5d�Z���M)�jW�X�ԇ��x� �A#yP!�!�x!�M�]M&�0�xh9�lC@������@ � �bP��){�	���y�%E@�q���leSe��1�>h$����)0��`x�E���xh\�<`\�	�K4&�u�0[����z�wg����b�컂�2�ဘ18��q+ph��&�i{�Vд�[n�؜���>��@ј3 u�}��:݆,��($.0=� n��0!��A�A?p��TA���b }@�)H�
P�@W�����E(�`����A\b) �1 �n�~���W��e���?���@U1b��B�$��&qD��V+�?#ң�B�?�]��B@F���