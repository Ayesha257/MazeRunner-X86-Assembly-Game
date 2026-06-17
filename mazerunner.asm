[org 0x0100]
jmp start

 maze1  db 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1     ;0 for space
       db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1      ;1 for wall
       db 1, 0, 1, 0, 1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1, 0, 1    ;-1 for enemy
       db 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1      ;2 for gifts
       db 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, -1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1     ;9 for player
       db 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, -1, 0, 1, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0,- 1, 1, 1, 0, 0, 1, 1, 0, 1
       db 1, 0, 1, 0,- 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0,2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 1, 1, 1, 1, -1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 5

maze2 db 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 0, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 1, 0, 1
       db 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1
       db 1, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, -1, 1, 0, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 1, 1, 1, 1, -1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5
 
 maze3 db 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 0, 1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 1, 0, 1
       db 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1
       db 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, -1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0
       db 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, -1, 1, 0, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
       db 1, 0, 1, 1, 1, 1, 1, -1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5
newline db 13,10,'$'
rows: db 20
columns: db 30
rand: dw 0
start_message: db 'Press Space to start'
length1: dw 20
error_message: db 'Invalid key. Press Space to start'
length2: dw 33
message3: db 'Invalid key'
length4: dw 11
message4: db 'Invalid move'
length5: dw 12
score: dw 0
sad_message: db 'Sorry! You lost the game'
length6: dw 24
win_message: db 'Congratulations! You won'
length7: dw 24
score_msg: db 'Score: '
length8: dw 7
timer_msg: db 'Time: '
length9: dw 6
tickcount: dw 0            
seconds: dw 0
current_row: dw 0
current_column: dw 0
check_flag: db 0
time_exceeded: db ' Sorry! You exceeded time'
length10: dw 25
original_timer_offset: dw 0
original_timer_segment: dw 0
candy_count: dw 0
superman_mode: db 'Candy count = 3 so superman mode activated!!!!'
length11: dw 46
already_displayed: dw 0
lives_msg: db 'Lives: '
length12: dw 7
lives: dw 4
name1: db 'Rida Fatima Tanvir'
length13: dw 18
name2: db 'Ayesha Amer'
length14: dw 11
start_msg: db '**********Press Space to start**********'
length15: dw 40

clrscr:
push ax
push es
push di
push cx

mov ax,0xb800
mov es,ax
xor di,di
mov cx,2000
mov ax,0x0720

cld
rep stosw

pop cx
pop di
pop es
pop ax
ret

clrscr2:
push ax
push es
push di
push cx

mov ax,0xb800
mov es,ax
xor di,di
mov cx,2000
mov ax,0x0020

cld
rep stosw

pop cx
pop di
pop es
pop ax
ret

GenRandNum:
push ax
push dx

MOV AH, 00h ; interrupts to get system time
INT 1AH ; CX:DX now hold number of clock ticks since midnight
mov ax,dx
mov cx,10
xor dx,dx
div cx

mov [rand],dl

pop dx
pop ax
ret

maze_construction:
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push si
push di

mov bx,[bp+4]
mov ax,0xb800
mov es,ax
xor di,di
mov cx,0
mov si,0
mov dx,0

row_loop:

column_loop:
mov al,[bx+si]
inc si
cmp al,1
je draw_wall
cmp al,0
je draw_space
cmp al, 2
je draw_gifts
cmp al,-1
je draw_enemy
cmp al,9
je draw_player
cmp al, 5
je draw_stop

label1:
inc dl
cmp dl,[columns]
je change
jnz column_loop

label2:
inc cl
cmp cl,[rows]
je exit
jnz update

change:
mov dl,0
jmp label2

update:
mov al,80
mul cl
shl ax,1
mov di,ax
jmp row_loop

draw_wall:
mov al,0x20
mov ah,0xd5
mov word[es:di],ax
add di,2
jmp label1

draw_space:
mov al,0X20
mov ah,0x07
mov word[es:di],ax
add di,2
jmp label1

draw_gifts:
mov al, 11
mov ah,0x09
mov word[es:di],ax
add di, 2
jmp label1

draw_enemy:
mov al, 0x01
mov ah,0x0A
mov word[es:di],ax
add di, 2
jmp label1

draw_player:
mov al, 0x0F
mov ah,0x0A
mov word[es:di],ax
add di, 2
jmp label1

draw_stop:
mov al,0x20
mov ah,0x77
mov word[es:di],ax
add di,2
jmp label1

exit:
pop di
pop si
pop dx
pop cx
pop bx
pop ax
mov sp,bp
pop bp
ret

start:
call clrscr2

mov ax, 0xB800          
mov es, ax                
mov al, ' '            
mov ah, 0xFF    
mov di, 0  
     
l1:          
mov word [es:di], ax    
add di,2
cmp di , 8
jnz l1
   
l2:
mov word [es:di], ax    
add di,160
cmp di , 648
jnz l2
 
l3:          
mov word [es:di], ax    
sub di,2
cmp di , 640
jnz l3
 
l4:          
mov word [es:di], ax    
add di,160
cmp di , 1280
jnz l4
 
l5:          
mov word [es:di], ax    
add di,2
cmp di , 1288
jnz l5
 
l6:          
mov word [es:di], ax    
add di,160
cmp di , 1928
jnz l6
 
l7:          
mov word [es:di], ax    
sub di,2
cmp di , 1920
jnz l7
   
l8:
mov word [es:di], ax    
add di,160
cmp di , 2560
jnz l8
 
l9:          
mov word [es:di], ax    
add di,2
cmp di , 2568
jnz l9
 
l10:          
mov word [es:di], ax    
add di,160
cmp di , 3208
jnz l10  
 
l11:          
mov word [es:di], ax    
sub di,2
cmp di , 3200
jnz l11
 
l12:          
mov word [es:di], ax    
add di,160
cmp di , 3840
jnz l12
 
l13:          
mov word [es:di], ax    
add di,2
cmp di , 3850
jnz l13
 
 ;second side
 mov di,150
l14:          
mov word [es:di], ax    
add di,2
cmp di , 158
jnz l14
   
 
l15:
mov word [es:di], ax    
add di,160
cmp di , 798
jnz l15
 
l16:          
mov word [es:di], ax    
sub di,2
cmp di , 790
jnz l16
 
l17:          
mov word [es:di], ax    
add di,160
cmp di , 1430
jnz l17
 
l18:          
mov word [es:di], ax    
add di,2
cmp di , 1438
jnz l18
 
l19:          
mov word [es:di], ax    
add di,160
cmp di , 2078
jnz l19
 
l20:          
mov word [es:di], ax    
sub di,2
cmp di , 2070
jnz l20
   
l21:
mov word [es:di], ax    
add di,160
cmp di , 2710
jnz l21
 
l22:          
mov word [es:di], ax    
add di,2
cmp di , 2718
jnz l22
 
l23:          
mov word [es:di], ax    
add di,160
cmp di , 3358
jnz l23
 
l24:          
mov word [es:di], ax    
sub di,2
cmp di , 3350
jnz l24
 
l25:          
mov word [es:di], ax    
add di,160
cmp di , 3990
jnz l25
 
l26:          
mov word [es:di], ax    
add di,2
cmp di , 3998
jnz l26

mov di,3998
mov word [es:di], ax
 
;our name
mov ah,0xFF
mov di,526

la1:          
mov word [es:di], ax    
add di,2
cmp di , 530
jnz la1
 
la2:          
mov word [es:di], ax    
add di,160
cmp di , 1490
jnz la2

mov di,526
la3:        
mov word [es:di], ax    
add di,160
cmp di , 1486
jnz la3

mov di,1006
la4:          
mov word [es:di], ax    
add di,2
cmp di , 1010
jnz la4
 
mov di,534
ly1:          
mov word [es:di], ax    
add di,160
cmp di , 1014
jnz ly1
 
ly3:          
mov word [es:di], ax    
add di,2
cmp di , 1018
jnz ly3
 
mov di,538
ly2:          
mov word [es:di], ax    
add di,160
cmp di , 1338
jnz ly2

ly4:          
mov word [es:di], ax    
sub di,2
cmp di , 1332
jnz ly4

mov di,542
le1:          
mov word [es:di], ax    
add di,160
cmp di , 1342
jnz le1
 
mov di,542
le2:          
mov word [es:di], ax    
add di,2
cmp di , 550
jnz le2
 
mov di,862
le3:          
mov word [es:di], ax    
add di,2
cmp di , 870
jnz le3

mov di,1342
le4:          
mov word [es:di], ax    
add di,2
cmp di , 1350
jnz le4

mov di, 552
ld1:        
mov word [es:di], ax    
add di,2
cmp di , 558
jnz ld1

mov di, 552
ld2:        
mov word [es:di], ax    
add di,160
cmp di , 1352
jnz ld2
 
ld3:        
mov word [es:di], ax    
add di,2
cmp di , 1358
jnz ld3

mov di,718
ld4:        
mov word [es:di], ax    
add di,160
cmp di , 1358
jnz ld4

mov di,562
laa1:        
mov word [es:di], ax    
add di,160
cmp di , 1522
jnz laa1
 
mov di,562
laa2:        
mov word [es:di], ax    
add di,2
cmp di , 566
jnz laa2
 
laa3:        
mov word [es:di], ax    
add di,160
cmp di , 1526
jnz laa3

mov di,1042
laa4:        
mov word [es:di], ax    
add di,2
cmp di , 1046
jnz laa4


;writing maze
mov di,1832
lm1:        
mov word [es:di], ax    
add di,160
cmp di , 2632
jnz lm1

mov di,1832
lm2:        
mov word [es:di], ax    
add di,2
cmp di , 1834
jnz lm2

mov di,1996
mov word [es:di], ax  
mov di,1838
mov word [es:di], ax
mov di,1834
mov word [es:di], ax

mov di,1840
lm3:        
mov word [es:di], ax    
add di,160
cmp di , 2640
jnz lm3

mov di,1844
laaa1:        
mov word [es:di], ax    
add di,160
cmp di , 2644
jnz laaa1

mov di,1844
laaa4:        
mov word [es:di], ax    
add di,2
cmp di , 1848
jnz laaa4

laaa3:        
mov word [es:di], ax    
add di,160
cmp di , 2648
jnz laaa3

mov di,2324
laaa2:        
mov word [es:di], ax    
add di,2
cmp di , 2328
jnz laaa2
 
mov di,1852
lz1:
mov word [es:di], ax    
add di,2
cmp di , 1862
jnz lz1  

mov di,2018
mov word [es:di], ax  
mov di,2176
mov word [es:di], ax
mov di,2332
mov word [es:di], ax    
mov di,2334
mov word [es:di], ax  
mov di,2020
mov word [es:di], ax
 
mov di,2492
lz2:
mov word [es:di], ax    
add di,2
cmp di , 2502
jnz lz2

mov di,1864
lee1:
mov word [es:di], ax    
add di,160
cmp di , 2504
jnz lee1

mov di,1864
lee2:
mov word [es:di], ax    
add di,2
cmp di , 1870
jnz lee2

mov di,2184
lee3:
mov word [es:di], ax    
add di,2
cmp di , 2190
jnz lee3

mov di,2504
lee4:
mov word [es:di], ax    
add di,2
cmp di , 2510
jnz lee4
 
 call delay

 mov ah,0x13
;mov al, 1
mov bh,0
mov bl,0xDF
mov dx, 0x1160
mov cx, [length15]
push cs
pop es
mov bp,start_msg
int 0x10

call delay
mov ah,0x13
;mov al, 1
mov bh,0
mov bl,0xDF
mov dx, 0x1262
mov cx, [length13]
push cs
pop es
mov bp,name1
int 0x10

call delay
mov ah,0x13
;mov al, 1
mov bh,0
mov bl,0xDF
mov dx, 0x1279
mov cx, [length14]
push cs
pop es
mov bp,name2
int 0x10

  mov ah, 0x00            ; Wait for key press
  int 0x16                ; Keyboard interrupt

call clrscr

;-------------------if 0,1,2,3 maze1 will be made----------------
;-------------------if 4,5,6 maze2 will be made------------------
;-------------------if 7,8,9 maze3 will be made------------------
call GenRandNum
cmp byte[rand],0
jne next1
push maze1
jmp call_construction

next1:
cmp byte[rand],1
jne next2
push maze1
jmp call_construction

next2:
cmp byte[rand],2
jne next3
push maze1
jmp call_construction

next3:
cmp byte[rand],3
jne next4
push maze1
jmp call_construction

next4:
cmp byte[rand],4
jne next5
push maze2
jmp call_construction

next5:
cmp byte[rand],5
jne next6
push maze2
jmp call_construction

next6:
cmp byte[rand],6
jne next7
push maze2
jmp call_construction

next7:
cmp byte[rand],7
jne next8
push maze3
jmp call_construction

next8:
cmp byte[rand],8
jne next9
push maze3
jmp call_construction

next9:
cmp byte[rand],9
push maze3
jmp call_construction

call_construction:
call maze_construction

mov ah,0x13
;mov al, 1
mov bh,0
mov bl,7
mov dx, 0x0380
mov cx, [length8]
push cs
pop es
mov bp,score_msg
int 0x10

mov ah,0x13
;mov al, 1
mov bh,0
mov bl,7
mov dx, 0x0480
mov cx, [length9]
push cs
pop es
mov bp,timer_msg
int 0x10

mov ah,0x13
;mov al, 1
mov bh,0
mov bl,7
mov dx, 0x0580
mov cx, [length12]
push cs
pop es
mov bp,lives_msg
int 0x10
call print_lives



check_loop:
mov ah,0x0
int 0x16

 call delay
 call clr_space

cmp al, 0x20
je start_game_check
mov ah,0x13
;mov al, 1
mov bh,0
mov bl,7
mov dx, 0x1600
mov cx, [length2]
push cs
pop es
call delay
mov bp,error_message
int 0x10
jmp check_loop


start_game_check:
call hook
call start_game


mov ax,0x4c00
int 0x21


delay:
push cx
mov cx, 30 ; change the values to increase delay time
delay_loop1:
push cx
mov cx, 0xFFFF
delay_loop2:
loop delay_loop2
pop cx
loop delay_loop1
pop cx
ret


;--------------------MAIN GAME LOOP-------------------
start_game:
push di
push si
mov di,0
mov si,0
mov ax,0xb800
mov es,ax


game_loop1:
mov ah,00
int 0x16

cmp ah, 0x4B
je move_left

cmp ah, 0x4D
je move_right

cmp ah, 0x48
je near move_up

cmp ah, 0x50
je near move_down

mov ah,0x13
mov al, 1
mov bh,0
mov bl,7
mov dx, 0x1600
mov cx, [length4]
push cs
pop es
mov bp,message3
int 0x10

 call delay
 call clr_space

game_label1:
jmp game_loop1

;---------------move left--------------
move_left:
    mov si, di  
    cmp di,0
    je near cant_move_left1
    cmp di,160
    je near cant_move_left1
    sub di, 2            
    ;cmp di, 0            
    ;jb near cant_move_left
    ;cmp di,158
    ;jb near cant_move_left
    ;call validate_left
    ;cmp word[check_flag],1
    ;je near cant_move_left
    dec word[current_column]
    cmp word [es:di], 0xd520
    je near cant_move_left
    cmp word[es:di],0x090B
    je near add_score
    cmp word[es:di],0x0A01
    ;je near end_game
    je call_print_lives1
    cmp word[es:di],0x7720
    je near win
    mov word [es:di], 0x0A0F
    mov word [es:si], 0x0720
    jmp game_label1

    call_print_lives1:
    call print_lives
    add di,2
    jmp game_label1


;---------------move right--------------
move_right:
    mov si, di          
    add di, 2            
    cmp di, 3260        
    jae near cant_move_right
    cmp di, 860
    je near cant_move_right
    cmp di, 1020
    je near cant_move_right
    cmp di, 1180
    je near cant_move_right
    call validate_right
    cmp word[check_flag],1
    je near cant_move_right
    inc word[current_column]
    cmp word [es:di], 0xd520
    je near cant_move_right
    cmp word[es:di],0x090B
    je near add_score
    cmp word[es:di],0x0A01
    je call_print_lives2
    cmp word[es:di],0x7720
    je near win
    mov word [es:di], 0x0A0F
    mov word [es:si], 0x0720
    jmp game_label1

    call_print_lives2:
    call print_lives
    sub di,2
    jmp game_label1


;---------------move up--------------
move_up:
    mov si, di
    cmp di, 0
    je near cant_move_up1
    sub di, 160          
    ;cmp di, 0            
    ;jb near cant_move_up  
    ;cmp di, -160            
    ;jb near cant_move_up  
    ;call validate_up
    ;cmp word[check_flag],1
    ;je near cant_move_up
    dec word[current_row]
    cmp word [es:di], 0xd520
    je near cant_move_up
    cmp word[es:di],0x090B
    je add_score
    cmp word[es:di],0x0A01
    je call_print_lives3
    cmp word[es:di],0x7720
    je near win
    mov word [es:di], 0x0A0F
    mov word [es:si], 0x0720
    jmp game_label1

    call_print_lives3:
    call print_lives
    add di,160
    jmp game_label1

;---------------move down--------------
move_down:
    mov si, di          
    add di, 160          
    cmp di, 3260        
    ja near cant_move_down
    call validate_down
    cmp word[check_flag],1
    je near cant_move_down
    inc word[current_row]
    cmp word [es:di], 0xd520
    je near cant_move_down
    cmp word[es:di],0x090B
    je add_score
    cmp word[es:di],0x0A01
    je call_print_lives4
    cmp word[es:di],0x7720
    je near win
    mov word [es:di], 0x0A0F
    mov word [es:si], 0x0720
    jmp game_label1

    call_print_lives4:
    call print_lives
    sub di,160
    jmp game_label1

    ;-----------------add score------------
    add_score:
    inc word[candy_count]
    cmp word[candy_count],3
    ja superman_mode1
    add word[score],100
    jmp add_score_label

    superman_mode1:
    add word[score],500
    mov word [es:di], 0x0A0F
    mov word [es:si], 0x0720
    cmp word[already_displayed],0
    jne print_score_label2
     mov ah, 0x13
    ;mov al, 1
    mov bh, 0
    mov bl, 7
    mov dx, 0x0670
    mov cx, [length11]
    push cs
    pop es
    mov bp, superman_mode
    int 0x10
    mov word[already_displayed],1
    jmp print_score_label2

    add_score_label:
    mov word [es:di], 0x0A0F
    mov word [es:si], 0x0720

    print_score_label2:
    call print_score
    jmp game_label1


    cant_move_down:
    sub di, 160          
    call invalid_move_message
    jmp game_label1

    cant_move_left:
    add di, 2            
    call invalid_move_message
    jmp game_label1

    cant_move_left1:          
    call invalid_move_message
    jmp game_label1

    cant_move_up:
    add di, 160          
    call invalid_move_message
    jmp game_label1

    cant_move_up1:        
    call invalid_move_message
    jmp game_label1

    cant_move_right:
    sub di, 2            
    call invalid_move_message
    jmp game_label1

    exit1:
    ret

    win:
     mov word[es:di],0x0A15
    mov word[es:di-2],0x0720
    add word[score],1000
    call print_score
    ;unhook
    mov ax,0
    mov es,ax
    cli
    mov ax,[original_timer_offset]
    mov [es:8*4],ax
    mov ax,[original_timer_segment]
    mov [es:8*4+2],ax
    sti

    ;mov word[es:di],0x0A15
    ;mov word[es:di-2],0x0720
    ;add word[score],1000
    ;call print_score
    mov ah, 0x13
    mov al, 1
    mov bh, 0
    mov bl, 7
    mov dx, 0x1600
    mov cx, [length7]
    push cs
    pop es
    call delay
    mov bp, win_message
    int 0x10
   
    mov ax,0x4c00
    int 0x21


    end_game:
     ;unhook
    mov ax,0
    mov es,ax
    cli
    mov ax,[original_timer_offset]
    mov [es:8*4],ax
    mov ax,[original_timer_segment]
    mov [es:8*4+2],ax
    sti

    mov ah, 0x13
    mov al, 1
    mov bh, 0
    mov bl, 7
    mov dx, 0x1600
    mov cx, [length6]
    push cs
    pop es
    call delay
    mov bp, sad_message
    int 0x10
   
    mov ax,0x4c00
    int 0x21


;---------------invalid move message--------------
invalid_move_message:
    push di
    push si

    mov ah, 0x13
    ;mov al, 1
    mov bh, 0
    mov bl, 7
    mov dx, 0x1600
    mov cx, [length5]
    push cs
    pop es
    mov bp, message4
    int 0x10

    call delay
    call clr_space

    pop si
    pop di
    ret
;----------------validate move-------------------
validate_left:
cmp word[current_column-1],0
je call_invalid_message
mov word[check_flag],0
jmp exit_validate

;cmp word[current_column-1],20
;jae call_invalid_message
;mov word[check_flag],0
;jmp exit_validate

call_invalid_message:
call invalid_move_message
mov word[check_flag],1

exit_validate:
ret

validate_right:
push ax
push dx
push bx
push di

;cmp word[current_column+1],0
;jbe call_invalid_message
;mov word[check_flag],0

;mov dx,0
;mov ax,di
;mov bx,30
;div bx
;cmp dx, 0
;je call_invalid_message1
cmp word[current_column+1],30
je call_invalid_message1
mov word[check_flag],0
jmp exit_validate1


call_invalid_message1:
call invalid_move_message
mov word[check_flag],1

exit_validate1:
pop di
pop bx
pop dx
pop ax
ret

validate_up:
cmp word[current_row-1],0
je call_invalid_message2
mov word[check_flag],0
jmp exit_validate2

call_invalid_message2:
call invalid_move_message
mov word[check_flag],1

exit_validate2:
ret

validate_down:
cmp word[current_row+1],19
je call_invalid_message3
cmp di,3100
ja call_invalid_message3
mov word[check_flag],0
jmp exit_validate3

call_invalid_message3:
call invalid_move_message
mov word[check_flag],1

exit_validate3:
ret


;------------print score---------------
print_score:
push si
mov ax,0xb800
mov es,ax
mov ax,[score]
mov bx,10
mov cx,0

nextdigit:
mov dx,0
div bx
add dl,0x30
push dx
inc cx
cmp ax,0
jnz nextdigit

mov si,750

nextpos:
pop dx
mov dh,0x07
mov word[es:si],dx
add si,2
loop nextpos

pop si
ret

;-----------------print lives------------------
print_lives:
push si

sub word[lives],1
mov ax,0xb800
mov es,ax
mov ax,[lives]
mov bx,10
mov cx,0

nextdigit2:
mov dx,0
div bx
add dl,0x30
push dx
inc cx
cmp ax,0
jnz nextdigit2

mov si,1070

nextpos2:
pop dx
mov dh,0x07
mov word[es:si],dx
add si,2
loop nextpos2

cmp word[lives],0
je call_end_game1
jmp lives_end

call_end_game1:
call end_game

lives_end:
pop si
ret

;------------------clear line-------------------
clr_space:
push si
push ax
push cx

mov ax,0xb800
mov es,ax
mov cx,35
mov ax,0x0720
mov si,0xDC0

clear_loop1:
mov word[es:si],ax
add si,2
loop clear_loop1

pop cx
pop ax
pop si
ret

;------------------timer-----------------------
print_time_msg:
push ax
push bx
push cx
push dx

 mov ah,0x13
;mov al, 1
mov bh,0
mov bl,7
mov dx, 0x0480
mov cx, [length9]
push cs
pop es
mov bp,timer_msg
int 0x10

pop dx
pop cx
pop bx
pop ax
ret

debounce:
    push cx
delay1:
    mov cx, 6000H            ; Delay loop count  
L1:
    loop L1
    pop cx
    ret
 
printnum:
    push bp
    mov bp, sp
    push es
    push ax
    push bx
    push cx
    push dx
    push di

    mov ax, 0xb800          
    mov es, ax
    mov ax, [bp+4]          
    mov bx, 10              
    mov cx, 0                

nextdigit1:
    mov dx, 0                
    div bx                  
    add dl, 0x30            
    push dx                
    inc cx                  
    cmp ax, 0                
    jnz nextdigit1          

    mov di, 910             ; Start position (top-right corner)

nextpos1:
    pop dx                  
    mov dh, 0x07            
    mov [es:di], dx        
    add di, 2                
    loop nextpos1              

    pop di
    pop dx
    pop cx
    pop bx
    pop ax
    pop es
    pop bp
    ret 2
 
timer:
    push ax
    push cx
    push dx
 
    call debounce
 
    inc word [cs:tickcount]
    cmp word [cs:tickcount], 18   ; Assuming ~18 ticks = 1 second (based on ~18.2 Hz timer)
    jb skip_increment            
 
    mov word [cs:tickcount], 0
    inc word [cs:seconds]
    cmp word [cs:seconds], 61     ; Check if seconds reached 60
    jb print_time                
    je skip_increment
jmp timer

print_time:
    ; Print seconds
    push word [cs:seconds]
    call printnum

skip_increment:
    mov al, 0x20
    out 0x20, al
    cmp word[cs:seconds],61
    je call_time_exceeded_message
    jnz exit_timer

    call_time_exceeded_message:
    call time_exceeded_message

    exit_timer:
    pop dx
    pop cx
    pop ax
    iret                        


hook:
;call print_time_msg
  xor ax, ax
  mov es, ax  
  mov ax,[es:8*4]
  mov [original_timer_offset],ax
   mov ax,[es:8*4+2]
  mov [original_timer_segment],ax
  cli                          
  mov word [es:8*4], timer      
  mov [es:8*4 + 2], cs          
  sti  
  ret

    ; Terminate and stay resident
    ;mov dx, start
    ;add dx, 15
    ;mov cl, 4
    ;shr dx, cl                    
    ;mov ax, 0x3100                ; DOS terminate and stay resident
    ;int 0x21

time_exceeded_message:
push ax
push bx
push cx
push dx

 mov ah,0x13
;mov al, 1
mov bh,0
mov bl,7
mov dx, 0x1600
mov cx, [length10]
push cs
pop es
mov bp,time_exceeded
int 0x10

pop dx
pop cx
pop bx
pop ax

mov ax,0x4c00
int 0x21
ret
