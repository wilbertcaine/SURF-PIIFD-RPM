function binaryImage = overlap_mask(I1_c, I2_c)

I1_mask = mask(I1_c);
I2_mask = mask(I2_c);
binaryImage = I1_mask .* I2_mask;

% figure;imshow(binaryImage,[]);title([]);

end
