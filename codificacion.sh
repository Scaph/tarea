#Codficar
cat fcfm.png | base64 | base64 > fcfmcod.txt
cat msg.txt | base64 | base64 > msgcod.txt

#decodificar
cat mystery_img1.txt | base64 --decode> img1.png
cat mystery_img2.txt | base64 --decode> img2.png

md5sum fcfm.png
#Me dió: 4260808329804b5f553cf3e3d5a446c6  fcfm.png

md5sum msg.txt
#Me dió: 40744679dff4bf36705c00f9cb815579  msg.txt

md5sum mystery_img1.txt
#Me dió: 5db9862819edb16f9ac0f3b1c406e79d  mystery_img1.txt

md5sum mystery_img2.txt
#Me dió: b091a841da98ca516635f4dfea1dbaf5  mystery_img2.txt

