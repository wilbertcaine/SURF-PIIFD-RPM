
%   111.3928   17.3792    0.5643

mse_t = 0;
psnr_t = 0;
ssim_t = 0;
n = 0;

for im = 1:25
    if ismember(im, [1,2,3,4,5,9,12,13,15,22,23])
        continue
    end
    for crop = 1:4
        f1 = strcat('./val_latest_fc/images/fake_B_align/', num2str(im), '_', num2str(crop), '.png');
        f2 = strcat('./val_latest_fc/images/real_B_align/', num2str(im), '_', num2str(crop), '.png');
%         disp(f1);
        im1=imread(f1);
        im2=imread(f2);
        if size(im1,3)>1
            im1=im1(:,:,2);
        end
        if size(im2,3)>1
            im2=im2(:,:,2);
        end
        
        mse_t = mse_t + mse(im1, im2);
        psnr_t = psnr_t + psnr(im1, im2);
        ssim_t = ssim_t + ssim(im1, im2);
        n = n+1;
    end
end
disp([mse_t/n, psnr_t/n, ssim_t/n, n]);


%   111.3928   17.3792    0.5643

mse_t = 0;
psnr_t = 0;
ssim_t = 0;
n = 0;

for im = 1:25
    if ismember(im, [1,2,3,4,5,9,12,13,15,22,23])
        continue
    end
    for crop = 1:4
        f1 = strcat('./val_latest_fc/images/fake_B_align2/', num2str(im), '_', num2str(crop), '.png');
        f2 = strcat('./val_latest_fc/images/real_B_align2/', num2str(im), '_', num2str(crop), '.png');
%         disp(f1);
        im1=imread(f1);
        im2=imread(f2);
        if size(im1,3)>1
            im1=im1(:,:,2);
        end
        if size(im2,3)>1
            im2=im2(:,:,2);
        end
        
        mse_t = mse_t + mse(im1, im2);
        psnr_t = psnr_t + psnr(im1, im2);
        ssim_t = ssim_t + ssim(im1, im2);
        n = n+1;
    end
end
disp([mse_t/n, psnr_t/n, ssim_t/n, n]);


%   111.3928   17.3792    0.5643

mse_t = 0;
psnr_t = 0;
ssim_t = 0;
n = 0;

for im = 1:25
    if ismember(im, [1,2,3,4,5,9,12,13,15,22,23])
        continue
    end
    for crop = 1:4
        f1 = strcat('./val_latest_fc/images/fake_B_align_copy/', num2str(im), '_', num2str(crop), '.png');
        f2 = strcat('./val_latest_fc/images/real_B_align_copy/', num2str(im), '_', num2str(crop), '.png');
%         disp(f1);
        im1=imread(f1);
        im2=imread(f2);
        if size(im1,3)>1
            im1=im1(:,:,2);
        end
        if size(im2,3)>1
            im2=im2(:,:,2);
        end
        
        mse_t = mse_t + mse(im1, im2);
        psnr_t = psnr_t + psnr(im1, im2);
        ssim_t = ssim_t + ssim(im1, im2);
        n = n+1;
    end
end
disp([mse_t/n, psnr_t/n, ssim_t/n, n]);


%   111.3928   17.3792    0.5643

mse_t = 0;
psnr_t = 0;
ssim_t = 0;
n = 0;

for im = 1:25
    if ismember(im, [1,2,3,4,5,9,12,13,15,22,23])
        continue
    end
    for crop = 1:4
        f1 = strcat('./val_latest_fc/images/fake_B_align2_copy/', num2str(im), '_', num2str(crop), '.png');
        f2 = strcat('./val_latest_fc/images/real_B_align2_copy/', num2str(im), '_', num2str(crop), '.png');
%         disp(f1);
        im1=imread(f1);
        im2=imread(f2);
        if size(im1,3)>1
            im1=im1(:,:,2);
        end
        if size(im2,3)>1
            im2=im2(:,:,2);
        end
        
        mse_t = mse_t + mse(im1, im2);
        psnr_t = psnr_t + psnr(im1, im2);
        ssim_t = ssim_t + ssim(im1, im2);
        n = n+1;
    end
end
disp([mse_t/n, psnr_t/n, ssim_t/n, n]);