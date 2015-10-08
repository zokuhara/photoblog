//= require_tree ./components
var Photos = React.createClass({

  getInitialState(){
    return {
      photos: []
    }
  },

  fetchPhotos(){
    var component = this;
    fetch("/api/images").then(function(response){
      response.json().then(function(image){
        component.setState({images: json.images});
      });
    });
  },
})
