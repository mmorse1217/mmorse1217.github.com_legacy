---
layout: post
title: "What is Quadrature?"
categories: blog
excerpt: TBA 
tags: [quadrature, numerical, integrals]
date: 2017-02-24
modified: 2017-02-24
---
some text

<!--<canvas id='canvas' style="width: inherit; position: relative; top: 0;">-->
<script src="http://threejs.org/build/three.min.js"></script>
<div id='canvas-holder' style="position: relative; width: inherit;">
<script>
var scene = new THREE.Scene();
var camera = new THREE.PerspectiveCamera( 75, window.innerWidth/window.innerHeight, 0.1, 1000 );

var renderer = new THREE.WebGLRenderer();
var canvasHolder = document.getElementById('canvas-holder');
// Apply your desired aspect ratio
var width = canvasHolder.clientWidth;
var height = width;
canvasHolder.clientHeight = height;
//renderer.setSize( width, height );
canvasHolder.appendChild( renderer.domElement );
renderer.setSize( width, height ); // aspect ratio is off with browser resizing
//document.body.appendChild( renderer.domElement );

var geometry = new THREE.BoxGeometry( 1, 1, 1 );
var material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
var cube = new THREE.Mesh( geometry, material );
scene.add( cube );

camera.position.z = 5;

var animate = function () {
requestAnimationFrame( animate );

cube.rotation.x += 0.01;
cube.rotation.y += 0.01;

renderer.render(scene, camera);
};

animate();
</script>

</div>


more text
