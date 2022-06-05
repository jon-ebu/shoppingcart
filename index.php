<?php
  include ('sticker_sc_fns.php');
  // The shopping cart needs sessions, so start one
  session_start();
  
  do_html_header("Welcome to StickersXYZ");

  // display a random book - Jonathan Ebueng
  echo "<h2>Check out this sticker!</h2>";
  random_sticker();

  echo "<p>Please choose a category:</p>";

  // get categories out of database
  $cat_array = get_categories();

  // display as links to cat pages
  display_categories($cat_array);

  //display footer
  do_html_footer();
?>
