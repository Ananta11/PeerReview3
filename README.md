# Peer Review 3
#### A simple project for converting Dollars to Rupees, Euros and Yen in real-time.
##### This project is 3/15 Peer Review projects done in the course \"iOS Development for Creative Entrepreneurs\" by UCI.
---

```
!Warning use 'PeerReview3.xcworkspace' only.

```
In this project we use cocoa-pods 'CurrencyRequest 0.1' as provided by djp3, the   mentor of these courses. Whenever you install a pod in your project just use the newly formed *.xcworkspace* only.

Steps to install a pod.

1. Type the
```
pod init
```
command in the terminal in the root directory of the project. 
2. A new file by the name *Podfile* will appear, in that file write the following line.
```
<Desired Pod Name> ~> <Pod Version>
```
3. Save the file and enter command 
``pod install`` in the terminal.
4. A new *.xcworkspace* file will appear, open that file and you now have pod installed in the project.

___

This project uses a UITextField which gets the Dollar Value to be converted from the user, and there are 3 UILabels with outlets in the code. These UILabel s are used to represent the amount converted to the respective currencies as shown below.

___

![PeerReview3](https://github.com/Ananta11/PeerReview3/raw/master/Common/Screenshot.png)

___
