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
BZh91AY&SYi�6o �_��������������R�� ��� �0 @ `��_Gl����t�׾��,���ﳁ�}=Ǿ˽�Ԯ���u��ҡ�AR�_`h!�"
W��Si���S�"4�e'��S�O*i�z��������� mOQ�h4  e2e6T�MOMOP��@��h �  d�  e4���M�~��0h�ѓ�20 `	��LF` H��je=51ꞓF!�Mji���4�� d� � �=��L4!�=�a�SOBh�#D��@  �J&�L�e=4���T�e7�{T�<�����)��FF���=@��| ���U!>���Q�k+C���
u]gl��b&Ϛ����[@G�Uw��G1�r='N��\��� %��M�4��KŖ��h���bNzC�	�Ն"4���1���着���[��5��+W���D��Mܫ1K�!sEk���z� �(Q����D �kClo��L�
�G!+&�Q�@q�wH-�t6|�nPf���'F�E�R�d�RȲ���~4��x��)�B�n�+l�Ӊ[2t�x�����pޜ�� ��+Lt���"z����0��R��P�F�c����&�ٻ�e�[ ���Es��~�%�0�X����"�4�k9cR�j��p�NQ�:R� ���ZP~��.�*�����!���.:y�nJ�5d�� dGƝ{�'��(x̢�N�o��k�d�������s��%�s;~�.�F��H��+r�$H��!�7Po��@������CPP���T��$nv@�F�f��
�/��2nY.�S�k$�rIS�8�-a�j���[��a-a�oZD��QS=<�Ky�=� .g��]�y/z\G��H�q+X�ypK�Z�'r�ΰR�o<�;I��H<�q�r��D�f�"D�'�C;D�-A�oճ,UX4RJ�F����$(4���LkL���`ؗ\� �h�����*@.���j~�e"��@�/�E�9X'���6�y]�+S���J�aՕ��Q(1=Haz�?�R�����w��	�`>(C����.;��5f�'_n����>*�6A�J���nm�~+2`r����
K�)�l��v���d���֙�WB�H!�z��mK�2�Lc�J�rNJ���'�Tê�*{��Hy���! Ou��S����BV�š�l� ���t�Ae�b?`,�;�n��r��a�4��ʖ%�|�f�.{;��%<zA�v��W0y$;M%)u����Rq�x�"�'Jb
�N3*UsghV���⊬���^h���_R5���)L�fĠ���"}l����N�إ	 ^�ch~�Q�ݥHJ���.z\4�J�Q���J�V#�[��v���hp=e]!��Pz�ze��' &�)�$�B����*OO�!;���Дf�����x �`U�nv�C�ǻ�M��X}Г~�qw�w�PJ|�)������He`s�@f0bN�3�c�͊��ӻ�0�s��A�F�A>�B��
|5^���Q��I$���(�"�I3JMc�?R��$9�M_R;� .]���|�~@�H�t��f���T_-j���x�yR%�@'	g��4A6�2I^H�ͭ����ɛ6hQ�e��Ή�d����po?�f����Gކ���]��������rG��"F`=�"b��!DF?��h�L�
O$�Eԝ��I냌��R �],O����#���S%�����@��E0� `LlŤ<�>Z>C~`�,>43S�Cܣ��:���� 9�
���~C��WWvb�L,`D����8���	�h�%�e�[WY�xhS蝭��T!<!	�*|�)�rj̠�c h�6˴�s�G�����U�hTg�5��kQ����)E�&z��7�#w6�G�jO�p��LH �m��K�ARDA�s�$�he����5�&��k�pB�;���C���v�2ݽЄ���n�B�=��-7r��X�~�0B���p^ u���0 �����i��!���X�i*zZ�R�"e�t��.��������S��!a"A3�$�a�i��	j �<4(}�;���'
С"�J��*�r��%��}������> +�ݾ��H�%����E/�u%2�g����i@���cBL��Q�mH�z]����2@�AA��w��(�}ZBZo�#I��ۘ�K	���BQl�n�\,͟٥U�]%�UX��N� LD��D�Iׅ�eV�T�r���e�Q�S�P��6i��VU�*e�N��w�+��EM�61�4��9���(TT�s�������]�TF&�tK�����2!$D"HMG����}��N��d���"a��jX7��Yf?:D��8�����I�=�ZÕ*�����1ǻ�oc�)բ+��|X~���9�3;1�eA�a�d,b���� �����@,�	�*�ƫ�W��P�	�F�Yg=4�OΧŽ�&H�^�Ca��V F'��H:1x�2���s B0e�]�:$�ňI����[� �C0m����}$_���I\UD�6(�V@%ur��66E��Fd���|>8�_����{<
�����qO�rN�ѕuU��W�W,�
���Kfh�#/-� f��b�Wa_B�v�S
�'Zb�R��x7�������5盝�Ԉ��{�֘��pa���L�6�+�}��C�)$��N�rh��ͪ�퐭��G^|������dy���\_�/��Aj��3/�2..H!b�"M�S��r�h��b�R���F����<�2�>T�5�$�'��-F(Q�	P����嶪�Se�t:zm���UX�(��/�P8��\+w~{��JM����J43Ƽ�Kq� F���o�>d���>��Z��^����C#�=���n��ig �SK9=��K�q:�y��eP.�@-��n�l�IG)��ة����lʀ��+�65����P�,��I+*�U�B�"�R��R�Y;�-����!\5Da�G�g�S���p��z���,�N�=�ܐ���|R</!����~` H��Q@�Ζ@tmd�G(Q����J[)�$B(՜��*�+41�e����Zd�c�=L�)�ؔ�K���m �z���# 9 ����!%V�-|R�,��NмVʪɝ���B�3�_�3dx�P�h.nV`�$��ˈ�"�8g/)d�d��m���Ѻ�3h��CF4b�b�:~���f�yG��|����~z�Z����I+�	B	uE�y�X@_?�y˯D1�"#X�UL�Z�F�7�(L�����`{ $`��-�gѝ��F��I�2A�֬��]��p-[ �l�D�Qu�Ȳ<h9�(�֠Cr�ɣ=]��ϩr�!.CKZ����"�D�� $)�u�f �lC0�l�!^��Zbǆ�����^x�x�D�.Zu`��^���6��]��l�ɏ<ÿ�|���ӢhD'�D5X�7dj$$$d�yZ���Eu�Iq=jA�iA�<�	$9
r��>d�YW8,�%~&�&��A)BN��H��cH�;Y�E��p�+�	�qh8�Q��������b�{lੇ�&���Mg]*�(�k�Y����H�潰jĨ+RMp.�A�ixݚ�$I�1,m �fdQ�J��t���vJb)?:���B�� J�PN���4b��r�?)/cj��k�_7k�<�D$��<�*$� �ʳ헇x;&��Y�%`���$��]-��`1�d�bX��Ky��=�5�A̪.B��» �H��HH� �ڶn'Yb��k�C��X!M	Υ-V��M��$g5��(��]���O�����j�p�9x���W�'�+�;�$��C	���&�K%��2XrKL��~5�Ű��"�Q�"�uے��Ģx�U����aG�b (�4:��%�D����KD(M�_��LD�C��J@�E��Ai# �t�Yt絋�(d_ʯ�%��Ct��PU�����,�>���l�)4��E�:�a��M.���v� �U�KA�t��\\�,)(JH�o���<O�>��)&�h��l��pD~�H�a��W���6h{���ѥ�~'�C�z���c1��\;v�\Ƣ�!B�9�6�Id؜���K�L�L��O�9�*�@��p�Cj E��M��0�ߠi�N� �(D0�N��]8�yG&�C^C�5�9�nM�X���V��E�@�ċN�j �*�(2#(�iU�_G��"��E�7�H1H^�Ѽp�)I9FcQr���
I'($ j���5�֔b��B�4os���@� X��2oȵ��n' T5��g��<����J�
S�S���A�9�����ƋV(�T�$�B��f�X_

] Bx	C��
'-Μ$�t�6��y$,�C�/�P���ǂ�L�s�@���w;�Jy��F$$���-y��	|7�:}[Gb�2��mɑH�!!C���d��H�#noMK�� �*䘐]^O7��'f*턊�,I �Ę"�-jpD�o���Q��
�*��c�2*�=��� ��B�� �_���k-m����4)��_$�Ku\�x)�hx����f���3 ��k(��쭠��JɅ���D�+�����svYA^<���U挻{������[�w���6HXZփH�i,�_c��j1sqT�BFaq/8��`￑�q��_rִw�U�*�1	`�"Cd���JT2�V�Z- 
��jߝ���9�E*���t��as)+p�V�>����=��2aZ�Tlt���EXR�S�w��΍·W�\q :,n0tdc L��h-U�3QG�A�^7�ld A�'~fp
�<��;3!�Q3�<����g��2Y�j`������%4�ɠ@�*�%\__θ��LU��v�Jp��M�	�#O]J�T =L�s_a�" �K��	9-̠����`���@�-���@���d�$2C؂ې�^+z��O1K�4�t遼h�&�<��/U)�x,�`��z���-Sx��R@��`��ƠqT�if��&E�� a��"��GlV�_���}Ez���n
�Xo�{��t��Q$9v�n]��P^K��b3��lq! �0 �%�{$�1���ZY�1�*2�\M4ppĚ Y��`�RBs�C���nxUς%\HJ��X�	 k/�"��D@O�? � �����|�'ˇ�h~�G��7������ de`
��� ����ܑN$h���