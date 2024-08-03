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
BZh91AY&SY-Kd� ��E�@ ���?�������@�D@0  `(����kOs�c�d����D!&���10F �� �#���`�zhDɔڀ��     � phѠh4L@dhd �d  0@&���yL�P��1��2b26�g���4=F��M4<��*iO�ڧ��4z�G�A�j  2h   ��<L��I��24 �0� � ��4""���"sb�����wF�z�*���a�6f8=D��+;��J�uU�!�[8U��,4Y����jQ1`*�R+
,* �rph�q�<h��N(�p�B����8��#�ό�����$�@A$�؍O����s3Ֆ8�QNTW��-�Qu��E��e3��8s+��)�=F����(z�oipI|�g,�/���<z��������������Ue�����}�u�A����U�|E��U�@ҩ��e�����;���q�PPQAb�s*��PbUU
(��ФSI�7���W����[��rm�a1l˝4N�_E�H"lB�5($�)����^9���2m��,j�Q��oyq��aW�7g��eP{�V��=�/���8��%�I�Le�J�,s\�����I)@oP]���PW���ll��L��w��u�֫��v�,��=
i.�ʎL�-5��#�@,�'�C΀K��S4�!�^"�(��HHHM�-5�h���Q&&��E`IEW �!����
6�L0�}��J���l�T� BX$�����	�7�(�!B�`���+��54�����\(<�@X���;��h�f�0߂AU��m	%&��l���5��o�з��ˊ���v�fD��=CrՀ0�(�:��[��$��c�]Z�[8��p.���j ���@n�:�4Bv��Cj� Cky�/T�SN�)�t琋�U0DD�Xc��]/���T� Y����h�U�E�����/M���3����ݤ�:��2ʴ͂����ˀ��9�<���EX�E*�.��j�%̷97���+����4;�ڗ�ʄ�@�X�O��t�pTDEUU\e���N�jwh�4�(dX��)�w�\N|�&H���l@i��\Y�Kˡwy-�! b� �M�m�@�ދ������A�jP	f)��v�&e�N ����t�q,%����Q{f�_V���VGO*oX�1�c��a�c��!�\-�q�Kw �*#wB�RBB�d�'�̒���,a&�tp'8�QM�67"�p� Ű�A���z�����Ai$\ն���@�L�y�"�-'��	(c4�$\N����x��kEҝ��{h,��R��,��] L��5T��ܖ�ި��E����m@�̈́�ip4��� �H2yAm". \����p.�7�1rf��mAq �@I�����q5@A9�%aH.�̑`��+kkCX�rpl؅�y�
Zǁ�Qj\�1�cֺ"��A:p�8�UUf�Iv�Ӡ��u���P\Y�h���H\k�*��*��d	,Q�H�BM�$��A�"0�C����!�rV���19����p�	��N�2�Wq *����)�j[&�