function x = emailFeatures(word_indices)

n = 1899;

x = zeros(n, 1);


word_indices = word_indices';
m = length(word_indices);
for i=1:n
  for j=1:m
    if(i==word_indices(j));
      x(i) = 1;
      break;
    end
  end
end

end
