function plotWord(word)
    % Data for the letters and its points
    letterData = containers.Map(...
        {'a', 'b', 'c', 'd', 'f', 'h', 'i', 'm', 'n', 'q'}, ...
        {[1.32 1.8 1.32 0.4 0.4 1.85 1.85 1.66 3.1; 2.5 2.4 2.5 1.5 0 0.5 2.5 0.6 0.25], ...
         [0.5 0.5 1.2 2.5 0.5; 4.2 0 2.5 1.5 0], ...
         [2 0.8 0.2 0.8 2; 2.5 2.3 1.5 0 0.5], ...
         [2.2 2.2 2 0.5 2.2; 4.2 0 1.8 1.5 0],...
         [1 2.75 1.5 2 1.1 1.9 3; 1.25 4.25 4.75 1 0.25 1.9 1.3], ...
         [1 2 1.25 0.75 0.25 3.75 3.25 2.5 3.8; 4 5 2 0.25 1.25 4.25 4.75 1 0.25], ...
         [0.1 1.2 0.5 0.7 1.45; 0.25 2.5 1.8 0 0.25], ...
         [0.45 1 1.2 1.05 1 1.1 1.8 2.4 2.6 2.6 2.8 3.4 3.8 4.1 4.5; 0.25 1.46 2.5 2 0 0.5 2.5 1.5 0 0.5 1.5 2.5 1.5 0 0.25], ...
         [0.8 1.4 1.25 1.2 1.3 1.8 2.5 2.8 3.5; 0.25 2.5 2 0 1 2.5 1.5 0 0.25], ...
         [1.32 1.8 1.32 0.4 0.4 1.85 1.85 1.66 2.5 3.1; 2.5 2.4 2.5 1.5 0 0.5 2.5 0.6 -1.5 0.25]});

    word = lower(word);

    % so that the next letter will not intersect with the previous
    endOfletter = 0;

    
    
    for i = 1:length(word)
        letter = word(i);
        
        if isKey(letterData, letter)
            
            coordinates = letterData(letter); %coordinates
            cX = coordinates(1, :) + endOfletter; 
            cY = coordinates(2, :);

            
            [t, tt] = tpar(cX);
            xLetter = spline(t, cX, tt);
            yLetter = spline(t, cY, tt);
    
            endOfletter = max(cX);

        else
            break
        end

        nameplot(cX, cY, xLetter, yLetter)
        hold on
    end

    
end
