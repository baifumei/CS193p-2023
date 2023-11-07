#  Assignments
## Homework 1:
1. Add a title "Memorize!" to the top of the screen

<img width="300" alt="L1" src="https://sun9-54.userapi.com/impg/bN8SE6GtEKYHDdjJNDOatHB1t3y70wTX2BAbzw/35XZS_HT6hQ.jpg?size=650x1092&quality=96&sign=46f742a6dd0fb6997e71d966033c8fe7&type=album">

2. Add 4 “theme choosing” buttons to my UI, each of which causes all of the cards’ emojis to be replaced with new emojis from the chosen theme. A “theme” just means a collection of related emojis. 
The buttons include an image (created using an SF Symbol) representing the theme and text describing the theme stacked on top of each other vertically.

 <img width="300" alt="P2" src="https://sun77-2.userapi.com/impg/DqwCDPALXziEGH0eeLyuJiKOM4BazVQtYZQdvw/BR91MacQ4W0.jpg?size=566x1080&quality=96&sign=67bd5d74be0b3cbe3c4acfc353bf0585&type=album"> <img width="300" alt="P2" src="https://sun9-17.userapi.com/impg/EStnveR3PYfVTptJRPdqP-d-nC-jKAYex0V5jg/7nYjeftgV5I.jpg?size=658x1254&quality=96&sign=3b0ef33259e481838fb3fb32bb6e084a&type=album"> <img width="300" alt="P2" src="https://sun9-63.userapi.com/impg/pcReHAh3d_epB3C6znmUrgXStK8cIaXnxRZYEQ/h1Osd-d_du8.jpg?size=660x1260&quality=96&sign=2e7aefcb9c7690419825d03cbdd37a59&type=album">

3. The number of cards in each themes is different, but in no case fewer than 4 cards. The cards that appear when a theme button is touched are in an unpredictable (i.e. random) order.

<img width="300" alt="P2" src="https://sun9-48.userapi.com/impg/ImYtsSPrFY-X8TLCUNCqR6O1a3afASHPkjSu6w/F7fH1fCJoFE.jpg?size=660x1260&quality=96&sign=cb3c6491fa886260574790c4105eb5a1&type=album"> <img width="300" alt="P2" src="https://sun9-31.userapi.com/impg/Ax_T5gmX36nndAcDklpVAKCo6huRK-VEruR7Mw/XyOxMt4jmR4.jpg?size=660x1260&quality=96&sign=2fec8f1414456326102c9168282ddeea&type=album"> <img width="300" alt="P2" src="https://sun9-52.userapi.com/impg/HSSPrjitaZ-a05W9afhPw8_wQiCQSZqHKSkQpQ/5kVJE7F5Qc4.jpg?size=660x1260&quality=96&sign=1eed120c9f02d3c35e8fa2e7c9c9dc5b&type=album"> 

## Homework 2:
1.  Removed theme-choosing buttons and the title of your game. Created two files to the project for the future MVVM architectural pattern. They are MemorizeGame (Model) and EmojiMemorizeGame (ViewModel). Connected the Memorize game's View Model to its Model and View. Created pairs of cards

<img width="300" alt="P2" src="https://sun77-1.userapi.com/impg/2pGx1CLn9s3qor1Q-lseGuZ0UKD4HCuT8U1LXg/k3ZMhBoZ0jU.jpg?size=650x1260&quality=96&sign=9ec7c2dce3c37b494d9661d09b7d54d4&type=album"> 

2. Added 6 distinct Themes in the game. A Theme consists of a name for the Theme, a set of emoji to use, a number of pairs of cards to show, and an appropriate color to use to draw the cards. Created a button which begins a brand new game. Each new game use a randomly chosen Theme to display its cards.

<img width="300" alt="P2" src="https://sun9-53.userapi.com/impg/fx-Fo7XiKhihvXf_IubLW_32dXm0Y6DYhnl1cw/i8L6HtZ3x0w.jpg?size=660x1260&quality=96&sign=0ffff3a5661a5f6a09f77b39136eb362&type=album"> <img width="300" alt="P2" src="https://sun9-32.userapi.com/impg/JMb48LMchzHOHgyOYLIS72MZpAoceKrGuf_azA/nM_epIw7EHU.jpg?size=660x1260&quality=96&sign=2c31723182c4835c431e53f9d70dc3fa&type=album"> <img width="300" alt="P2" src="https://sun9-73.userapi.com/impg/EzgkW3kIQ1kVJHNkv9i1X_cmDR4Jocd1U7E7yQ/GUV-uham8-Q.jpg?size=660x1260&quality=96&sign=f048ac8dbb62718a42b8b869331ea293&type=album"> <img width="300" alt="P2" src="https://sun9-15.userapi.com/impg/ywP3eenIfj_zk4Mu3nFmIWTD3-SoDX9VfUXcLg/Doi-NTfYknE.jpg?size=660x1260&quality=96&sign=0b215ff31928e8a38fb86af65cea0f4e&type=album"> <img width="300" alt="P2" src="https://sun9-7.userapi.com/impg/uMf37WcRDtON1L5jCRCIVidx6yjQkWHreK6QwA/T5k-y1f3VYM.jpg?size=660x1260&quality=96&sign=905e5c0c12f82e0b8d2ae22e14a4f71c&type=album"> <img width="300" alt="P2" src="https://sun9-27.userapi.com/impg/E1d7zLCzvbHEbos17CvsIvlcWTBa2dv5mBoROw/sH6wvcQAwtE.jpg?size=660x1260&quality=96&sign=47d8b82a2d89183a857c14e2b68b6c13&type=album">

3. Added the logic of the game. Now all cards start face down (isFaceUp = false), you can open card and try to find its pair, if you are wrong, both cards turn back side, if you are right, both cards disappear.

<img width="300" alt="P2" src="https://sun9-54.userapi.com/impg/Fz8MIYkye4coJ3YhUnqAMmemrmbh2E9dT6OXQw/712MObG4OMA.jpg?size=660x1260&quality=96&sign=d0abec4c57d230ceea2b25ed4523cb32&type=album"> <img width="300" alt="P2" src="https://sun9-16.userapi.com/impg/sW5tXmpmfypezLb2z7My9crTbYkzTBuXLTJ5_g/Cdwi2NapQpg.jpg?size=660x1260&quality=96&sign=81c980e7fe64dfed78649de7343c663a&type=album"> <img width="300" alt="P2" src="https://sun9-1.userapi.com/impg/ocjQzSjm63xoop68_dY2HiIVNuCDGEkhrzNuBw/3Ruy6w-mLRg.jpg?size=660x1260&quality=96&sign=35d0a2e4a431047b6c191b668895a94f&type=album">

4. Added the score: 1 point for every previously seen card that is involved in a mismatch and awarding 2 points for every match (whether or not the cards involved have been “previously seen”)

<img width="300" alt="P2" src="https://sun9-3.userapi.com/impg/TrJG4_09tJoMd1avuWrjA0vit_FXTA9ObU0NWA/APnp0i6kxms.jpg?size=580x1060&quality=96&sign=0b3c8cfddc0e6ad5a92afd0159c8aa2e&type=album"> <img width="300" alt="P2" src="https://sun9-40.userapi.com/impg/Gzek4nZ9C9TMMtWXf0bBG-Wf4tGHKw8rFyadUQ/whLSXr1XXlM.jpg?size=580x1060&quality=96&sign=015fa036794aa4cf645da66e03d99c4d&type=album"> <img width="300" alt="P2" src="https://sun9-32.userapi.com/impg/ZcNNOghZ3iIPEWlAIOjpgdfWVPWPZUnpEkV7dA/a0gLQOSkWmU.jpg?size=580x1060&quality=96&sign=dbc547ebf1cf41256793afd606fa7ff1&type=album">

5. Added GeometryReader 

<img width="300" alt="P2" src="https://sun9-66.userapi.com/impg/wR7D9N1ZVcH5-g4hIorACOYN98nCwg7cvfVC2g/hse5Wp4jNt4.jpg?size=560x1060&quality=96&sign=fc2d8629d25942bad111faaa4636ff8d&type=album"> <img width="300" alt="P2" src="https://sun77-1.userapi.com/impg/6-pUJmeikpLoi7grfWW5peku67-D7xFNgHOccw/5V8YQ895V7U.jpg?size=560x1060&quality=96&sign=6e72243b025f2e5a08e42e23ca400279&type=album"> <img width="300" alt="P2" src="https://sun9-79.userapi.com/impg/kM5Qm_kopncf3DElv4eNoVRpKMUlTNHRAyS-dA/2t5aGZCYyRE.jpg?size=560x1060&quality=96&sign=f2c2faf8e38131fbf0dc64df4ecf57f7&type=album">

6. Increased the emojis size and fit them to cards size

<img width="300" alt="P2" src="https://sun9-79.userapi.com/impg/_HD4P6fuYIVWnqRqsGKpnOlz_gudnyTHxAaOdA/wjQAxLobzkw.jpg?size=640x1260&quality=96&sign=4477588ad4072027bc6b1c1aefbd593d&type=album"> <img width="300" alt="P2" src="https://sun9-20.userapi.com/impg/0qU7xSSEpjqTReTZ6wWFET0KTxrRRq03jtgzIA/f3y3NeCzmYc.jpg?size=640x1258&quality=96&sign=325ca8586bc4cbcb8873a23f0ab5e324&type=album"> <img width="300" alt="P2" src="https://sun9-50.userapi.com/impg/dPgNF1Ju2doE5ku6uNoQgcuol8KTBZS7M4eYwA/w0di8laoTfA.jpg?size=640x1260&quality=96&sign=130832a3f22500b72085ad4694a910d9&type=album">

## Homework 3:

1. Changed the logic of the game. Now users can select up to 3 cards by touching on them in an attempt to make a Set. 

<img width="300" alt="P2" src="https://sun9-53.userapi.com/impg/kmAKETTcaZSwButxe9pRrvQQ5uFxldEhcIDDrA/i3yagoAWDzk.jpg?size=630x1250&quality=96&sign=2ba61bfe4c514ad88964434b688a111c&type=album"> <img width="300" alt="P2" src="https://sun9-12.userapi.com/impg/IpHa2GnUUA66Czkd7xiuh7G25oEowTJ4NC_ANg/OUxCoYlIWbY.jpg?size=630x1250&quality=96&sign=5b9f6f518e77d7ebaed55cd983fcad57&type=album"> <img width="300" alt="P2" src="https://sun9-48.userapi.com/impg/9cZmLV9xFN9BBeIEkPJi8ShJ8kpzSFNF2JKPHw/6tloR-oRa_Y.jpg?size=630x1250&quality=96&sign=cc285a95a8b63b0b2b69af010901b84c&type=album">

2. Supported “deselection” by touching already-selected cards (but only if there are 1 or 2 cards (not 3) currently selected).

<img width="300" alt="P2" src="https://sun6-21.userapi.com/impg/YWCsQ4j5zMETuvN7N14JnqAbfmrTyANUa7nsDQ/cDz_x-Rgh2U.jpg?size=660x1260&quality=96&sign=1acdaab43d426459e7d4a881d909d0ac&type=album"><img width="300" alt="P2" src="https://sun9-49.userapi.com/impg/ceTRHahc_yCl0YXFuCPf7cMlDdkiGu3vnzvQdw/DxZatI_wEwI.jpg?size=660x1260&quality=96&sign=27f9e403abd80265c76619f00a853f4c&type=album"> <img width="300" alt="P2" src="https://sun9-2.userapi.com/impg/qumDmVZPa714hQ_Q_CDynqGYGDzkh7zUdSpvaA/kuLbe3_JPtI.jpg?size=660x1260&quality=96&sign=91a9899f28d5a08bbd5f2c3829d64ea6&type=album">
