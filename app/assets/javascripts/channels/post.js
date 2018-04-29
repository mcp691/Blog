App.post = App.cable.subscriptions.create("PostChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function() {
    // Called when there's incoming data on the websocket for this channel
    $(".alert.alert-info").show();
  }
});
