# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et velit lacinia, blandit orci at, eleifend mauris. Donec odio nisl, maximus id nulla sed, maximus varius nisl. Vestibulum commodo pellentesque orci, eu ultrices elit pulvinar et. In non aliquam quam, eget consequat ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam eu porttitor augue. Mauris id mattis libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed et quam sollicitudin, egestas metus id, tincidunt nibh. Ut lacus mauris, accumsan ut erat vitae, ultricies elementum sapien. Sed elementum id odio nec pretium.

Vivamus scelerisque et nisl sit amet sodales. Nunc et sodales dolor. Pellentesque semper luctus ligula a posuere. Nam accumsan tortor quis ligula porttitor, eget sodales sapien vestibulum. Etiam porttitor justo orci, a iaculis elit elementum sed. Vivamus vulputate, velit non ultrices pellentesque, elit risus rhoncus eros, nec ornare tellus turpis id elit. Mauris lacus sapien, vehicula a ullamcorper eget, molestie non dolor. Nullam non tristique purus. Nunc fermentum vehicula augue euismod eleifend. Phasellus vel euismod justo, eget mattis nisl.

Fusce tincidunt non dolor ultricies consequat. Cras semper elementum metus, eu fermentum nisi dignissim vitae. Fusce eleifend sollicitudin augue, vel auctor tortor aliquam ac. In eu dignissim velit. Quisque placerat velit congue scelerisque finibus. Vivamus vel massa et sapien interdum fringilla quis nec enim. Sed tempus egestas dolor facilisis sollicitudin. Quisque turpis lectus, placerat sit amet imperdiet sit amet, dignissim a nunc. Mauris quam risus, viverra eget elementum id, auctor ut ex. Suspendisse aliquet diam ex, eget placerat neque pellentesque fringilla. Vestibulum volutpat viverra nunc eu aliquet. Curabitur quis ligula neque. Aenean consequat, nulla sit amet interdum condimentum, lacus ex euismod dui, vel volutpat sapien lectus sollicitudin nibh. In ac posuere elit. Fusce sollicitudin magna nisl, non molestie lorem efficitur sed. Pellentesque luctus justo a sapien imperdiet, ut porttitor leo tempus.

Cras eu euismod erat. Nunc ut bibendum massa. Nam feugiat maximus magna, eu scelerisque metus mattis quis. In eget risus eget massa laoreet lobortis in quis turpis. Vestibulum accumsan libero nisl, ac facilisis neque laoreet at. Duis justo risus, placerat ut lacinia elementum, suscipit id risus. Ut aliquam lacinia sapien, vitae euismod nulla sodales sed. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vel odio dolor. Praesent in diam eu justo porta tincidunt in a nibh. Donec sit amet nisi maximus, semper purus vitae, varius odio. Etiam et suscipit nisl. Aliquam ut nunc mauris. Donec finibus ipsum ac nisi suscipit feugiat.

Nullam at aliquet eros. Vestibulum quis libero laoreet erat tincidunt finibus. Sed bibendum erat est, sed congue ligula tempor commodo. Morbi mollis magna sit amet consequat consequat. Nunc eu dignissim purus. Nulla rhoncus lectus eget ante vehicula, varius consectetur augue finibus. Nunc congue iaculis diam, a facilisis tellus sodales id. Vestibulum dignissim eget nisi sit amet vulputate. Integer elementum odio et ullamcorper consectetur. Aliquam pellentesque leo massa."

titles = [
    "Cras semper elementum metus, eu fermentum nisi dignissim vitae.",
    "Nunc et sodales dolor?",
    'Nam accumsan tortor quis ligula porttitor, eget sodales',
    "Vivamus scelerisque et nisl sit amet sodales?",
    "Cras eu euismod erat. Nunc ut bibendum massa.",
    "Vivamus vel massa et sapien interdum fringilla quis nec enim.",
    "In non aliquam quam, eget consequat ante?",
    "Interdum et malesuada fames ac ante ipsum primis in faucibus.",
    "Aliquam eu porttitor augue. Mauris id mattis libero?"
]

1000.times {|i|
    Article.create(
        title: titles.sample,
        header: "https://picsum.photos/seed/#{i + 1}/1140/800",
        thumbnail: "https://picsum.photos/seed/#{i + 1}/800/400",
        body: lipsum
    )
}
