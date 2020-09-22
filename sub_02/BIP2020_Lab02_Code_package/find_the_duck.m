function duck = find_the_duck(I)
    R = squeeze(I(:,:,1));
    G = squeeze(I(:,:,2));
    B = squeeze(I(:,:,3));

    duck = B<120;
end