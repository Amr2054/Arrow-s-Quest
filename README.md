![alt text](main.png)
Welcome to Arrows's Quest! In this game, players step into the shoes of a skilled archer with one simple objective: pop as many balloons as possible. With precise aim and timing, players will unleash arrows to burst balloons that drift across the screen. But beware, as the challenge ramps up with faster balloon speeds.
# # 
# **Table of Content:**  
1-How to Play  
2-Game Features      
3-Game Design (Class Hierarchy)   
4-Challenges of Development   
5-Credits
# #
# How to Play 
A-LEFT Click : To shoot arrows.   
![alt text](image.png)
B-RIGHT Click : To reload arrows.
![alt text](image-2.png)  
C-Mouse Movement : To move the Character.  
Use these Controls to shoot arrows while trying to adjust your timing to pop all the balloons with the least amount of arrows to gain the highest score.
# #
# Game Features 
**Level 1 :**   
20 Arrows.  
15 Red Balloons Aligned next to each other moving with constant speed.  
**Level 2 :**  
20 Arrow.  
15 Random Balloon including 3 yellow balloons moving with irregular speed and acceleration.  
 **Win / Lose :**  
 Win : When player succeed in popping 15 balloons without running out of arrows after winning level 1 & 2 you will have level 1 & 2 Score and the total score.  
 Lose : When player run out of arrows before popping all of the balloons offering the player to retry the game.
# #
# Game Design
Our game is designed on 3 basis :  
**1-Character :** Consists of 2 positions : Neutral position and Ready position. And moves veritcally with the mouse movement.  
**2-Balloons :** Three Classes one parent class which is balloon and 2 subclasses redBalloon and yellowBallon. Where red balloons have constant speed and yellow balloons have irregular speed & acceleration and generated at random places in each turn.  
**3-Arrows :** Class Arrows has 2 functions which are responsible for rendering and moving the arrow. And arrows are stored in an arraylist.
# #
# Challenges of Development   
1-Randomizing the order of balloons in level 2 and how to store inside 1 arraylist two data types which are redBallons and yellowBallons.  
2-Implementing the reload mechanism of arrows.  
3-Balloon popping upon contact with the arrow.

