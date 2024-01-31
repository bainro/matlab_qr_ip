function show_qr()
    % Follow instructions: http://tinyurl.com/yfntpkd8
    javaaddpath('./3rd-party-qr/core.jar');
    javaaddpath('./3rd-party-qr/javase.jar');
    
    ip = "http://" + get_host_ip();
    test_encode = encode_qr(ip, [32 32]);
    test_encode = imresize(test_encode, 20, 'nearest');
    figure;
    imshow(test_encode)
    axis image;