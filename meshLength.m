function [meshlen, ver_bin] = meshLength(vertex, bit_len)
%��ȡ�������������ֵ����λ������meshLength����
%Convert vertex into binary stream

[v_h, ~] = size(vertex);%v_h���涥��ĸ���,size���صĵ���������
ver_int = [];%ver_int�������ж�����Ϣ
for i = 1:v_h
    ver_int = [ver_int; vertex(i, 1); vertex(i, 2); vertex(i, 3);];
%     ver_int
end
ver_bin = logical([]);
for i = 1:length(ver_int)
    temp = dec2binPN(ver_int(i), bit_len);
    ver_bin = [ver_bin; temp];%ver_bin����Ķ�������Ϣ
  
end

meshlen = length(ver_bin);

end