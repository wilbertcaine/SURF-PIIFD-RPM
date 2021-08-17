for folder = ["abnormal" "NORMAL"]
    for i = 1:30
        if folder=="NORMAL"
            disp(strcat(folder,num2str(i)));
            f1 = strcat('./Dataset/', folder, '/', num2str(i), '.jpg');
            f2 = strcat('./Dataset/', folder, '/', num2str(i), '-', num2str(i), '.jpg');
            [I, II, II_gray] = SURF_PIIFD_RPM(f1,f2);
            imwrite(I, strcat('./Dataset_align/', folder, '/', num2str(i), '.jpg'));
            imwrite(II, strcat('./Dataset_align/', folder, '/', num2str(i), '-', num2str(i), '.jpg'));
            imwrite(I, strcat('./Dataset_align_gray2gray/', folder, '/', num2str(i), '.jpg'));
            imwrite(II_gray, strcat('./Dataset_align_gray2gray/', folder, '/', num2str(i), '-', num2str(i), '.jpg'));
        else
            disp(strcat(folder,num2str(i)));
            f1 = strcat('./Dataset/', folder, '/', num2str(i), '.jpg');
            f2 = strcat('./Dataset/', folder, '/', num2str(i), '-', num2str(i), '.jpg');
            [I, II, II_gray] = SURF_PIIFD_RPM(f2,f1);
            imwrite(II, strcat('./Dataset_align/', folder, '/', num2str(i), '.jpg'));
            imwrite(I, strcat('./Dataset_align/', folder, '/', num2str(i), '-', num2str(i), '.jpg'));
            imwrite(II_gray, strcat('./Dataset_align_gray2gray/', folder, '/', num2str(i), '.jpg'));
            imwrite(I, strcat('./Dataset_align_gray2gray/', folder, '/', num2str(i), '-', num2str(i), '.jpg'));
        end
    end
end