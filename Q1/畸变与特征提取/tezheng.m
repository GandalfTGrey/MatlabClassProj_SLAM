    I_d = imread('tupian.jpg');
    I_d = rgb2gray(I_d);
    I_d = im2double(I_d);
    I_r = zeros(size(I_d));

    %ͼ������ϵ�;���ı�ʾ���෴��
    %[row,col] = find(X)�����갴���е�˳�����У������ú�reshape()ƥ�����Ӧ��ͼ�����
    [v u] = find(~isnan(I_r));
    K = [];L = [];
    for k=4:1437
        for l=4:1077
            if I_d(k+3,l)>I_d(k,l)&&I_d(k-3,l)>I_d(k,l)&&I_d(k,l-3)>I_d(k,l)&&I_d(k,l+3)>I_d(k,l)
                K(end+1) = k;
                L(end+1) = l;
                %plot(k,l,'o')
            end
        end
    end
    plot(K,L,'.')
    
    