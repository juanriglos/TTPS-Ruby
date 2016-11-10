Bundler.require

set(:is_42) do |number|
    condition do
        number == 42
    end
end

get "/", :is_42 => Random.rand(1..42) do
    [200,"entre"]
end

get "/" do
    [404,"no entre"]
end
