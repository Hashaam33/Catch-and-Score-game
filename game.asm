[org 0x0100]
	
	jmp start
	
; Iron block: white to light-grey gradient
iron5:
    dw 0x7FDB, 0x7FDB, 0x7FB2
    dw 0x7FDB, 0x7FB2, 0x7FB1
    dw 0x7FB2, 0x7FB1, 0x7FB0

; Gold block: bright yellow with a darker bottom-right edge
gold10:
    dw 0x6EDB, 0x6EDB, 0x6EDB
    dw 0x6EDB, 0x6EB2, 0x6EB1
    dw 0x6EB2, 0x6EB1, 0x6EB0

; Diamond block: aqua with a pale sparkle in the centre
diamond15:
    dw 0x3BDB, 0x3BDB, 0x3BDB
    dw 0x3BDB, 0x3FB1, 0x3BDB
    dw 0x3BB2, 0x3BB1, 0x3BB0

; Magma block: dark red/brown with glowing yellow cracks
magmanegative:
    dw 0x46B1, 0x4EB1, 0x46B2
    dw 0x4EB1, 0x46B2, 0x4EB0
    dw 0x46B2, 0x4EB0, 0x46B1

; Iron bucket: grey rim, dark opening, tapered body
bucket:
    dw 0x07DB, 0x08DB, 0x07DB
    dw 0x79DD, 0x07DB, 0x79DE
    dw 0x2ADB, 0x08DB, 0x2ADB
		   
tntkill:
	dw 0x4020, 0x4020, 0x4020
	dw 0x7854, 0x784e, 0x7854
	dw 0x4020, 0x4020, 0x4020
			
cloud1:
    dw 0x19db, 0x7FDB, 0x7FDB, 0x7FDB, 0x19db
    dw 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB
    dw 0x19db, 0x7FDB, 0x7FDB, 0x7FDB, 0x19db
	
cloud2:
    dw 0x19db, 0x19db, 0x7FDB, 0x7FDB, 0x7FDB, 0x19db, 0x19db, 0x19db, 0x19db
    dw 0x19db, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x19db, 0x19db
    dw 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB
    dw 0x19db, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x7FDB, 0x19db
	
grass:
    dw 0x2Adb
	
mud:
    dw 0x6E20
	
leaves:
    dw 0x2A20, 0x2E20, 0x2A20
    dw 0x2E20, 0x2A20, 0x2E20
    dw 0x2A20, 0x2E20, 0x2A20

wood:
    dw 0x6720, 0x6E20, 0x6720
    dw 0x6E20, 0x6720, 0x6E20
    dw 0x6720, 0x6E20, 0x6720
	
sun:
	dw 0x6edb, 0x6edb, 0x6edb
	dw 0x6edb, 0x6edb, 0x6edb
	dw 0x6edb, 0x6edb, 0x6edb 
	
score:      dw 0
starttick:  dw 0
lastsec:    dw 0xFFFF

lbl_score:  db "SCORE: ", 0
lbl_time:   db "TIME: ", 0
lbl_gameover: db "GAME OVER", 0
lbl_final:    db "FINAL SCORE: ", 0
lbl_exitkey:  db "PRESS ANY KEY TO EXIT", 0

numbuf:     db "0000", 0
timebuf:    db "0:00", 0

psel:       db 0
pausetick:  dw 0
lbl_paused: db "PAUSED", 0

; RESUME button strings (unselected must be directly followed by selected,
; because drawbutton does "add si, 31" to switch to the selected one)
mid_resu:	db 0xB3
	times 11 db ' '
	db "RESUME"
	times 11 db ' '
	db 0xB3, 0
mid_resus:	db 0xBA
	times 11 db ' '
	db "RESUME"
	times 11 db ' '
	db 0xBA, 0
	

sel:	db 0			

lr0:	db "#  # ", " ##  ", "#  # ", " ### ", "     ", " ##  ", " ##  ", " #  ", 0
lr1:	db "#  # ", "   # ", "#  # ", "#    ", "###  ", "   # ", "#    ", "### ", 0
lr2:	db "#### ", " ### ", " ##  ", "#    ", "#  # ", " ### ", "###  ", " #  ", 0
lr3:	db "#  # ", "#  # ", "#  # ", "#    ", "#    ", "#  # ", "#    ", " #  ", 0
lr4:	db "#  # ", " ### ", "#  # ", " ### ", "#    ", " ### ", "#    ", "  ##", 0

logorows: dw lr0, lr1, lr2, lr3, lr4
logoattr: db 0x0F, 0x07, 0x07, 0x07, 0x08	;

tagline: db " Secure the catch, seal the score. ", 0
hint:	 db "UP/DOWN: CHOOSE   ENTER: SELECT", 0

arrow_l: db 0x10, 0
arrow_r: db 0x11, 0

bu_top_u: db 0xDA
	  times 28 db 0xC4
	  db 0xBF, 0
bu_bot_u: db 0xC0
	  times 28 db 0xC4
	  db 0xD9, 0
bu_top_s: db 0xC9
	  times 28 db 0xCD
	  db 0xBB, 0
bu_bot_s: db 0xC8
	  times 28 db 0xCD
	  db 0xBC, 0

mid0u:	db 0xB3
	times 9 db ' '
	db "PLAY GAME"
	times 10 db ' '
	db 0xB3, 0
mid0s:	db 0xBA
	times 9 db ' '
	db "PLAY GAME"
	times 10 db ' '
	db 0xBA, 0

mid1u:	db 0xB3
	times 8 db ' '
	db "HOW TO PLAY"
	times 9 db ' '
	db 0xB3, 0
mid1s:	db 0xBA
	times 8 db ' '
	db "HOW TO PLAY"
	times 9 db ' '
	db 0xBA, 0

mid2u:	db 0xB3
	times 12 db ' '
	db "EXIT"
	times 12 db ' '
	db 0xB3, 0
mid2s:	db 0xBA
	times 12 db ' '
	db "EXIT"
	times 12 db ' '
	db 0xBA, 0

h0:	db "HOW TO PLAY", 0
h1:	db "LEFT / RIGHT : MOVE THE BUCKET", 0
h2:	db "CATCH THE FALLING ORES:", 0
h3:	db "  IRON +5  GOLD +10  DIAMOND +15", 0
h4:	db "AVOID MAGMA : LOSE POINTS", 0
h5:	db "TNT : GAME OVER!", 0
h6:	db "ESC : QUIT", 0
h7:	db "PRESS ANY KEY TO GO BACK", 0
	
	
start:
	
	mov ah, 1
	mov cx, 0x2000
	int 0x10
	
	call titlescreen		
	
	

	
	mov ah, 1
	int 0x21
	jmp quit


quit:
	mov ax, 0x0003
	int 0x10
	mov ax, 0x4c00
	int 0x21 
	
	

clrscr:
	push ax
	push di
	push es
	push cx
	
	mov ax, 0xb800
	mov es, ax
	xor di, di
	mov cx, 2000
	
clrnext:
	mov word [es:di], 0x19db
	add di, 2
	loop clrnext
	
	pop cx
	pop es
	pop di
	pop ax
	
	ret


drawscene:
	call clrscr
	
	push mud
	push grass
	call printgrass
	
	push sun
	call drawson
	
	push cloud1
	call drawcloud1
	
	push cloud2
	call drawcloud2
	
	; Example call: canopy begins at row 5, column 10
	push leaves
	call draw_leaves

	; Trunk begins just below the three canopy rows: row 8, column 10
	push wood
	call draw_wood
	
	ret



printstr:
	push ax
	push bx
	push dx
	push si
	push di
	push es
	
	mov ax, 0xb800
	mov es, ax
	
	mov al, 80
	mul dh				; ax = row * 80
	mov dh, 0
	add ax, dx			; + col
	shl ax, 1
	mov di, ax
	
	mov ah, bl			; attribute
	cld
.next:
	lodsb
	cmp al, 0
	je .done
	stosw
	jmp .next
.done:
	pop es
	pop di
	pop si
	pop dx
	pop bx
	pop ax
	ret


printblock:
	push ax
	push bx
	push dx
	push si
	push di
	push es
	
	mov ax, 0xb800
	mov es, ax
	
	mov al, 80
	mul dh
	mov dh, 0
	add ax, dx
	shl ax, 1
	mov di, ax
	
	mov ah, bl
	cld
.next:
	lodsb
	cmp al, 0
	je .done
	cmp al, '#'
	jne .skip
	mov al, 0xDB
	stosw
	jmp .next
.skip:
	add di, 2
	jmp .next
.done:
	pop es
	pop di
	pop si
	pop dx
	pop bx
	pop ax
	ret


fillrect:
	push ax
	push bx
	push cx
	push dx
	push di
	push es
	
	mov ax, 0xb800
	mov es, ax
	
	mov al, 80
	mul dh
	mov dh, 0
	add ax, dx
	shl ax, 1
	mov di, ax
	
	mov al, ' '
	mov ah, bl
	mov bl, cl			
	mov dl, ch			
	cld
.row:
	mov cl, bl
	mov ch, 0
	push di
	rep stosw
	pop di
	add di, 160		
	dec dl
	jnz .row
	
	pop es
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	ret

drawlogo:
	push ax
	push bx
	push cx
	push dx
	push si

	mov cx, 5
	mov bx, 0
	mov dh, 3
	mov dl, 21
.shadow:
	mov si, [logorows + bx]
	push bx
	mov bl, 0x00			
	call printblock
	pop bx
	add bx, 2
	inc dh
	loop .shadow
	
	; ---- main letters ----
	mov cx, 5
	mov bx, 0
	mov dh, 2
	mov dl, 20
.main:
	mov si, [logorows + bx]
	push bx
	shr bx, 1
	mov bl, [logoattr + bx]		; attribute for this row
	call printblock
	pop bx
	add bx, 2
	inc dh
	loop .main
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret

drawtitle:
	push bx
	push dx
	push si
	
	call drawlogo
	
	mov bl, 0x1E			; yellow "splash text" on blue
	mov dh, 9
	mov dl, 22
	mov si, tagline
	call printstr
	
	mov bl, 0x6F			; white on mud
	mov dh, 24
	mov dl, 24
	mov si, hint
	call printstr
	
	pop si
	pop dx
	pop bx
	ret


drawbutton:
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	
	cmp cl, 0
	jne .selected
	
	mov ax, bu_top_u
	mov di, bu_bot_u
	mov bh, 0x70			; black on stone grey
	jmp .draw
	
.selected:
	mov ax, bu_top_s
	mov di, bu_bot_s
	mov bh, 0x2F			; white on grass green
	add si, 31			
	
.draw:
	; top edge
	mov bl, bh
	push si
	mov si, ax
	call printstr
	pop si
	
	; middle row
	inc dh
	mov bl, bh
	call printstr
	
	; arrows beside the label when selected
	cmp cl, 0
	je .nearrows
	mov bl, 0x2E			; yellow
	push si
	add dl, 2
	mov si, arrow_l
	call printstr
	add dl, 25
	mov si, arrow_r
	call printstr
	sub dl, 27
	pop si
.nearrows:
	
	; bottom edge
	inc dh
	mov bl, bh
	mov si, di
	call printstr
	
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret


drawmenu:
	push cx
	push dx
	push si
	
	mov dl, 25
	
	xor cl, cl
	cmp byte [sel], 0
	jne .b0
	inc cl
.b0:
	mov dh, 11
	mov si, mid0u
	call drawbutton
	
	xor cl, cl
	cmp byte [sel], 1
	jne .b1
	inc cl
.b1:
	mov dh, 15
	mov si, mid1u
	call drawbutton
	
	xor cl, cl
	cmp byte [sel], 2
	jne .b2
	inc cl
.b2:
	mov dh, 19
	mov si, mid2u
	call drawbutton
	
	pop si
	pop dx
	pop cx
	ret


titlescreen:
	call drawscene
	call drawtitle
.redraw:
	call drawmenu
.key:
	mov ah, 0
	int 0x16			
	cmp ah, 0x48			; up arrow
	je .up
	cmp ah, 0x50			; down arrow
	je .down
	cmp al, 13			; enter
	je .enter
	jmp .key
	
.up:
	cmp byte [sel], 0
	jne .updec
	mov byte [sel], 3		; wrap to bottom
.updec:
	dec byte [sel]
	jmp .redraw
	
.down:
	inc byte [sel]
	cmp byte [sel], 3
	jb .redraw
	mov byte [sel], 0	
	jmp .redraw
	
.enter:
	mov al, [sel]
	cmp al, 0
	je .play
	cmp al, 1
	je .how
	jmp quit			; exit
	
.play:

	call drawscene
	call draw_sprites
	call gameloop
	
	ret
	
.how:
	call howtoscreen
	jmp titlescreen



howtoscreen:
	push ax
	push bx
	push cx
	push dx
	push si
	
	call drawscene
	
	; panel behind the text
	mov dh, 4
	mov dl, 20
	mov ch, 15
	mov cl, 40
	mov bl, 0x1F
	call fillrect
	
	mov bl, 0x1E
	mov dh, 5
	mov dl, 34
	mov si, h0
	call printstr
	
	mov bl, 0x1F
	mov dl, 22
	
	mov dh, 7
	mov si, h1
	call printstr
	mov dh, 9
	mov si, h2
	call printstr
	mov dh, 10
	mov si, h3
	call printstr
	mov dh, 12
	mov si, h4
	call printstr
	mov dh, 13
	mov si, h5
	call printstr
	mov dh, 15
	mov si, h6
	call printstr
	
	mov bl, 0x1E
	mov dh, 17
	mov dl, 28
	mov si, h7
	call printstr
	
	mov ah, 0
	int 0x16			; wait for any key
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret
	
	
; ---------- game loop: 2 minute timer ----------
gameloop:
	mov word [score], 0
	mov word [lastsec], 0xFFFF
	
	mov ah, 0
	int 0x1A			; cx:dx = tick count
	mov [starttick], dx
	
	call drawscore
	
.loop:
	; non-blocking key check
	mov ah, 1
	int 0x16
	jz .nokey
	mov ah, 0
	int 0x16			; consume the key
	cmp al, 27			; ESC quits
	jne .nokey
	call pausegame
	; (LEFT/RIGHT bucket movement will go here later)
	
.nokey:
	mov ah, 0
	int 0x1A
	sub dx, [starttick]		; elapsed ticks
	mov ax, dx
	mov bx, 5
	mul bx				; ticks * 5
	mov bx, 91
	div bx				; / 91  ->  seconds (18.2 ticks/sec)
	
	cmp ax, 120
	jae .timeup
	
	cmp ax, [lastsec]		; only redraw when the second changes
	je .loop
	mov [lastsec], ax
	
	mov bx, 120
	sub bx, ax
	mov ax, bx			; ax = seconds remaining
	call drawtimer
	jmp .loop
	
.timeup:
	call gameoverscreen
	ret


; ---------- score: top-left ----------
drawscore:
	push ax
	push bx
	push dx
	push si
	
	mov bl, 0x1F			; white on blue (sky)
	mov dh, 0
	mov dl, 0
	mov si, lbl_score
	call printstr
	
	mov ax, [score]
	mov dh, 0
	mov dl, 7
	call printnum
	
	pop si
	pop dx
	pop bx
	pop ax
	ret


; ---------- timer: top-right (ax = seconds remaining) ----------
drawtimer:
	push ax
	push bx
	push dx
	push si
	
	mov bl, 60
	div bl				; al = minutes, ah = seconds
	add al, '0'
	mov [timebuf], al
	
	mov al, ah
	xor ah, ah
	mov bl, 10
	div bl				; al = tens, ah = ones
	add al, '0'
	add ah, '0'
	mov [timebuf+2], al
	mov [timebuf+3], ah
	
	mov bl, 0x1F
	mov dh, 0
	mov dl, 70
	mov si, lbl_time
	call printstr
	mov dl, 76
	mov si, timebuf
	call printstr
	
	pop si
	pop dx
	pop bx
	pop ax
	ret


; ---------- print ax as 4 digits at row dh, col dl, attribute bl ----------
printnum:
	push ax
	push cx
	push dx
	push si
	push di
	
	push dx				; save position
	mov di, numbuf + 3
	mov cx, 4
	mov si, 10
.digit:
	xor dx, dx
	div si
	add dl, '0'
	mov [di], dl
	dec di
	loop .digit
	pop dx				; restore row/col
	
	mov si, numbuf
	call printstr
	
	pop di
	pop si
	pop dx
	pop cx
	pop ax
	ret
	
	
; ---------- pause: freezes timer, shows menu, restores screen ----------
pausegame:
	push ax
	push cx
	push dx
	
	mov ah, 0
	int 0x1A
	mov [pausetick], dx		; remember when we paused
	
	call pausemenu			; returns on RESUME, jumps to quit on EXIT
	
	call drawscene			; repaint the game screen
	call draw_sprites
	call drawscore
	
	mov ah, 0
	int 0x1A
	sub dx, [pausetick]		; how long we were paused
	add [starttick], dx		; push the start time forward by that much
	mov word [lastsec], 0xFFFF	; force the timer to redraw
	
	pop dx
	pop cx
	pop ax
	ret


pausemenu:
	mov byte [psel], 0
	
	; panel
	mov dh, 6
	mov dl, 22
	mov ch, 12
	mov cl, 36
	mov bl, 0x1F
	call fillrect
	
	mov bl, 0x1E
	mov dh, 7
	mov dl, 37
	mov si, lbl_paused
	call printstr
	
.redraw:
	mov dl, 25
	
	xor cl, cl
	cmp byte [psel], 0
	jne .r0
	inc cl
.r0:
	mov dh, 9
	mov si, mid_resu
	call drawbutton
	
	xor cl, cl
	cmp byte [psel], 1
	jne .r1
	inc cl
.r1:
	mov dh, 13
	mov si, mid2u
	call drawbutton
	
.key:
	mov ah, 0
	int 0x16
	cmp ah, 0x48			; up
	je .toggle
	cmp ah, 0x50			; down
	je .toggle
	cmp al, 27			; ESC = resume
	je .resume
	cmp al, 13			; enter
	je .enter
	jmp .key
	
.toggle:
	xor byte [psel], 1		; only two buttons, so flip between them
	jmp .redraw
	
.enter:
	cmp byte [psel], 0
	je .resume
	jmp quit			; EXIT
	
.resume:
	ret
	
	
; ---------- end screen: scene only (no sprites), final score ----------
gameoverscreen:
	push ax
	push bx
	push cx
	push dx
	push si

	call drawscene			; background only, no draw_sprites
	call drawscore			; keep score in the top-left corner
	mov ax, 0
	call drawtimer			; show 0:00 in the top-right

	; panel
	mov dh, 6
	mov dl, 22
	mov ch, 12
	mov cl, 36
	mov bl, 0x1F
	call fillrect

	; GAME OVER
	mov bl, 0x4F			; white on red
	mov dh, 8
	mov dl, 36
	mov si, lbl_gameover
	call printstr

	; FINAL SCORE: label + number
	mov bl, 0x1E			; yellow on blue
	mov dh, 11
	mov dl, 32
	mov si, lbl_final
	call printstr

	mov bl, 0x1F
	mov ax, [score]
	mov dh, 11
	mov dl, 45
	call printnum

	; exit hint
	mov bl, 0x1F
	mov dh, 15
	mov dl, 29
	mov si, lbl_exitkey
	call printstr

	; flush any keys pressed during play so the screen doesn't vanish instantly
.flush:
	mov ah, 1
	int 0x16
	jz .done
	mov ah, 0
	int 0x16
	jmp .flush
.done:
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret

printgrass:
	push bp
	mov bp, sp
	
	push ax
	push cx
	push dx
	push es
	push si
	push di
	
	mov ax, 0xb800
	
	mov es, ax
	mov si, [bp+6]
	
	mov di, (23*80)*2
	
	cld
	lodsw
	
	mov cx, 160
	
	rep stosw 
	

	;mud is printed here 
	
	mov si, [bp+4]
	mov di, (22*80)*2
	
	
	
	cld
	lodsw 
	
	mov cx, 80 
	
	rep stosw
	
	;grass is printed here 
	
	pop di
	pop si
	pop es
	pop dx
	pop cx
	pop ax
	pop bp
	
	ret 4
	
drawson:
	push bp
	mov bp, sp
	
	push ax
	push cx
	push dx
	push es
	push di
	push si
	
	mov ax, 0xb800
	mov es, ax
	
    mov si, [bp+4]              ; pointer to sun
    mov di, (2*80 + 74)*2       
    mov dx, 3                   ; three sun rows
    cld

sun_row:
    mov cx, 3                   ; three words per row
    rep movsw
    add di, (80-3)*2            ;next row
    dec dx
    jnz sun_row
	
	pop si
	pop di
	pop es
	pop dx
	pop cx
	pop ax
	pop bp
	
	ret 2 
	
drawcloud1:
	push bp
	mov bp, sp
	push ax
	push cx
	push dx
	push es
	push si
	push di
	
	mov ax, 0xb800
	mov es, ax
	
	
	mov si, [bp+4]
	
	mov di, (4*80+6)*2 
	
	mov dx, 3 ;three rows
	
	cld
cloud1_row:
	mov cx, 5 ;5 columns
	rep movsw
	add di, (80-5)*2
	dec dx
	jnz cloud1_row
	
	pop di
	pop si
	pop es
	pop dx
	pop cx
	pop ax
	pop bp
	
	ret 2
	
drawcloud2:
    push bp
    mov  bp, sp

    push ax
    push cx
    push dx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax

    mov  si, [bp+4]             ; pointer to cloud2
    mov  di, (5*80 +60)*2       
    mov  dx, 4                  ; four rows
    cld

cloud2_row:
    mov  cx, 9                  ; nine columns
    rep  movsw
    add  di, (80-9)*2           
    dec  dx
    jnz  cloud2_row

    pop  di
    pop  si
    pop  es
    pop  dx
    pop  cx
    pop  ax
    pop  bp
    ret  2
	
draw_leaves:
    push bp
    mov  bp, sp
    push ax
    push cx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax
    cld

    ; Top point: middle leaf cell, doubled horizontally
    mov  si, [bp+4]
    add  si, 2
    mov  di, (17*80 + 12)*2
    lodsw
    stosw
    stosw

    ; Canopy: three middle-row cells, each doubled horizontally
    mov  si, [bp+4]
    add  si, 6
    mov  di, (18*80 + 10)*2
    mov  cx, 3
leaves_cell:
    lodsw
    stosw
    stosw
    loop leaves_cell

    pop  di
    pop  si
    pop  es
    pop  cx
    pop  ax
    pop  bp
    ret  2

draw_wood:
    push bp
    mov  bp, sp
    push ax
    push bx
    push dx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax
    mov  bx, [bp+4]             ; wood data pointer
    mov  di, (19*80 + 12)*2
    mov  dx, 3                  ; keep the original three-row height
    cld

wood_row:
    mov  si, bx
    add  si, 2                  ; middle cell of this wood row
    lodsw
    stosw
    stosw                       ; same cell twice across

    add  bx, 6                  ; next 3-word source row
    add  di, (80-2)*2           ; next screen row, same column
    dec  dx
    jnz  wood_row

    pop  di
    pop  si
    pop  es
    pop  dx
    pop  bx
    pop  ax
    pop  bp
    ret  2
	
draw_sprites:
	
	push iron5
	call drawiron
	
	push gold10
	call drawgold
	
	push diamond15
	call drawdiamond
	
	push magmanegative
	call drawmagma
	
	push bucket
	call drawbucket
	
	push tntkill
	call drawtnt
	
	ret
	
	
drawiron:
	push bp
	mov bp, sp
	
	push ax
	push cx
	push dx
	push es
	push si
	push di
	
	mov ax, 0xb800
	mov es, ax
	
	mov si, [bp+4]
	
	mov di, (12*80+20)*2
	mov dx, 3 ;three rows
	cld
	
iron_row:
	mov cx, 3 ;three olumns
	rep movsw
	add di, (80-3)*2
	dec dx
	jnz iron_row
	
	pop di
	pop si
	pop es
	pop dx
	pop cx
	pop ax
	pop bp
	
	ret 2
	
drawgold:
    push bp
    mov  bp, sp
    push ax
    push cx
    push dx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax
    mov  si, [bp+4]
    mov  di, (12*80+30)*2
    mov  dx, 3

gold_row:
    mov  cx, 3
    rep  movsw
    add  di, (80-3)*2
    dec  dx
    jnz  gold_row

    pop  di
    pop  si
    pop  es
    pop  dx
    pop  cx
    pop  ax
    pop  bp
    ret  2


drawdiamond:
    push bp
    mov  bp, sp
    push ax
    push cx
    push dx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax
    mov  si, [bp+4]
    mov  di, (12*80+40)*2
    mov  dx, 3

diamond_row:
    mov  cx, 3
    rep  movsw
    add  di, (80-3)*2
    dec  dx
    jnz  diamond_row

    pop  di
    pop  si
    pop  es
    pop  dx
    pop  cx
    pop  ax
    pop  bp
    ret  2


drawmagma:
    push bp
    mov  bp, sp
    push ax
    push cx
    push dx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax
    mov  si, [bp+4]
    mov  di, (12*80+50)*2
    mov  dx, 3

magma_row:
    mov  cx, 3
    rep  movsw
    add  di, (80-3)*2
    dec  dx
    jnz  magma_row

    pop  di
    pop  si
    pop  es
    pop  dx
    pop  cx
    pop  ax
    pop  bp
    ret  2


drawtnt:
    push bp
    mov  bp, sp
    push ax
    push cx
    push dx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax
    mov  si, [bp+4]
    mov  di, (12*80+60)*2
    mov  dx, 3

tnt_row:
    mov  cx, 3
    rep  movsw
    add  di, (80-3)*2
    dec  dx
    jnz  tnt_row

    pop  di
    pop  si
    pop  es
    pop  dx
    pop  cx
    pop  ax
    pop  bp
    ret  2
	
drawbucket:
    push bp
    mov  bp, sp
    push ax
    push cx
    push dx
    push es
    push si
    push di

    mov  ax, 0B800h
    mov  es, ax
    mov  si, [bp+4]
    mov  di, (20*80+39)*2
    mov  dx, 3

bucket_row:
    mov  cx, 3
    rep  movsw
    add  di, (80-3)*2
    dec  dx
    jnz  bucket_row

    pop  di
    pop  si
    pop  es
    pop  dx
    pop  cx
    pop  ax
    pop  bp
    ret  2
	
	
	
	