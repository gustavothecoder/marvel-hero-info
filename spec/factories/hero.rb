FactoryBot.define do
    factory :hero do
        name { 'Hero name' }
        description { 'Hero description' }
        image_path { 'Hero image path' }
        image_extension { 'Hero image extension' }
        detail { 'Hero detail' }
        wiki { 'Hero wiki' }
        comic_link { 'Hero comic link' }
    end
end