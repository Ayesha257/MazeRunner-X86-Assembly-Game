# MazeRunner - x86 Assembly Maze Game

![Assembly](https://img.shields.io/badge/Language-x86%20Assembly-blue)
![Platform](https://img.shields.io/badge/Platform-DOSBox-green)
![Project](https://img.shields.io/badge/Type-Game%20Development-orange)

MazeRunner is a maze-based game developed completely in **x86 Assembly Language**.

The game runs in a DOS-style environment and uses direct video memory manipulation, keyboard interrupts, timer interrupts, and low-level rendering techniques to create an interactive gaming experience.

This project demonstrates how a complete game can be implemented at the hardware level without using high-level graphics libraries.

---

## Project Overview

The objective of MazeRunner is to guide the player through a maze, collect gifts, avoid enemies, and reach the ending point before the timer expires or the player loses all lives.

The project demonstrates various low-level programming concepts including:

- Direct video memory access
- BIOS and DOS interrupts
- Keyboard input handling
- Timer interrupt handling
- Collision detection
- Game loop design
- Score and lives management

---

# Features

## Gameplay

- Maze-based gameplay
- Multiple maze layouts
- Real-time player movement
- Keyboard-controlled navigation
- Start screen and instructions

## Maze System

- Wall collision detection
- Invalid move handling
- Maze generation using predefined arrays
- Ending point detection

## Enemy System

- Enemy placement inside maze
- Player-enemy collision detection
- Life reduction mechanism

## Collectibles

- Gift collection system
- Score calculation
- Reward points after collecting items

## Player System

- Lives tracking
- Game win and loss conditions
- Dynamic game state updates

## Timer System

- Real-time timer implementation
- Timer interrupt usage
- Time limit detection
- Automatic game over when time expires

---

# Controls

| Key         | Action     |
| ----------- | ---------- |
| Left Arrow  | Move Left  |
| Right Arrow | Move Right |
| Up Arrow    | Move Up    |
| Down Arrow  | Move Down  |
| Space       | Start Game |

---

# Game Symbols

The maze uses numeric values to represent different objects:

0 = Empty Space
1 = Wall
-1 = Enemy
2 = Gift / Collectible
5 = Ending Point
9 = Player

---

# Scoring System

The scoring mechanism includes:

- Collecting gifts increases the score
- Reaching the ending point provides bonus points
- Special mode activates after collecting enough gifts

---

# Lives System

The player starts with a limited number of lives.

Game rules:

Enemy Collision → Lives Decrease

Lives = 0 → Game Over

---

# Technical Implementation

## Programming Language

- x86 Assembly Language

## Concepts Used

### Video Rendering

The game renders graphics directly using video memory:

0xB800

### Keyboard Input

Keyboard handling is implemented using:

INT 16H

### Timer Handling

Gameplay timing is managed using timer interrupt logic.

### Memory and Game Logic

Implementation includes:

- Maze representation using arrays
- Manual screen rendering
- Collision checking algorithms
- Player movement validation
- Score calculation
- Lives management
- Game state control

---

# Project Structure

MazeRunner/
│
├── MazeRunner.asm
│
└── README.md

---

# How To Run

## Requirements

Install:

- DOSBox
- NASM / MASM / TASM compatible assembler

## Compile

Using NASM:

```bash
nasm -f bin MazeRunner.asm -o MazeRunner.com
Run

Open DOSBox and execute:

MazeRunner.com
Learning Outcomes

This project provided practical experience with:

Low-level programming
Assembly language development
Hardware-level interaction
Interrupt handling
Memory-mapped video output
Game development fundamentals
Real-time input processing
Algorithm implementation
Future Improvements

Possible improvements:

Additional maze levels
Moving enemies
Sound effects
Difficulty levels
Pause and resume functionality
High-score storage
Improved graphics
Better animations
Authors

Developed by:

Ayesha Amer
Rida Fatima Tanvir
```
