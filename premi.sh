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
BZh91AY&SYX�� R�t0�	�����������  � ! @  �)=�:�ٶ�7}z��r�)m�g�v��o:,�t_`��׷�l̷��UZf������j.�����Y�}uuAlj2��Tϧ:�UI=�hVe�i�2���p�ڍk}Д@@&M�MeS&j~�M3Si?T�52<Pѡ� 4�4	��h��F�~��hmF�  ���S��� �MT�A5���Q�� �P    2	4� M	�⇔z�d������z�SF@i�4  4%	=M��L��0)�OJx�G����=M4i�P �D� � &�Lb2��Dڙ���  ���+-�Hm m2(�����������ȹ��>v]Y>�#<+$�Ad�Φh��_D-�*1�a&��eEQa��_˛�;����+������"�
/�]�**1���j����ΉLWF��j����<�"ƽ�}��ʖ��UR��@�Ч��w���!L��\z{��Z&k���{��S�Nϔ*!h�����ꘓ��Ϣ��}���0����eR�:3j��C7�8� L�@��l�0�e�m
��_��Տ
�^���~ŠP�<[/@���ICE<�Lр�E�.U�~.Vm��%o"�.��#��fW��:�f�䙎_���'��͟�����!G�����+�ؘ�kL5�`+u��[���X{��pe=tb���T���־"���c��U+/�9)ر�K�3ȭǯc�S�A-7�L�ذ+G�`���"*�Bý�9�t4�BS���7P�+`�9�����yZ�Sj�5S?i~�0ߩ�,۟��5F��+~c��L���E\�r��%�!��%3!�Zc��m�6c���c0�~�ua�k��2#.���efԣ�����K9�l���w�UoJ�V3�xĻ���n7�KbrO�_T�ܨ	�8;���%�%��@M�㮂�z#�T݀v�[RO`���{Y'2����;Q.�^��Qc.�%�c�^��+0���%��ޒ1�2�2�S?TǦ�Ȕ*;�Mٽƾ�6��JsO,Ȓ���Cj�{p<�<���7�{9j�zq>��c �D[O����p�'�.疕D ���	���O�է����:z��M���Ioi��/=l�1Q�W�h;���	�<ׁ	���,�Z����ש��;+�&�iJ�H�<q�ӑ�#j��d�)aܨrk�sc��?<�|�2�	߬?yI��@u� �Ö�T8�KY#�7V4f���^n���ҕ��@�������,ǗE�L�+`�t3�k"�` QU(y�VV����5 ��rDDDu`��fꞂ������z`B2�H �M��)Kr��â�Z"Tַ��W;�z�l�r�zv�-�Mp7�)��e>k�n���+�82_�fx��x뺀�y�@�ft0W0���޿dϹ.�.������l�b��K8�ou��l���T�W�=ZxĤ~1�k\��/:�!NZ�x���N�zm��G��X�B̳�lg�#���/A0���WN�V̞8��X��Q<��O}�K�����Yp�[�9��s���g�c�0��k?ӻ��R�[=��F6ұ�|�YUS*#ϕ��<�쏅%2�'�Iq���ϡ�dT{jkU
U_(~�DF�U��_+:u{��n[�४Z�`xr!��<*p��ɑ�S��)�V�4J������2��$�nC�O�Wb�t��p?!�;�h�l�3g9���;�4�>A � 
����>:� r��o6��fQjFe����x�|�5͕�O���#�:'�q��P��c`��Wq�"A�}��Yj��Aӳ��*��e�&���W_�K�2:Wv��7��N�4iE��5���d�k���v�-A�E�}J�����^��m�����3H
���΅&I4�R�m�o~��*�Y���OV6F�̪mӘ�:�2=����s'ᬞE1�H�nq���k �0�;�Do��W���d�����l�ax�>���Ьv�eA:$ҕk��G�,E �x�O8��@'DE@Uw����a�n�mK1��dh�Jd�-W��>�+�ȣw籰��
U.�5��'i솷�!�G͵�B`��r6��r2C?�E���8`^X�N��b����\5�]C�\s���J?����b��Mq�YXC�\v�B������-~��轢?��^��[�!���9+cFB/=�
�D�D}#Jd�o���a�(1t8C���LA��H+$��F8���!G� $<��~��*T+�[(eYi
�Y�P�R<MOJo���l��C9�1&R\��({ɄR'��(��I���wP,|��&ߚ��Ak�Y:;rJ�Jcg.��e�QChki>�z)Y�Oh� M%�$v�ѷ�X5W�V� �b�{U5�[a �jJ *�&cd��W�����a�$��3�2;ǧ��U?*�-u��PVz�5��k61uʚdLeV�$�	k���|�3����W������(�[vX =G�!CG���T���@NO3@�l���ݍ�	 � ����C�y�0G�0�T��V>�sN���
Z	h������M��	��!�>;5#X�,�4�u�.��ב5��\��(��5�V�x�B�a������&�n�`����R#`�P��n1!�LB`4����m6�jFJj?8���㝋 80k�5ޡmC�-�;��.��������&�����C�RQ����\;�BlN�.��L6'2ԃ�}��_(�c���@E�i�O"Q��1w�(kϙ1� V��
���X/i��2y�a敭�k���'�����FBQ�6��������@%Ur��mV�<o�X����ai.&��`��2��K�H޸3�ٱ�" �M�����3��ġ[+z,򓼚����&^^1�1řa�/�>� �� ��KQ���X�`�,�+qe�A�^���ekp.���69�pYd|)4v�N�kR�fn��p"��@AyS����Y���BC�����K7,��쪳�Hʅ���A=�7�j@�W�M̩�^/ęɡs�\N
��IB��d�A2c���MC�/^��9�H�3qݐp!�Vɯ�̘�P.%��C�3L�)d�f� �`u�$��j�Q�"�$��"�����2����9IP�9X3:��;�Wӕ�$�����~�rp9Y�Fn�N�oI�:P���������<(6m=��?��}&i��#��
C��.uX?_v4�%c��/�9~I ��5���쐂"�5 ��~7����}b���k���,6�33�1ɑX��獌�ƛo�C2׸H�Jx�@�D�i!NF��C��rЉw�&D#R��\�گ���I;�ϳޡ����H��q�~��A�!� �����������cN����=_���W���ccW��n�A��䱚E��ƴ��� }�۞��R����C�e���Vl�|@��!�A^�$�:e�°�v �s*QC�B�I$A@�j!ۡ�r�Έ?X쮏؂#w�0xQ
�v@bS�6���|OС�;�����Qx��{�~�ߜ��
{����ɯ��Xu��.�m��e�e@c$<A���,x
c�@�w�.�oI���G/�Z���!���Z��f���w��Xu�D����x�l�?�W��P8s��B�:��_��"1��˙�������q��E��Nd7�C(���<c��B*g��Mͽ%"$>N��['��6��<4߼lis�8�Ly�s����`%�b,��Di)�G�c��Eh˚4�o�v�F\>,��D��B�B�4��N�s��d��l��U��а��/>\pb;fHg����&Qc!����)�&ܜ�q�y�Z\1;uJ�.�<��I�Ոg�AӝS��0؏}�bq�>Lf��4l��aj~o��#�8�y�T�ՙ�P��7��`�S�M)e�vB�?�G����?L�zbǳxCf^��D�!��2<Z��=�D�3���G�خ`�2�{����D�}c&�z~F�������{���í�F���JҔ��qƸl��"�a���#	��%��.+�J��t]�|��q�tm��(�B��_��0��FPA�z��[��o���a3�Gƙ>;�K��7�.���BRKmj�S}�����ɇ���ξ���a�ASò�ړa�]V��?\FF���n��=5Y��.���W�l?�f��8�O�A����)���vA��n<�{[����_�."G�f�r��q�i�ЄBTh���!���)�,6�2p��O	���-��9�w�B��N�LnAUA�JbB^��|�{�z@�|��I��"A��yU#~�԰:��}��v�^�4�u��{`�?i c��gh� �R���3���D�v��^��Z�����L��{�Fo�#�7��!aC����H׸����H/E�]]�{�V����қ&�>�%G���@��>��I$9iF�P��;�BFw���	��f�)qq�UG�@�˛>4���92T�����k6��|�;i�D��+m22d�1|,��lC#{�d�o8�D��D2Ȏ���^P�8Rj�"�2D��
{p5(#V]5�z��)�{q�}B�K-�g�΄�V '��%:xYe�D%�����!�#1���*X�0�.��r���Ԛ"��8m��7��Vsꮰ׊\���ES�������q�`�rą�u���&�{�4KB�r�)R�`���ؔ��PE�2Fʍ�Y�֩�p�Z!�l^�r���LD�9n`�!�6F���c��"5���+1�fi2 ˗CL�(R�"8Ҷ�ȩP���K�^��,D,�4��1�>�	A�q��@X)�)�*�b,*֛�����S^�2� ���f���!bb($X�J���BT���>׌@ݣ�e���P��"�(��zm"+f��� ����oSX��<L��r���O����f�Y�K���
��M�J���Jv���E��n���3/���L�"lW��oi�F���8�0�E�.�0J�&@T�ҡ[�jM�|<����P�RW�Vz�b��~�oo;�+��c�-�z��)�LXajYj;��_pUM� ��#U��VSd2Ά��3者)t�[�!���%lVHy�����Q���d�S��k�B
�V� (`��-��f�oo�B0��I��6*�d�H��FH(��򐓆�X@q�T=�ߌ��Z+y�J����R�*Jd,���i�N'�OA�$t"�֕ P�Ho�En����B-e��;��B�}�"s��a2�|��1�I��0mm�k�XM"�qE�QJ��{S����9X�S5�~�3M�&0��Y��`ަh���J0� w�gW��5�[��Z���pUZNs �|gk�a�4���?g��p�y�B��U� ��I��Q�TbĈ_�|�y��П�(YB�T�S�����v�;!�­,\c�N0�0.�3]B]��7%&�!BS�0B	q� �bRa��*(j>���<��P����S�@�^�Q��-���6�j|�	�P,h����G����m���d�$��l[��h��7�9Iw�- ��7rW��t����#�B��ݔ߶7���BjQ ��͒`�J���{S��@�C�w�-��P+��b0&��pG+��v~B8LD��cD.V�ͨg��_O�,�1�ST���]��$�:��Mp��W�Ƙ*�"Z��PL�_ɼ�9�
���,��q�KC�*B�K�Q���P��M�
���!f�aĲ �B�7�@�g°�;�M��|�����l�+�:�TLZ�u��d\T�qz	0)�"xϩ��u��Ik8�.kɺ�� �Su7HU�%��h�#+�YD��%����,�z�`x����D�-���(�H!����edA,��_'U����vB��$i8PH��*'�O��2Cрtp;�=ʪ����zX�5��a��0��,�!��\ ��/#D666���� l@Xx�o\�М��9O�(m0��l�T���A2b��I^���j��Y�Ɲ���["u{�E��
]1��HO��Z�\L���M��n'�E��5���:(Ԍ)�u/�*�]m܁@�F&�� �1	�V�#Qr{�X���a��V�� cc{iT��b��K��.B��&�e�ʙ��20���)��ٻIbjjCD��`LE�Z��&a�ߐχ�V锇����a�����J�f�Hz��1�r��[M�B�#�C�_ŭL�{-5�r�؛��5�0�t�t��m3�F*FC�V��H�H8��^A�\�ZD	>�6HJ�u|qh�v���ռe%������	�܊Ղ]I�Fp= l�Oau��������[��"-_b��L`�T�p9)r��f`�ؖȑ��S�>����ޅ_DW� 5OT ���"_LX}:�O,t�u`m^j;��=���U+�>����w�;�t2�%�qK�BӒ�C�?0��[� H��\̹�s�9�Ŧr\�~.�R��y����J&��&/�p��Z�aoHc)��\M���il
	@��M�H�b�2�2X�%e"�b �b�^ � .�%���$�D�^�#�%#�]�2���)�5"�N ����>��9�yk�]����86$��I3"� 俏5o�tP6^�ٙ·Fr	�*��{2ʂW� �h!L��]���ؠI ,�D��D1W%�+�	!URUu&�;���K����A-D���z�D0=�I�La�����H������T��>��a,�����K����%o��4zZ(���� �n>~�>��W�����;����~n�2���邨̾`��hhQ�4�=��42�Ɣy�a୐�i6�ඤ�b?_��v,�@9 )�? �A��R�_��&�,B�cI �P �NO�1��̂WKu~�t�c�,�T6��.
�X^eJ��q/ �;����Ԑ�"ԈB x�8	i��'��l~��bMs��4:��,�s�Ey����넏����  �@�e�7"
*R�vԋP���RA*M�؊��VŒ1�L,��	.s=Ur=W�q�/ɖڄIlW������1��B���BD��1��Nn)6xJȶu���@W�]e�0����g���q��"ACZ`V
8�"�;f;�[�ix6j� ��K1�Ȣ�$G�$7���P�.ޓ����@XNF+ 0p�٦���h�C�Ŗ��s��R���l"�����i�``����$9�t.xI�9�xÖ"�?p�	�^d�/D0}�R�ɒpȨ:�����}]��Ω�<^��,���,\�!�g�!(~S�͈OҔ�	6���jD�RD��^E�� W��V!�7ŷ��2�!-�����2ĥ�
��P?<�mv?<]�A���D�38��C٣Z�J�$�͘�`��1�4����)Kf�2�����(�a0��3.W��v��S�n�
�cLaC&ݠ�����2aU:�1|/+j^;oy�T����C��[��P�[���m+�̘l�Lh( �u�Z
)P�)�@��) ��ӠЦ̏�iC C�������pr"�J���%O���	�a��p�*# �i�� ��h�k��D3�f��qA�!���$�$�b�=�M�B�1!�5�W�v������qJJFL���m�)t:1�q�"��BZ|����o�f�<R�@Ϻn{fK�r<��R��VV�	J��+m-Y�Ȝt��j�
�䨝)�A!	�G�.%ʕ-r*�h�0�#���#"F�rk��}
f<
���*`��p�ƪ�f��D BD�H@�خ͉�T5K9�e�^�{jپn�.��+|�,G�Y�'�NIn���l�i�[fdQri��+��j&�1�,�H��q�ؾV�U[�/��UM�-l��5�QQ	%RQ�t4J	(B؄Q��ꮑmY;a�/��^�n� �0�-�Sb.%al�A@T�V�lM��p�-dw�ȁ�:bk3��v�9�
��E	���BX����d��HN�3��K CC'Oq&I������ l����H\��k��5�4MF
�"6$	��4�V�<�h�ڙV� 5�Q�f�/�,��[y˾����|J�B4�H�,aQJ�@8-�|=\ɸ8\��&߁�偎Q0�7y�����Ѫ���.��jj@P�k�B����0���3��\䥏Ƶ#T�W������3�QH_��z��(E�0�M�(Y�D�.�X�u�3�����T��9�<E���SO]Sc�,�~�p�KZ�M�l�>�'�kb�C}�Pv���XNÑB�4�/��I��p=���(Q �O��&lc['?�,�n`|�%�@�A�ͺw�&�3X1��@~�� -7�V�G����2�ӲarjN�#�R0�A�<�`��^m�	<	�-3�6vʘy��m�0�0�ȵ`�Z�b��ısC��n�Q�jk�����%-���IƘ��%3��W�p�8�o+��ђ���=�L��u�|��'3�0��S�t����u.����Ν��ó&)4�qu�d� �j||JD9�M"*�3��9���$��D��"�	gQ�T��yѧ
q��49O�Nt�
�#��c"H;�W�HҀ��yhyw��컬�L�wH�@"%3�"Y����\�*�&��x�.�A�M��;�_{�"��>/�OLjM�S�.�p� ��Z