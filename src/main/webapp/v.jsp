   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Manager Panel</title>
    <link rel="stylesheet" href="styles/view.css">  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.1/gsap.min.js"></script>
    <!-- Add your CSS file link here -->
    <style>
  
    </style>
</head>
<body>



<header>
    <h4>${userName}</h4>
    <p>About</p>
    <p>Services</p>
    <p style="color: white; text-decoration: none;">
    <a href="systemPanel.jsp" style="color: white; text-decoration: none;">logout</a>
</p>

</header>

<div class="container">
    <div class="panel">
        <div class="front"></div>
        <div class="back"></div>
    </div>
    <div class="panel">
        <div class="front"></div>
        <div class="back"></div>
    </div>
    <div class="panel">
        <div class="front"></div>
        <div class="back"></div>
    </div>
    <div class="panel">
        <div class="front"></div>
        <div class="back"></div>
    </div>
</div>

<div class="layer">
    <h1>WE<span>ARE</span>EVENTX</h1>
    <div class="cta">
    <form action="managerPanel" method="post">
      <button type="submit" name="submit"> Manager Panel</button> 
       
     </form>

        <svg viewBox="0 0 24 24">
        
       
        
            <path d="M5 12h14M12 5l7 7-7 7" />
        </svg>
    </div>
</div>

<footer>
    <div class="replay">REPLAY</div>
    <p>Based on this <a href="https://dribbble.com/shots/3911960-Reflet-Communication" target="_blank">Dribbble</a>. Not Responsive</p>
</footer>


<script>
    let panels = document.querySelectorAll(".panel");
    let fronts = document.querySelectorAll(".front");
    let backs = document.querySelectorAll(".back");
    let replay_btn = document.querySelector(".replay");

    const mirrorTL = gsap.timeline();
    const titleTL = gsap.timeline();

    gsap.set(replay_btn, { opacity: 0 });
    replay_btn.addEventListener("click", (e) => {
        mirrorTL.restart();
        titleTL.restart();
        gsap.to(e.target, 0.5, { opacity: 0 });
        console.log(e.target);
    });

    mirrorTL
        .to(fronts, 2.5, { backgroundPosition: "30px 0px", ease: "expo.inOut" })
        .to(panels, 2.5, { z: -300, rotationY: 180, ease: "expo.inOut" }, "-=2.3")
        .from(
            backs,
            2.5,
            {
                backgroundPosition: "-30px 0px",
                ease: "expo.inOut",
                onComplete: () => {
                    gsap.to(replay_btn, 1, { opacity: 1 });
                }
            },
            "-=2.3"
        );

    titleTL
        .to(".layer", 1, { clipPath: "polygon(3% 0, 100% 0%, 100% 100%, 0% 100%)" })
        .to(".layer h1", 2, { x: 400, ease: "expo.inOut" }, "-=0.5")
        .to(".cta", 2, { x: 0, ease: "expo.inOut" }, "-=2");
</script>
</body>
</html>