function binaryImage = mask(I_c)
%MASK Summary of this function goes here
%   Detailed explanation goes here

% numberOfColorChannels should be = 1 for a gray scale image, and 3 for an RGB color image.
[rows, columns, numberOfColorChannels] = size(I_c);
if numberOfColorChannels > 1
  % It's not really gray scale like we expected - it's color.
  % Use weighted sum of ALL channels to create a gray scale image.
%   grayImage = rgb2gray(grayImage);
  % ALTERNATE METHOD: Convert it to gray scale by taking only the green channel,
  % which in a typical snapshot will be the least noisy channel.
  I_c = I_c(:, :, 2); % Take green channel.
end

% Binarize the image.
threshold = min(I_c(:)) + 0.015*(max(I_c(:)) - min(I_c(:)));
binaryImage = I_c > threshold;  % Determine number from histogram.
% Get rid of surround that is touching the border.
% binaryImage = imclearborder(binaryImage);
% binaryImage = imclearborder(I_c);
% Display the image.
% figure;imshow(I_c,[]);title([]);
% figure;imshow(binaryImage,[]);title([threshold]);

end
