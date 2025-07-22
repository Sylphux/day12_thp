def day_trader(arr)

    buy = arr.min
    cropped = arr[arr.min...]
    sell = cropped.max

    res = "#{buy} #{sell}"
    return res

end

def perform
    liste = [17, 3, 6, 9, 15, 8, 6, 1, 10]
    puts day_trader(liste)
end

perform