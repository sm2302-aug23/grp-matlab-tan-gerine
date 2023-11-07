
# Spline Your Name

## 1. Graph paper transcription

We don't have the graph paper but here is a rough view of what the points would have looked like. 

<img width="1118" alt="Screenshot 2023-11-07 104424" src="https://github.com/sm2302-aug23/grp-matlab-tan-gerine/assets/141986996/d9d24ed4-15d0-413e-9c46-c32eb926b9c8">

rough view of the letters and names that we decided on.

![PXL_20231107_024909489](https://github.com/sm2302-aug23/grp-matlab-tan-gerine/assets/141986996/6a7e4b30-3a8a-42c9-9ca1-50d2361b905b)

![PXL_20231107_024906063](https://github.com/sm2302-aug23/grp-matlab-tan-gerine/assets/141986996/59a85249-cf41-43cb-b0c5-edb618667329)

![PXL_20231107_024859651](https://github.com/sm2302-aug23/grp-matlab-tan-gerine/assets/141986996/df455aab-11bc-4675-bac7-441e68beae72)

---

## 2.Digital reconstruction

The code can be found in this repository, this is just a brief overview.

### Functions used

```
function nameplot(x, y, xx, yy)

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x, y, 'bo', 'MarkerFaceColor','b')

```
```
% Creating parametric t coordinates
function [t, tt] = tpar(x)

n = length(x);
t = 0:n-1; % Parametric coordinates
tt = 0:0.01:n-1; % tt for spline interpolation
end
```

## Now to plot the names in matlab and the result are:

**it looks stretched due to the graphs being on top of each other, it looks better if you run it one by one**
![Screenshot 2023-11-07 102027](https://github.com/sm2302-aug23/grp-matlab-tan-gerine/assets/141986996/a37146d2-687e-4c7e-ae0e-23e529afd0eb)

-----------------------------------
## 3. Word combination & function scripting

The function `plotWord.m` works but we didn't manage to finish creating the data for it. 

As of now only these letters work:

|**A B C D H I L M N Q**|

-----------------------------------
[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/i8q0vJZ5)
# Group Assignment (MATLAB)

This repository contains instructions for SM-2302 MATLAB group assignment.

The assignment is due on **Tuesday, 7 November 2023 at 12:00 PM**.

Understand the sample code given in the [`Group2-2023.pdf`](Group2-2023.pdf) document, and read the instructions carefully.

Read [`notes.md`](notes.md) for some advice on good MATLAB programming style and marking scheme.
