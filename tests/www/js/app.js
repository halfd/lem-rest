// Models

var Dude = Backbone.Model.extend({
    urlRoot : "http://localhost:8008/dudes",
    defaults : {
//        "id" : null,
        "name" : "",
        "score" : 0
    }
});

var DudeCollection = Backbone.Collection.extend({
    model : Dude,
    url : "http://localhost:8008/dudes"
});

// Views

var DudeView = Backbone.View.extend({

    tagName: 'li',

    className: 'dude',

    events: {
        //'click': 'move'
    },

    initialize: function() {
      this.listenTo(this.model, 'change', this.render);
      this.listenTo(this.model, 'destroy', this.remove);
    },

    render: function () {
        console.log("individuel render");

        this.$el.html(this.model.get("name"));
        this.$el.attr('title', this.model.get("score"));

        //this.setDimensions();
        //this.setPosition();
        //this.setColor();
        return this;
    },

    /*
    setDimensions: function () {
        this.$el.css({
            width: this.model.get('width') + 'px',
            height: this.model.get('height') + 'px'
        });
    },

    setPosition: function () {
        var position = this.model.get('position');
        this.$el.css({
            left: position.x,
            top: position.y
        });
    },

    setColor: function () {
        this.$el.css('background-color', this.model.get('color'));
    },

    move: function () {
        this.$el.css('left', this.$el.position().left + 10);
    }
    */
});


// Do stuff

var dudes = new DudeCollection;


var AppView = Backbone.View.extend({
    el : $('#content'),

    initialize : function() {
        dudes.fetch();
        this.listenTo(dudes, 'reset', this.addAll);
        this.listenTo(dudes, 'all', this.render);
    },

    render : function() {
        console.log("rendering app");
    },

    // Add a single todo item to the list by creating a view for it, and
    // appending its element to the `<ul>`.
    addOne: function(todo) {
      var view = new DudeView({model: todo});
        console.log("hwhw");
      this.$("ul").append(view.render().el);
    },

    // Add all items in the **Todos** collection at once.
    addAll: function() {
        $('#content ul').html('');
        dudes.each(this.addOne, this);
    },
});

$(function() {

console.log("jpopo")
app = new AppView;

$('#submitbutton').bind('click', function(ev, el) {
    var value = $('#nametextfield').val();
    var dude = new Dude({'name':value});
    dude.save();
});

});

//var score = new Backbone.Model();
//score.set({'points': 1337, 'name': 'Foo'});

//scores.add(score); // Executes a HTTP POST to create a new score

//score.set({'name': 'Bar'}); // Executes a HTTP PUT to update the score

//score.destroy(); // Executes a HTTP DELETE to remove the score

// Views


