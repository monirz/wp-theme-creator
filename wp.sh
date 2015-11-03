#!/bin/bash

echo "Enter your theme name: \n"

read text

mkdir $text

cd $text


index=index.php
header=header.php
footer=footer.php
func=functions.php
style=style.css
category=category.php
singles=single.php
pagenotfound=404.php 

#creating the header.php file

cat <<EOF1 > $header
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title> <?php wp_title(); ?></title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link rel="shortcut icon" href="<?php bloginfo('template_directory'); ?>/images/favicon.ico" />
        <!-- Animate.css library -->
        
        <!-- Custom styles for this template -->
   

        <!--[if lt IE 9]>
        <script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/html5.js"></script>
        <![endif]-->
        
        <?php wp_head(); ?>
 </head>
<body>
<!--NAVBAR -->
    <div class="navbar-wrapper">
      <div class="container-fluid">

        <nav class="navbar navbar-inverse">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
           
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>

                         
EOF1
#Creating the index.php file
cat <<EOF1 > $index
<?php get_header(); ?>
 <div class="main-container">
 </div>
<?php get_footer(); ?>

EOF1

#Creating the footer.php file

cat <<EOF1 > $footer
 	<div class="col-md-12">
		<p class="copyright text-center">Copyright © <?php echo date('Y')?>
		    <a href="http://www.rezwan-photography.com" target="blank">Basic Portfolio Theme </a> 
		</p>
	</div>
	   <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'/> 
       </script> 
   <?php wp_footer(); ?>
</body>
</html>
EOF1

cat <<EOF1 > $func
<?php
function basic_portfolio_theme(){
	add_theme_support( 'title-tag' );
    add_theme_support( 'post-thumbnails' );
}

add_action( 'after_setup_theme', 'basic_portfolio_theme' );

function basic_portfolio_theme_scripts() {
// Loading the main stylesheet.
	wp_enqueue_style( 'basic-style', get_stylesheet_uri() );
	//loading js file
    wp_enqueue_script( 'basic-script', get_template_directory_uri() . '/js/basic.js', array( 'jquery' ), '', true );
}

add_action( 'wp_enqueue_scripts', 'basic_portfolio_theme_scripts' );
EOF1

cat <<EOF1 > $category
 
EOF1

cat <<EOF1 > $singles
 
EOF1

cat <<EOF1 > $pagenotfound
 
EOF1

echo "/*" > $style
echo "theme name: $text" >> $style
echo "Enter Author name"
read text
echo "Author: $text" >> $style
echo "Enter  author URI"
read text
echo "Author URI: $text"

cat <<EOF1 >> $style

Description: A theme for portfolio
Version: 1.0

Tags: black, blue, gray, pink, purple, white, yellow, dark, light, two-columns, left-sidebar, fixed-layout, responsive-layout, accessibility-ready, custom-background, custom-colors, custom-header, custom-menu, editor-style, featured-images, microformats, post-formats, rtl-language-support, sticky-post, threaded-comments, translation-ready

*/


.main-container{
	min-height: 600px;
}

.container-fluid{
	padding-right: 0;
	padding-left: 0;
}

.navbar{
	border-radius: 0;
}

EOF1

mkdir js
echo "js directory created"
mkdir css
echo "css directory created"
mkdir images
mkdir fonts






  

