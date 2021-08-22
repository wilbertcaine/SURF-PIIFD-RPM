for im = 1:25
    for crop = 1:4
        f1 = strcat('./val_latest/images/fake_B/', num2str(im), '_', num2str(crop), '.png');
        f2 = strcat('./val_latest/images/real_A/', num2str(im), '_', num2str(crop), '.png');
        f3 = strcat('./val_latest/images/real_B/', num2str(im), '_', num2str(crop), '.png');
        disp(f1);
        [I, II, II_gray] = SURF_PIIFD_RPM_val_input(f1,f2,f3);
        imwrite(I, strcat('./val_latest/images/fake_B_align2/', num2str(im), '_', num2str(crop), '.png'));
        imwrite(II, strcat('./val_latest/images/real_B_align2/', num2str(im), '_', num2str(crop), '.png'));
        if ~ismember(im, [1,2,3,4,5,9,12,13,15,22,23])
            imwrite(I, strcat('./val_latest/images/fake_B_align2_copy/', num2str(im), '_', num2str(crop), '.png'));
            imwrite(I, strcat('./val_latest/images/fake_B_align2_copy/', num2str(im), '_', num2str(crop), '.png'));
        end
    end
end
for im = 1:25
    for crop = 1:4
        f1 = strcat('./val_latest/images/fake_B/', num2str(im), '_', num2str(crop), '.png');
        f2 = strcat('./val_latest/images/real_B/', num2str(im), '_', num2str(crop), '.png');
        disp(f1);
        [I, II] = SURF_PIIFD_RPM_val_label(f1,f2);
        imwrite(I, strcat('./val_latest/images/fake_B_align/', num2str(im), '_', num2str(crop), '.png'));
        imwrite(II, strcat('./val_latest/images/real_B_align/', num2str(im), '_', num2str(crop), '.png'));
        if ~ismember(im, [1,2,3,4,5,9,12,13,15,22,23])
            imwrite(I, strcat('./val_latest/images/fake_B_align_copy/', num2str(im), '_', num2str(crop), '.png'));
            imwrite(I, strcat('./val_latest/images/fake_B_align_copy/', num2str(im), '_', num2str(crop), '.png'));
        end
    end
end