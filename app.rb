require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

post '/ajax' do
  'ajax response'
end

__END__

@@ layout
<html>
  <head>
    <script src='/jquery.min.js'></script>
  </head>
  <body>
    <%= yield %>
  </body>
</html>

@@ index
<h1>hello world</h1>
<a class='ajax' href='#'>click me</a>

<script type='text/javascript'>
var foo = 3;
$('.ajax').click(function() {
  $.ajax({
    url: '/ajax',
    type: 'POST',
    success: function(data) {
      $('h1').text(data);
    }
  })
});
</script>