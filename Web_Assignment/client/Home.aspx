﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_Assignment.client.Home" %>

<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
<html lang="en" class="bg-zinc-900">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
</script>
    <title>Index
  </title>

</head>

<body>
    <div>
        <div class="navbar bg-black">
            <div class="navbar-start">
                <div class="dropdown">
                    <label tabindex="0" class="btn btn-ghost lg:hidden">
                        <svg xmlns="logo.png" class="h-5 w-5" fill="none" viewbox="0 0 24 24"
                            stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
                        </svg>
                    </label>
                    <ul tabindex="0" class="menu menu-compact dropdown-content mt-3 p-2 shadow bg-base-100 rounded-box w-52">
                        <li><a>Home</a></li>
                        <li tabindex="0"></li>
                        <li><a>Browse</a></li>
                        <li tabindex="0"></li>
                        <li><a>Offer</a></li>
                        <li tabindex="0"></li>
                        <li><a>About</a></li>
                        <li tabindex="0"></li>
                        <li><a>Contact</a></li>
                        <li tabindex="0"></li>
                    </ul>
                </div>
                <div>
                    <a class="btn btn-ghost normal-case text-xl">
                        <img src="../img/logo.png" height="50px" width="50px">
                        &nbsp; Galaxy</a>
                </div>
            </div>
            <div class="navbar-center hidden lg:flex">
                <ul class="menu menu-horizontal px-1">
                    <li><a>Home</a></li>
                    <li tabindex="0"></li>
                    <li><a>Browse</a></li>
                    <li tabindex="0"></li>
                    <li><a>Offer</a></li>
                    <li tabindex="0"></li>
                    <li><a>About</a></li>
                    <li tabindex="0"></li>
                    <li><a>Contact</a></li>
                    <li tabindex="0"></li>
                </ul>
            </div>
            <div class="navbar-end">
                <div class="flex-none">
                    <div class="dropdown dropdown-end">
                        <label tabindex="0" class="btn btn-ghost btn-circle">
                            <div class="indicator">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 3 22 22" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
                                </svg>
                                <span class="badge badge-sm indicator-item">1</span>
                            </div>
                        </label>
                        <div tabindex="0" class="mt-3 card card-compact dropdown-content w-52 bg-base-100 shadow">
                            <div class="card-body">
                                <span class="font-bold text-lg">8 Items</span>
                                <span class="text-info">Subtotal: $999</span>
                                <div class="card-actions">
                                    <button class="btn btn-primary btn-block">View cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dropdown dropdown-end">
                        <label tabindex="0" class="btn btn-ghost btn-circle avatar">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0zM4.501 20.118a7.5 7.5 0 0114.998 0A17.933 17.933 0 0112 21.75c-2.676 0-5.216-.584-7.499-1.632z" />
                            </svg>

                        </label>
                        <ul tabindex="0" class="menu menu-compact dropdown-content mt-3 p-2 shadow bg-base-100 rounded-box w-52">
                            <li>
                                <a class="justify-between">Profile
                 
                                    <span class="badge">New</span>
                                </a>
                            </li>
                            <li><a>Settings</a></li>
                            <li><a>Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="hero min-h-screen" style="background-image: url(../img/bg-image.jpg);">
        <div class="hero-overlay bg-opacity-60"></div>
        <div class="hero-content text-center text-neutral-content">
            <div class="max-w-md">
                <h1 class="mb-5 text-5xl font-bold">Hello there</h1>
                <p class="mb-5">Our game selling website offers a diverse range of the latest video games across all platforms at competitive prices, providing a convenient and hassle-free shopping experience for gamers.</p>
                <button class="btn btn-primary">Get Started</button>
            </div>
        </div>
    </div>
    </br>
    <br />
    <h1 class="text-3xl">&nbsp;&nbsp; Hot Games ></h1>
    <div>
        <div class="carousel carousel-center max-w-full p-6 space-x-7 bg-neutral rounded-box bg-zinc-900">
            <div class="carousel-item">
                <div class="card w-96 glass">
                    <figure>
                        <img src="../img/mh.jpg" alt="Monster Hunter" />
                    </figure>
                    <div class="card-body">
                        <h2 class="card-title">Monster Hunter: World</h2>
                        <p>Battle gigantic monsters in epic locales. As a hunter, you'll take on quests to hunt monsters in a variety of habitats. </p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary m-4">RM288.99</button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="carousel-item">
                <div class="card w-96 glass">
                    <figure>
                        <img src="../img/mh.jpg" alt="Monster Hunter" />
                    </figure>
                    <div class="card-body">
                        <h2 class="card-title">Monster Hunter: World</h2>
                        <p>Battle gigantic monsters in epic locales. As a hunter, you'll take on quests to hunt monsters in a variety of habitats. </p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary m-4">RM288.99</button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="carousel-item">
                <div class="card w-96 glass">
                    <figure>
                        <img src="../img/mh.jpg" alt="Monster Hunter" />
                    </figure>
                    <div class="card-body">
                        <h2 class="card-title">Monster Hunter: World</h2>
                        <p>Battle gigantic monsters in epic locales. As a hunter, you'll take on quests to hunt monsters in a variety of habitats. </p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary m-4">RM288.99</button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="carousel-item">
                <div class="card w-96 glass">
                    <figure>
                        <img src="../img/mh.jpg" alt="Monster Hunter" />
                    </figure>
                    <div class="card-body">
                        <h2 class="card-title">Monster Hunter: World</h2>
                        <p>Battle gigantic monsters in epic locales. As a hunter, you'll take on quests to hunt monsters in a variety of habitats. </p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary m-4">RM288.99</button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="carousel-item">
                <div class="card w-96 glass">
                    <figure>
                        <img src="../img/mh.jpg" alt="Monster Hunter" />
                    </figure>
                    <div class="card-body">
                        <h2 class="card-title">Monster Hunter: World</h2>
                        <p>Battle gigantic monsters in epic locales. As a hunter, you'll take on quests to hunt monsters in a variety of habitats. </p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary m-4">RM288.99</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card w-96 glass">
                    <figure>
                        <img src="../img/mh.jpg" alt="Monster Hunter" />
                    </figure>
                    <div class="card-body">
                        <h2 class="card-title">Monster Hunter: World</h2>
                        <p>Battle gigantic monsters in epic locales. As a hunter, you'll take on quests to hunt monsters in a variety of habitats. </p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary m-4">RM288.99</button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="carousel-item">
                <div class="card w-96 glass">
                    <figure>
                        <img src="../img/mh.jpg" alt="Monster Hunter" />
                    </figure>
                    <div class="card-body">
                        <h2 class="card-title">Monster Hunter: World</h2>
                        <p>Battle gigantic monsters in epic locales. As a hunter, you'll take on quests to hunt monsters in a variety of habitats. </p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary m-4">RM288.99</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="m-auto card lg:card-side bg-zinc-900 shadow-xl outline p-5 w-11/12">
                <figure>
                    <img src="../img/mh.jpg" class="h-80" alt="Album" /></figure>
                <div class="card-body">
                    <h2 class="card-title">New Game Announced!</h2>
                    <p>Legendary developer Lee Wee Yan has announced the developement of a new, cutting-edge game!</p>
                    <div class="card-actions justify-end">
                        <button class="btn btn-primary">Learn More</button>
                    </div>
                </div>
            </div>  
        </div>
        <br>
    </div>
</body>
<footer class="footer p-10 bg-black text-base-content">
    <div>
        <span class="footer-title">Company</span>
        <a class="link link-hover">About Us</a>
        <a class="link link-hover">Why Choose Us</a>
        <a class="link link-hover">Pricing</a>
        <a class="link link-hover">Testimonial</a>
    </div>
    <div>
        <span class="footer-title">Resources</span>
        <a class="link link-hover">Privacy Policy</a>
        <a class="link link-hover">Terms and Conditions</a>
        <a class="link link-hover">Blog</a>
        <a class="link link-hover">Contact Us</a>
    </div>
    <div>
        <span class="footer-title">Product</span>
        <a class="link link-hover">Project Management</a>
        <a class="link link-hover">Time Tracker</a>
        <a class="link link-hover">Time Schedule</a>
        <a class="link link-hover">Lerad Generation</a>
        <a class="link link-hover">Remote Collaboration</a>
    </div>
    <div>
        <span class="footer-title">Newsletter</span>
        <div class="form-control w-max">
            <h1 class="text-2xl">Galaxy</h1>
            <label class="label">
                <span class="label-text">Enter your email address</span>
            </label>
            <div class="relative">
                <input type="text" placeholder="username@site.com" class="input input-bordered w-full pr-16" />
                <button class="btn btn-primary absolute top-0 right-0 rounded-l-none">Subscribe</button>
            </div>
        </div>
    </div>
</footer>

</html>
