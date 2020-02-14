function x=nonhomogen(A,b)
    format
    [~,n]=size(A);
    fprintf('Reduced echelon form of [A b] is ')
    R=rref([A,b])
    x=[];
    if rank([A,b]) ~= rank(A)
        fprintf('The system is inconsistent')
    else
        if rank([A,b]) == size(A,1)*size(A,2)
            fprintf('The system has a unique solution')
            x = A\b
        else
            fprintf('There are infinitely many solutions')
            [C,p] = homobasis_b(A,)
    end
end 