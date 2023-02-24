fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

def sluggish_oct(arr)   
    arr.each do |ref|
        return ref if arr.all? { |fish| ref.length > fish.length }
    end
end

# p sluggish_oct(fish)

def dominant_oct(arr)
    
end

def clever_oct(arr)
    longest = arr[0]
    arr.each do |fish|
        longest = fish if longest.length < fish.length
    end
    longest
end

p clever_oct(fish)