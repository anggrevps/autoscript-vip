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
BZh91AY&SY��oI J���"<����������pF@��� � @ `���v9fQ��@�W"��ʅI��II���Hm z��hѣ       c�      2        �      ��       $T�a)��2����A�Sj z�Mi����lSM DBFAOԞ�L�yG��P�Hi������ �4� 6�@E" L�hi2d�&@�z4ɆI���4�PڍF� 2�@����?�_�6�;G`~A�U��,A1v�ǆH��!�t$csb��N�V�Db�
g�x���i���K���X�*�2"�ࢹ��+_��
Vׇ1�O�*������mܩ!�O�j���Ы,�U�Z�9���Mh)3����B��[ �$If��<��~�Mm�C}I&�x9s,d�����Gc����#��	�BHa!{ hh�.�R��D��S���U%o�]��#�o��5˖l�i�=m;��J�����r�����h�qi[K��C�������g8���[j,!/(+���63|U2
�;�D�`�d̕�p���z �4Qs���I�v#�N�gD�d;��*_ͥ<�#��%cv�6�_S��T��`���i��z�ܑnC���%�wv�J���𖅖���%�4�5���8)X�@�%�������0}~���f��>nG��;A�t�nC[C����:�A>g���hu��S�쁀M�@�>�n�n���`�K��{i�i�M���*��xu譞HYgZ,kD��0"��&�$�(�/�(����6�x�!}T��&�b���ipI˪9��Ox�`�4���C�"J��bl���I�h�)0`\��с-^'�Q��,h��Y�u~^��mOE���(`������-��'��[Ӏ�م2]\ɱŒ� u�ax�Q ��kähx#���l�/�G㔤�p�M�=>�#�=(	��̥3fϟģ�#�SwP0�2yp
њ$w��B�baE;���]Bf�XT ���']�:�q7;a��.�nq�av�a0�T����n0��|��h��zy�(�2Q��WI4g� � � ����a��V�R`���}�����g�Vnn숓�̵�Ӏ�6��<GW|���m� pf$c2��}���p*h (.4�НL_;��۟�hQ!.�ݖ��$�����夨�Er��W�����!_�$��,Ѥm��E �~�l�jC�J��@��lhZH���w�h#1�>X���@�&lr��򉯳6��7�way4 �\x1:$4JUλ���J�I&{/T(�&��A% ^D��%Rh��8s�G��*��;x��{zE�.~�yV{rV�Gz�+��V4)0����aӄ�-_��-&΀�n������M��̩�Ϯd�X�[��c���dh� 3E�ʘ�Xj�v˩���6����՞�+#IN���l3{r�.n��Р9	h,K
�JCIH'������Gj�<�
Ze��	p��A~Ue�>�𦖬��:�$Eu��=$�r�Ӛ��8]�*�9w!�eۆ3�8��왱9!��υ��7[e�%���z��E�s��s+�$%��DL��J� 9���#���{���7n�	��?Fo���:{ӜN�\���6���x���c�&J����u��Z#5�;A���S�mC�l>��� I�R<BDf@���&aD��x�)�$�Fj����:�Ɩ�1�0�>1�W�87%Ki�ϊ�勵
���:�e�uT� �	�	�� ��R�h���s�? 	H:���BC�����A�aŒX�*�Rm��`��RcΝ�J���<@T@d��s�d-�xu��V��ٔ��!I뛥��w�4�KwbA��B]�P����d��T&%c��dy�y����G�4�n�z���4G;�w@/�inp���o���P���S�Vu�G��"��(i����D!���	xt7�ܦ���o��A0�L�u�=+����x�k|��0�Ҵi��9���P&��C�5ׂ���V�Fef�PZ������|��RF���V>�1h�H<A��}Z��U?/5ۆЏ��]���k�
7��a���s+H�_k��]vrUK�X���fų�MM2%B���|�xӕМ����� �
�X�*�ܔI�?Fg�n�r�>�H����+w]a�t쨘���8�@��>���	���.hp�V�ŭ��^|�)5�`*��<�{�"�i
mSMo2��p��+�+K�z���zdNkD�{x7�99�
�!�� ���2"l�	�&��},9Cw��X�����,)3����� \W*. �UO	�����mo�MR���ˁ7���4��#��G7�8��Q��|�b��k��;`�a+
́8�$Rw����M>�Ab\�-�V�!z�>�����o9eH�6��߀�7[r'AY�`�v�rZ�[R��'�!��eː� ���M*6뀬*�`���[(�4��QچJKW��I-�ˆ���櫛X���5�-0m��̍���i�S%r���
Kj�B�6�bf́$Ԓ�������-'Z��]�IuD�0Ŭ4��}aPѦ��f�;�x�~�c}]W\�V���;&�����M�w��B�9�+h��o��� �� h7k�e�E�/�(��ר�l ��w�,�0�9z*o�xܜi�4M܃">c�KN6#�o6��3�<���A�P$� ��� ���� �=��"�*���b��i���dZd�� ��)�7�zH