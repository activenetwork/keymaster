var Keymaster = {
  
  // show the 'Add Project' screen
  addProject:function() {
    alert('add project');
  },
  
  // show the 'Add User' screen
  addUser:function() {
    alert('add user');
  }
};

$(document).ready(function() {
  // add buttons
  $('.add').click(function() {
    $(this).siblings('.new').slideDown();
  });
  // cancel buttons
  $('.cancel').click(function() {
    $(this).parents('.new').slideUp();
  });
});
