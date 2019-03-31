    I_d = imread('tupian.jpg');
    I_d = rgb2gray(I_d);
    I_d = im2double(I_d);
    I_r = zeros(size(I_d));

    %图像坐标系和矩阵的表示是相反的
    %[row,col] = find(X)，坐标按照列的顺序排列，这样好和reshape()匹配出响应的图像矩阵
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
    
    