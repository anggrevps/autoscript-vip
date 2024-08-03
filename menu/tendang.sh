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
BZh91AY&SY��>_ ��qx����������`���P  @ �| J* �B���D*���!T��U$�����44h�h�4    2   4@�4h4h         Í44    �  � aƆ��   @  �� 0MT�4	��d�M<�F�yM�T�S����S��~T�(3OI�4��R�@�512jb#ڛIOh��h�6�4#LL���ѣ@��8���\�\�v6|֔�фe�~+�z��cc;��g>���g>��Sk&ɭ����d��&��g�5�nd�}���6��M�Ng&��T�.,L����tѪ�0�Ň��3����6�VK�7�')��iV�&,7MLL�y��ZXkVƵ~i7�9U����p\%���N-˸�h��&m��g'�0��ڶ*�e>��ɋ朕��M���W���7�5���Sz�7�a�&��et0��qʫI�N*�[v���Z[�4�s73)��:�69��·�+��Y0�j�yyZ�cXm��}[�N�R�=2s�n{��u���/�8Ƈ�y�W���t��mW*[��9�=�[��*�4�f����qt�9�/���,X^&_�2֙e��ť�X��O�2l���*�{�c�_�|Ѥd{���is�ҳV��Ny��\�m=��XU�]1���ZGtt�Ts���|4�����{U�>������;��M��a��z���ba�&�_��>��y�Y���홵���#��>Y��nlmnrd갶.I�l�3����� ԫb�M��L+����؎O9�3kh�'�]��{]U��U�+���C)�Ey�?��~�z�ʰ�=#����ݺ�=�W@�V�x���~������56���d����t�q�my|��z��<SX�E]o��Se�,�n��u-����=�5Y�������X���L�-*��YU����[.Ֆ�X���0W�X����/��c'K���{Y?�~G��s7�
��ba��r��!����-F��S}~>��
��K����gk��YMO4�皧}�Z��jJ�_{�b%��[ޛ'�}�_'��Mn,�[�֯[[�Kd�U����2��W���ȳU�K�J��"Q�22�ad�GՍb�+e�l��d��������u�n���2��0�[Nx�7�p���|.Ţjp��9��*��=~�Ouű�mE���^�|*��`:�
�.ksGR�v+�z�XKFomK��0��\:].��9�jaWu���WH����58�a�a������g��~T����������[��i\l��~�¬3~el_;���Nj������dԿ��&Ng3­&�����q���䘏��u����5I�Y+��������O �'3����jæ�eph����)�d�I�¶��%h�z+��4����+ڬG��댏��*�[��޹.���������U�<.����y�4~�����my�
f�z���zU�]j�穭��w;m���U�r��r��^{��qb�5���Y)�����L-��6ǚ��ڲb�����=��c�\�nk���V�'�m_�.ud���2�1N�[]+�����m��դʭN#��a�a��9�t�79�t���ܗ�?�8+���U�[�j�M��M�-��XX�������o���/�v��w��:�cF�pV�\��s�F�?Ti&G�1k�q�UŹ�_���61+R��ܩ[[��}m'1NrxU��[%�vS�Wb��M�3e0�MO#b��Җ&��:]�Kܦ�O��[���Vlլ���2\������گ�]jެݪ�5+I��lir��y9�U��|o��kV�&n�SIԗyY�L��["�V,Y*�/��X�h�Z,��aXU�
��X�����zے���}��Tɣ��oL��[��7J�1bX|r�K�`����_�]S�{���U�}{�ƺ,_�kw5�[/�#櫌��Y�d��I�J�L�	ʔ�|�:J牢�q��5W����==���W�h��dh���nA��7���Q��bp�ŗ�F4�]��]�_���揙-,,F�K-��s�����W��'e03f��.���U�kz����wbsKz��h�\~v)k'm\fOY�Ը��l3w	��d�+��z�l�a�t1b��b��2n�v�9���'�=��tFC��S}��X0ҕڬW�]���Y��a�5�	��˾������p���+Ʈ�w�Ux&ĭ��k���p������7����;{}kf��U����1eڻ1iQ}�$��%���S��iO*��D�+��h�Ӭ�w2�2�*��ZG�de�^"�6�V���-�ͭ���U��T��u���+�;U�bh*ʦDpf�U�p�0ͬ6�҆�V���õ\��~7D{Ѷ���5������{��aʼ�J�SS�����1L��2bV6N��%�p��å�Ι�a��t��x�y���:��t����¸fG�&��'e�^�m�;��(�N�
���Vi�%ks7N�Y�!��[#������]�����x��mU�(���0�K�rV�tZ��}�'���&����2rf��V*���;��kg2�H�.�r�^H����,I��ش�e��e��b5��Tɤ��x酪poU�d�]�C}[��X�g5T�f�R��9M���2On;қ-Bl,.su�n�S)���O���Q|7�^y�g�9^��.x����tݵh�Z�dɔ��U2��<*�+Ԟ�]��O�ƶ��ӽܽ��Dk'߶�\o�o����,�!�r�C'Z��k4,ZZY1�yk&Z�����Sd�J����oVn��^k-��p�q�Inc�[�Uk`0�a9T�0����h]O"m��lo.���:�̺nQ�����R�dр6�<*��%b�F-��i¬ۦ�e�a�e62��Lښ��'��8N<�ܷF��W5W�ZC��jxf�&ׅԖS)��n-B��]��W�p4dd27Z�]���ঌ�u)�11U��MN/*�+pꪴ�o1r^8Ժ��{���rh��Z������q�w[�]u.2�t�!�U����'�N3)���s0ĥ�ؚ��qt��S�v�~��mK�L�߰�N���5rltL9:i�^꽍�g4O�O�+q��J���1J�+rt+{�S�KA_t�����l���S��J��󥭠�S�_��톶�k|���lW�y��_B�~���ũ1`�Y��~��ޛ�[��#�#�*ŪŋB?���c��ܑN$)���