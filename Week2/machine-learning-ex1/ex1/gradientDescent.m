function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

disp('Initial theta:');
disp(theta);

    for iter = 1:num_iters

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta. 
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCost) and gradient here.
        %

        updateStep = ( X*theta - y )'*X;
        %size(theta)
        %size(updateStep)
        %break;
        theta = theta -alpha/m*updateStep';
        %disp('New theta:');
        %disp(theta);
        %break;




        % ============================================================

        % Save the cost J in every iteration    
        J_history(iter) = computeCost(X, y, theta);

    end

    disp(sprintf('Initial cost: %g', J_history(1)));
    disp(sprintf('Final cost: %g', J_history(num_iters)));

    %figure;
    %plot( 1:1:num_iters, J_history,'-b');
    %xlabel('Iteration #');
    %ylabel('Cost Function');
    %pause;

end
