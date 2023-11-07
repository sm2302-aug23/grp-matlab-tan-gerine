function plotWord(word)
    % Define the control points for cursive letters
    letterData = containers.Map(...
        {'a', 'h', 'i', 'q', 'x'}, ...
        {[1.32 1.8 1.32 0.4 0.4 1.85 1.85 1.66 3.1; 2.5 2.4 2.5 1.5 0 0.5 2.5 0.6 0.25], ...
         [1 2 1.25 0.75 0.25 3.75 3.25 2.5 3.8; 4 5 2 0.25 1.25 4.25 4.75 1 0.25], ...
         [0 0 1; 4 1 1], ...
         [0 0.5 1 1.5 1; 4 0.5 1.5 2 4], ...
         [0 0.2 0.4 0.2 0; 0 4 4 2 0]});

    word = lower(word);
    %initialize starting coordinate
    endOfletter = 0;

    
    % Loop through each letter in the input word
    for i = 1:length(word)
        letter = word(i);
        

        if isKey(letterData, letter)
            % Retrieve the control points for the current letter
            controlPoints = letterData(letter); %coordinates
            cX = controlPoints(1, :) + endOfletter; 
            cY = controlPoints(2, :);

            % Use spline interpolation to create the curves for the letter
            [t, tt] = tpar(cX);
            xLetter = spline(t, cX, tt);
            yLetter = spline(t, cY, tt);
    
            endOfletter = max(controlPoints(1, :) );

        else
            break
        end

        nameplot(cX, cY, xLetter, yLetter)
        hold on
    end

    
end
