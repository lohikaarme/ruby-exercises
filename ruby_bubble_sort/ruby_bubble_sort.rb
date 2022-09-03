def bubble_sort (bubbling)
    n = bubbling.length 
    i = 1

    while i <= n -1
        case bubbling[i-1] <=> bubbling[i]
        when -1
            i += 1
        when 0
            i += 1
        when 1
            bubbling[i-1], bubbling[i] = bubbling[i], bubbling [i-1]
            i = 1
        end
    end
    p bubbling
end

bubble_sort([4,3,78,2,0,2])