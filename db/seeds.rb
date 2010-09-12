# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Post.destroy_all
Post.create([
    {
      :title=>"First Post",
       :created_at=>(Time.now - 1.week),
      :body=>"Aenean cursus nisi lobortis diam viverra vel feugiat ipsum dapibus. Nullam bibendum est quis nulla vestibulum in feugiat nunc accumsan. Etiam non arcu sit amet orci suscipit tincidunt. Vivamus congue velit quis risus rhoncus consequat. Nulla feugiat sodales mauris, sed auctor orci scelerisque sed. Sed egestas cursus augue in interdum. Donec dignissim pharetra auctor. Fusce venenatis varius nulla, eu rhoncus libero rutrum sed. Duis sed sagittis neque. Mauris vel tellus erat, ut porta justo. Mauris interdum euismod gravida. Cras at sagittis lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin dapibus tortor vel felis commodo adipiscing. Maecenas bibendum mattis porta. Phasellus eleifend suscipit nisl, et vestibulum erat rutrum vel. Aliquam non nisi consectetur mauris ultrices convallis nec a tortor. Sed porttitor odio justo, nec sollicitudin arcu." 
     
    },{
      :title=>"Second Post",
      :created_at=>(Time.now - 3.days),
      :body=>"Fusce est lorem, mollis nec consectetur quis, volutpat id tortor. Quisque ornare mattis nisl sit amet ullamcorper. Curabitur libero dui, ultrices id lacinia at, pellentesque ut est. Nullam sit amet neque non lectus varius rutrum ac id justo. Ut eros ligula, posuere sed volutpat sagittis, lacinia vitae metus. Duis pellentesque pellentesque volutpat. Pellentesque scelerisque, mi non porta interdum, nulla risus placerat libero, quis euismod sapien neque ac erat. Duis et ligula eget dolor interdum ultricies. Duis molestie feugiat justo quis tristique. Maecenas bibendum urna venenatis dui fermentum sit amet pellentesque tellus faucibus. Morbi eget ante sapien, at congue nibh. Donec ultrices accumsan eros, at placerat magna ultricies nec. Fusce adipiscing posuere mi, vel gravida tellus mollis et. Pellentesque interdum tortor sit amet velit tristique dapibus."
       
    },{ 
      :title=>"Final Post",
      :body=>"Pellentesque sagittis lobortis laoreet. Quisque nec tempus arcu. Nulla at lectus at sem aliquam scelerisque. Aenean in neque eget arcu eleifend facilisis. Donec molestie posuere imperdiet. Proin tempor tristique lorem facilisis malesuada. Morbi euismod, nisi id faucibus tincidunt, urna libero consequat felis, at aliquet lorem odio eu diam. Phasellus eget nibh sit amet elit rhoncus gravida. Nullam molestie, diam non mattis tempor, lorem leo sodales velit, at consequat diam erat sit amet justo. Pellentesque aliquet posuere mollis. Proin id orci ipsum, nec eleifend erat. Morbi scelerisque, est eget iaculis sollicitudin, augue tellus imperdiet augue, ac cursus lorem ligula in arcu."
    }
  ])