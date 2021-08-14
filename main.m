for folder = ["NORMAL" "abnormal"]
    for i = 1:30
        disp(strcat(folder,num2str(i)));
        f1 = strcat('./Dataset/', folder, '/', num2str(i), '.jpg');
        f2 = strcat('./Dataset/', folder, '/', num2str(i), '-', num2str(i), '.jpg');
%         if (folder=="NORMAL" && i==2) || (folder=="abnormal" && i==21)
%             im1=imread(f1);
%             im2=imread(f2);
%             imwrite(im1, strcat('./Dataset_align/', folder, '/', num2str(i), '.jpg'));
%             imwrite(im2, strcat('./Dataset_align/', folder, '/', num2str(i), '-', num2str(i), '.jpg'));
%             continue
%         end
        if folder=="NORMAL"
            [I, II] = SURF_PIIFD_RPM(f1,f2);
        else
            [II, I] = SURF_PIIFD_RPM(f2,f1);
        end
        imwrite(I, strcat('./Dataset_align/', folder, '/', num2str(i), '.jpg'));
        imwrite(II, strcat('./Dataset_align/', folder, '/', num2str(i), '-', num2str(i), '.jpg'));
    end
end