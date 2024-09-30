

; =============== S U B R O U T I N E =======================================


sub_0:				  ; CODE XREF: sub_1268+A1↓j

; FUNCTION CHUNK AT 00DA SIZE 00000041 BYTES
; FUNCTION CHUNK AT 012E SIZE 000000B9 BYTES
; FUNCTION CHUNK AT 0205 SIZE 000000FA BYTES

		di
		im	1
		ld	sp, 0
		jp	loc_DA
; ---------------------------------------------------------------------------
		db    3
		db 0B6h
		db    2
		db  64h ; d
		db    2
		db    0
		db    3
		db  74h ; t
		db    1
		db 0A0h
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; ---------------------------------------------------------------------------

vint:
		push    af
		push    bc
		push    de
		push    hl
		push    ix
		push    iy
		ld      hl, 0E006h
		set     5, (hl)
		ld      a, (hl)
		out     (0C6h), a
		ld      hl, 0E03Ah
		ld      a, (hl)
		inc     hl
		ld      (hl), a
		inc     (hl)
		call    j_updatesmps
		ld      hl, 0E006h
		res     5, (hl)
		ld      a, (hl)
		out     (0C6h), a
		pop     iy
		pop     ix
		pop     hl
		pop     de
		pop     bc
		pop     af
		ei
		ret
; ---------------------------------------------------------------------------
		db    0
		db    0
; ---------------------------------------------------------------------------
		push    af
		push    bc
		push    de
		push    hl
		push    ix
		push    iy
		ld      a, (byte_E008)
		res     1, a
		out     (0CEh), a
		call    sub_11B
		ld      hl, 0E006h
		set     4, (hl)
		ld      a, (hl)
		out     (0C6h), a
		call    sub_4A5
		ld      hl, 0E006h
		res     4, (hl)
		ld      a, (hl)
		out     (0C6h), a
		ld      a, (byte_E008)
		set     1, a
		out     (0CEh), a
		call    sub_11B
		pop     iy
		pop     ix
		pop     hl
		pop     de
		pop     bc
		pop     af
		retn
; ---------------------------------------------------------------------------

loc_9F:				 ; CODE XREF: sub_0+156↓j
		ld      a, 2
		jp      loc_AE
; ---------------------------------------------------------------------------

loc_A4:				 ; CODE XREF: sub_0+182↓j
		ld      a, 3
		jp      loc_AE
; ---------------------------------------------------------------------------

loc_A9:				 ; CODE XREF: sub_0+18A↓j
		ld      a, 4
		jp      loc_AE
; ---------------------------------------------------------------------------

loc_AE:				 ; CODE XREF: sub_0+A1↑j
				        ; sub_0+A6↑j ...
		ld      hl, 0E006h
		set     4, (hl)
		res     5, (hl)
		ld      a, (hl)
		out     (0C6h), a
		ld      a, 84h
		ld      (byte_E008), a
		out     (0CEh), a
		halt

loc_C0:				 ; CODE XREF: sub_0:loc_C0↓j
		jp      $
; End of function sub_0


; =============== S U B R O U T I N E =======================================


sub_C3:				 ; CODE XREF: sub_0+17F↓p
				        ; sub_0+187↓p
		in      a, (c)
		cp      53h ; 'S'
		ret     nz
		inc     c
		in      a, (c)
		cp      45h ; 'E'
		ret     nz
		inc     c
		in      a, (c)
		cp      47h ; 'G'
		ret     nz
		inc     c
		in      a, (c)
		cp      41h ; 'A'
		ret
; End of function sub_C3

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_0

loc_DA:				 ; CODE XREF: sub_0+6↑j
		ld      a, 0C0h
		out     (0C6h), a
		ld      a, 0
		out     (0C0h), a
		out     (0C4h), a
		out     (0C5h), a
		out     (0C7h), a
		ld      a, 0FFh
		out     (0C1h), a
		out     (0C2h), a
		out     (0C3h), a
		ld      a, 0FFh
		out     (0CFh), a
		ld      a, 0
		out     (8Fh), a
		ld      a, 80h
		out     (8Eh), a
		ld      a, 84h
		out     (0CEh), a
		res     2, a
		bit     0, (ix+0)
		bit     0, (ix+0)
		out     (0CEh), a
		set     2, a
		bit     0, (ix+0)
		bit     0, (ix+0)
		out     (0CEh), a
		jp      loc_12E
; END OF FUNCTION CHUNK FOR sub_0

; =============== S U B R O U T I N E =======================================


sub_11B:				; CODE XREF: sub_0+75↑p
				        ; sub_0+92↑p ...
		ld      a, (byte_E008)
		res     2, a
		out     (0CEh), a
		push    ix
		pop     ix
		set     2, a
		out     (0CEh), a
		ld      (byte_E008), a
		ret
; End of function sub_11B

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_0

loc_12E:				; CODE XREF: sub_0+118↑j
		ld      hl, 0E000h
		ld      de, 0E001h
		ld      bc, 1FFFh
		ld      (hl), 55h ; 'U'
		ldir
		ld      a, 80h
		out     (0CEh), a
		set     2, a
		bit     0, (ix+0)
		bit     0, (ix+0)
		out     (0CEh), a
		ld      hl, 0E000h
		ld      bc, 2000h

loc_151:				; CODE XREF: sub_0+15D↓j
		ld      a, (hl)
		xor     0FFh
		cp      0AAh
		jp      nz, loc_9F
		inc     hl
		dec     bc
		ld      a, c
		or      b
		jp      nz, loc_151
		ld      a, 80h
		out     (0CEh), a
		set     2, a
		bit     0, (ix+0)
		bit     0, (ix+0)
		out     (0CEh), a
		ld      hl, 0E000h
		ld      de, 0E001h
		ld      bc, 1FFFh
		ld      (hl), 0
		ldir
		ld      c, 88h
		call    sub_C3
		jp      nz, loc_A4
		ld      c, 0C8h
		call    sub_C3
		jp      nz, loc_A9
		ld      hl, 9
		ld      b, 6

loc_192:				; CODE XREF: sub_0+198↓j
		ld      c, (hl)
		inc     hl
		ld      a, (hl)
		inc     hl
		out     (c), a
		djnz    loc_192
		ld      a, 84h
		ld      (byte_E008), a
		call    sub_11B
		call    sub_4003
		in      a, (86h)
		ld      (byte_E016), a
		call    sub_1A83
		ld      a, 0C0h
		ld      (byte_E006), a
		ld      a, 0FFh
		ld      (byte_E001), a
		ld      (byte_E002), a
		ld      (byte_E003), a
		ld      a, 3
		ld      (byte_E057), a
		ld      a, 4
		ld      (byte_E087), a
		ld      a, 86h
		ld      (byte_E008), a
		out     (0CEh), a
		call    sub_1B32
		ld      a, (byte_E016)
		bit     0, a
		jp      z, loc_205
		ld      a, 83h
		call    sub_3DA
		ld      hl, unk_1E7
		ld      (word_E02F), hl
		jp      loc_205
; END OF FUNCTION CHUNK FOR sub_0
; ---------------------------------------------------------------------------
unk_1E7:        db  96h		 ; DATA XREF: sub_0+1DE↑o
				        ; sub_194C↓o
		db  97h
		db  99h
		db  9Ah
		db  9Bh
		db 0A2h
		db  83h
		db  84h
		db  86h
		db  87h
		db 0A0h
		db 0FFh
		db 0CBh
		db 0C6h
		db 0C9h

; =============== S U B R O U T I N E =======================================


sub_1F6:				; CODE XREF: sub_0+246↓p
		ld      a, (byte_E03A)
		ld      b, a
		ld      a, (byte_E03B)
		cp      b
		ret     nz
		ld      a, 1
		ld      (byte_E038), a
		ret
; End of function sub_1F6

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_0

loc_205:				; CODE XREF: sub_0+1D6↑j
				        ; sub_0+1E4↑j
		ld      hl, 0E016h
		bit     7, (hl)
		jp      nz, loc_233
		in      a, (84h)
		and     60h ; '`'
		jp      nz, loc_233
		in      a, (87h)
		and     60h ; '`'
		jp      nz, loc_233
		ld      a, 0FFh
		ld      (byte_E033), a
		ld      (byte_E050), a
		ld      (byte_E080), a
		bit     6, (hl)
		jp      nz, loc_23D
		ld      a, 0AAh
		ld      (byte_E039), a
		jp      loc_23D
; ---------------------------------------------------------------------------

loc_233:				; CODE XREF: sub_0+20A↑j
				        ; sub_0+211↑j ...
		bit     1, (hl)
		jp      nz, loc_23D
		ld      a, 0FFh
		ld      (byte_E039), a

loc_23D:				; CODE XREF: sub_0+228↑j
				        ; sub_0+230↑j ...
		ei

loc_23E:				; CODE XREF: sub_0+243↓j
		ld      a, (byte_E21C)
		cp      0Ah
		jp      c, loc_23E
		call    sub_1F6

loc_249:				; CODE XREF: sub_0+2FC↓j
		ld      a, (byte_E033)
		cp      0FFh
		jp      nz, loc_259
		ld      a, 0FFh
		ld      (byte_E050), a
		ld      (byte_E080), a

loc_259:				; CODE XREF: sub_0+24E↑j
		call    sub_2FF
		call    sub_1B32
		ld      hl, 0E216h
		ld      (word_E017), hl
		ld      hl, 0E218h
		ld      (word_E019), hl
		ld      hl, 0E21Ah
		ld      (word_E01B), hl
		ld      hl, 0E21Eh
		ld      (word_E01D), hl
		ld      hl, 0E222h
		ld      (word_E01F), hl
		ld      ix, 0E101h
		ld      iy, 0E052h
		ld      hl, 0E063h
		ld      a, (byte_E016)
		bit     2, a
		jp      nz, loc_29B
		bit     0, (hl)
		jp      nz, loc_2A0

loc_295:				; CODE XREF: sub_0+29D↓j
		call    sub_F62
		jp      loc_2A3
; ---------------------------------------------------------------------------

loc_29B:				; CODE XREF: sub_0+28D↑j
		bit     1, (hl)
		jp      nz, loc_295

loc_2A0:				; CODE XREF: sub_0+292↑j
		call    sub_1156

loc_2A3:				; CODE XREF: sub_0+298↑j
		call    sub_1268
		call    sub_179E
		ld      hl, 0E224h
		ld      (word_E017), hl
		ld      hl, 0E226h
		ld      (word_E019), hl
		ld      hl, 0E228h
		ld      (word_E01B), hl
		ld      hl, 0E22Ch
		ld      (word_E01D), hl
		ld      hl, 0E230h
		ld      (word_E01F), hl
		ld      ix, 0E111h
		ld      iy, 0E082h
		ld      hl, 0E093h
		ld      a, (byte_E016)
		bit     2, a
		jp      nz, loc_2E5
		bit     0, (hl)
		jp      nz, loc_2EA

loc_2DF:				; CODE XREF: sub_0+2E7↓j
		call    sub_F62
		jp      loc_2ED
; ---------------------------------------------------------------------------

loc_2E5:				; CODE XREF: sub_0+2D7↑j
		bit     1, (hl)
		jp      nz, loc_2DF

loc_2EA:				; CODE XREF: sub_0+2DC↑j
		call    sub_1156

loc_2ED:				; CODE XREF: sub_0+2E2↑j
		call    sub_1B32
		call    sub_1268
		call    sub_179E
		call    sub_1B32
		call    sub_3F9
		jp      loc_249
; END OF FUNCTION CHUNK FOR sub_0

; =============== S U B R O U T I N E =======================================


sub_2FF:				; CODE XREF: sub_0:loc_259↑p
		ld      a, (byte_E129)
		cp      55h ; 'U'
		jp      nz, loc_371
		ld      a, 0FFh
		ld      (byte_E129), a
		ld      a, (byte_E056)
		ld      b, a
		ld      a, (byte_E059)
		or      b
		jp      nz, loc_346
		ld      a, (byte_E033)
		cp      0FFh
		jp      z, loc_371
		ld      a, (byte_E05A)
		cp      0FFh
		jp      nz, loc_371
		xor     a
		ld      (byte_E050), a
		ld      (byte_E026), a
		ld      (byte_E027), a
		ld      a, (byte_E053)
		cp      1
		jp      nz, loc_371
		xor     a
		ld      (byte_E057), a
		ld      (byte_E05C), a
		ld      (byte_E053), a
		jp      loc_371
; ---------------------------------------------------------------------------

loc_346:				; CODE XREF: sub_2FF+15↑j
		ld      hl, 0E063h
		res     0, (hl)
		set     1, (hl)
		ld      a, 3
		ld      (byte_E057), a
		xor     a
		ld      (byte_E056), a
		ld      (byte_E059), a
		ld      (byte_E053), a
		ld      (byte_E05A), a
		ld      (byte_E05C), a
		ld      a, 40h ; '@'
		ld      (byte_E02B), a
		ld      a, 0FFh
		call    sub_3DA
		ld      a, 97h
		call    sub_3DA

loc_371:				; CODE XREF: sub_2FF+5↑j
				        ; sub_2FF+1D↑j ...
		ld      a, (byte_E139)
		cp      55h ; 'U'
		ret     nz
		ld      a, 0FFh
		ld      (byte_E139), a
		ld      a, (byte_E086)
		ld      b, a
		ld      a, (byte_E089)
		or      b
		jp      nz, loc_3AE
		ld      a, (byte_E033)
		cp      0FFh
		ret     z
		ld      a, (byte_E08A)
		cp      0FFh
		ret     nz
		xor     a
		ld      (byte_E080), a
		ld      (byte_E028), a
		ld      (byte_E029), a
		ld      a, (byte_E083)
		cp      1
		ret     nz
		xor     a
		ld      (byte_E087), a
		ld      (byte_E08C), a
		ld      (byte_E083), a
		ret
; ---------------------------------------------------------------------------

loc_3AE:				; CODE XREF: sub_2FF+85↑j
		ld      hl, 0E093h
		res     0, (hl)
		set     1, (hl)
		ld      a, 3
		ld      (byte_E087), a
		xor     a
		ld      (byte_E086), a
		ld      (byte_E089), a
		ld      (byte_E083), a
		ld      (byte_E08A), a
		ld      (byte_E08C), a
		ld      a, 40h ; '@'
		ld      (byte_E02B), a
		ld      a, 0FFh
		call    sub_3DA
		ld      a, 97h
		call    sub_3DA
		ret
; End of function sub_2FF


; =============== S U B R O U T I N E =======================================


sub_3DA:				; CODE XREF: sub_0+1DB↑p
				        ; sub_2FF+6A↑p ...
		push    af
		push    hl
		push    bc
		push    af
		ld      hl, 0E300h
		ld      a, (hl)
		inc     a
		and     0Fh
		ld      c, a
		ld      b, 0
		ld      hl, 0E302h
		add     hl, bc
		pop     af
		ld      (hl), a
		ld      (byte_E301), a
		ld      a, c
		ld      (byte_E300), a
		pop     bc
		pop     hl
		pop     af
		ret
; End of function sub_3DA


; =============== S U B R O U T I N E =======================================


sub_3F9:				; CODE XREF: sub_0+2F9↑p
		ld      a, (byte_E02B)
		bit     1, a
		jp      nz, loc_404
		bit     0, a
		ret     nz

loc_404:				; CODE XREF: sub_3F9+5↑j
		ld      a, (byte_E059)
		ld      b, a
		ld      a, (byte_E089)
		or      b
		ret     nz
		ld      a, (byte_E050)
		ld      b, a
		ld      a, (byte_E080)
		or      b
		jp      nz, loc_439
		ld      a, (byte_E016)
		bit     0, a
		jp      nz, loc_439
		ld      a, (byte_E053)
		ld      b, a
		ld      a, (byte_E083)
		or      b
		jp      nz, loc_439
		ld      hl, 0E02Bh
		bit     6, (hl)
		ret     nz
		set     6, (hl)
		ld      a, 0FFh
		call    sub_3DA
		ret
; ---------------------------------------------------------------------------

loc_439:				; CODE XREF: sub_3F9+1C↑j
				        ; sub_3F9+24↑j ...
		ld      hl, 0E02Bh
		bit     6, (hl)
		jp      z, loc_446
		res     6, (hl)
		jp      loc_476
; ---------------------------------------------------------------------------

loc_446:				; CODE XREF: sub_3F9+45↑j
		ld      a, (byte_E053)
		cp      0Ch
		jp      nc, loc_456
		ld      a, (byte_E083)
		cp      0Ch
		jp      c, loc_46C

loc_456:				; CODE XREF: sub_3F9+52↑j
		ld      a, (byte_E03C)
		or      a
		jp      nz, loc_46C
		ld      a, 87h
		ld      (byte_E03C), a
		call    sub_3DA
		ld      hl, 0
		ld      (word_E214), hl
		ret
; ---------------------------------------------------------------------------

loc_46C:				; CODE XREF: sub_3F9+5A↑j
				        ; sub_3F9+61↑j
		ld      hl, (word_E214)
		ld      bc, 7530h
		or      a
		sbc     hl, bc
		ret     c

loc_476:				; CODE XREF: sub_3F9+4A↑j
		xor     a
		ld      (byte_E03C), a
		ld      hl, 0
		ld      (word_E214), hl
		ld      a, (byte_E00B)
		ld      b, 0
		ld      c, a
		inc     a
		ld      (byte_E00B), a
		ld      hl, byte_4A1
		add     hl, bc
		ld      a, (hl)
		cp      0FFh
		call    z, sub_498
		call    sub_3DA
		ret
; End of function sub_3F9


; =============== S U B R O U T I N E =======================================


sub_498:				; CODE XREF: sub_3F9+98↑p
		ld      a, 1
		ld      (byte_E00B), a
		ld      a, (byte_4A1)
		ret
; End of function sub_498

; ---------------------------------------------------------------------------
byte_4A1:       db 83h		  ; DATA XREF: sub_3F9+91↑o
				        ; sub_498+5↑r
		db 84h
		db 86h
		db 0FFh

; =============== S U B R O U T I N E =======================================


sub_4A5:				; CODE XREF: sub_0+80↑p
		call    sub_E20
		call    sub_4B2
		call    sub_E06
		call    sub_F3A
		ret
; End of function sub_4A5


; =============== S U B R O U T I N E =======================================


sub_4B2:				; CODE XREF: sub_4A5+3↑p
		ld      a, (byte_E014)
		xor     1
		ld      (byte_E014), a
		call    sub_C74
		call    sub_829
		call    sub_D45
		call    sub_BAB
		call    sub_582
		call    sub_526
		call    sub_4D3
		call    sub_DF7
		ret
; End of function sub_4B2


; =============== S U B R O U T I N E =======================================


sub_4D3:				; CODE XREF: sub_4B2+1A↑p
		ld      a, (byte_E059)
		ld      b, a
		ld      a, (byte_E089)
		ld      c, a
		ld      a, (byte_E056)
		ld      d, a
		ld      a, (byte_E086)
		or      b
		or      c
		or      d
		ret     nz
		ld      a, (byte_E050)
		ld      b, a
		ld      a, (byte_E080)
		ld      c, a
		ld      a, (byte_E053)
		ld      d, a
		ld      a, (byte_E083)
		ld      e, d
		or      b
		or      c
		or      d
		or      e
		ret     nz
		ld      a, 0Fh
		ld      (byte_E02C), a
		ld      b, 0FFh
		ld      a, (byte_F020)
		bit     0, a
		jp      z, loc_50C
		res     1, b

loc_50C:				; CODE XREF: sub_4D3+34↑j
		bit     1, a
		jp      z, loc_513
		res     0, b

loc_513:				; CODE XREF: sub_4D3+3B↑j
		bit     2, a
		jp      z, loc_51A
		res     3, b

loc_51A:				; CODE XREF: sub_4D3+42↑j
		bit     3, a
		jp      z, loc_521
		res     2, b

loc_521:				; CODE XREF: sub_4D3+49↑j
		ld      a, b
		ld      (byte_E001), a
		ret
; End of function sub_4D3


; =============== S U B R O U T I N E =======================================


sub_526:				; CODE XREF: sub_4B2+17↑p
		ld      a, (byte_E014)
		bit     0, a
		ret     z
		xor     2
		ld      (byte_E014), a
		bit     1, a
		ret     z
		ld      ix, 0E055h
		ld      iy, 0E060h
		call    sub_557
		ld      e, b
		ld      ix, 0E085h
		ld      iy, 0E090h
		call    sub_557
		ld      a, e
		and     0Fh
		ld      e, a
		ld      a, b
		and     0F0h
		or      e
		ld      (byte_E000), a
		ret
; End of function sub_526


; =============== S U B R O U T I N E =======================================


sub_557:				; CODE XREF: sub_526+16↑p
				        ; sub_526+22↑p
		ld      a, (ix+0)
		or      a
		jp      z, loc_575
		ld      hl, locret_57D
		ld      a, (iy+0)
		ld      c, a
		ld      b, 0
		add     hl, bc
		ld      a, (hl)
		ld      b, a
		inc     c
		ld      a, c
		cp      5
		call    z, sub_578
		ld      (iy+0), a
		ret
; ---------------------------------------------------------------------------

loc_575:				; CODE XREF: sub_557+4↑j
		ld      b, 0
		ret
; End of function sub_557


; =============== S U B R O U T I N E =======================================


sub_578:				; CODE XREF: sub_557+17↑p
		dec     (ix+0)
		ld      a, 1

locret_57D:		             ; DATA XREF: sub_557+7↑o
		ret
; End of function sub_578

; ---------------------------------------------------------------------------
		db  55h ; U
		db  99h
		db 0AAh
		db  66h ; f

; =============== S U B R O U T I N E =======================================


sub_582:				; CODE XREF: sub_4B2+14↑p
		ld      a, (byte_E059)
		or      a
		jp      nz, loc_5AE
		ld      a, (byte_E056)
		or      a
		jp      z, loc_5C2
		ld      b, a
		ld      a, (byte_E203)
		ld      c, a
		ld      a, (byte_E12B)
		ld      d, a
		ld      a, (byte_E12D)
		ld      e, a
		ld      hl, 0E002h
		ld      ix, 0E050h
		ld      iy, 0E05Eh
		call    sub_6C1
		jp      loc_611
; ---------------------------------------------------------------------------

loc_5AE:				; CODE XREF: sub_582+4↑j
		ld      a, (byte_E203)
		ld      c, a
		ld      hl, 0E002h
		ld      de, 0E059h
		ld      iy, 0E05Eh
		call    sub_6AA
		jp      loc_611
; ---------------------------------------------------------------------------

loc_5C2:				; CODE XREF: sub_582+B↑j
		ld      a, (byte_E050)
		or      a
		jp      nz, loc_5F1
		ld      a, (byte_E12B)
		ld      b, a
		ld      a, (byte_E13B)
		and     b
		jp      z, loc_5EF
		ld      ix, 0E05Eh
		ld      iy, 0E203h
		ld      hl, unk_70B
		ld      e, 1Eh
		ld      a, (byte_E002)
		ld      b, a
		call    sub_9B9
		ld      a, b
		ld      (byte_E002), a
		jp      loc_611
; ---------------------------------------------------------------------------

loc_5EF:				; CODE XREF: sub_582+4F↑j
		ld      a, 0

loc_5F1:				; CODE XREF: sub_582+44↑j
		cp      0Ah
		call    nc, sub_699
		and     0Fh
		ld      (byte_E002), a
		ld      a, (byte_E033)
		cp      0FFh

loc_600:
		jp      nz, loc_611
		ld      b, 0Ah
		ld      a, (byte_E014)
		bit     0, a
		call    nz, sub_6A7
		ld      a, b
		ld      (byte_E002), a

loc_611:				; CODE XREF: sub_582+29↑j
				        ; sub_582+3D↑j ...
		ld      a, (byte_E089)
		or      a
		jp      nz, loc_63B
		ld      a, (byte_E086)
		or      a
		jp      z, loc_64D
		ld      b, a
		ld      a, (byte_E209)
		ld      c, a
		ld      a, (byte_E13B)
		ld      d, a
		ld      a, (byte_E13D)
		ld      e, a
		ld      hl, 0E003h
		ld      ix, 0E080h
		ld      iy, 0E08Eh
		call    sub_6C1
		ret
; ---------------------------------------------------------------------------

loc_63B:				; CODE XREF: sub_582+93↑j
		ld      a, (byte_E209)
		ld      c, a
		ld      hl, 0E003h
		ld      de, 0E089h
		ld      iy, 0E08Eh
		call    sub_6AA
		ret
; ---------------------------------------------------------------------------

loc_64D:				; CODE XREF: sub_582+9A↑j
		ld      a, (byte_E080)
		or      a
		jp      nz, loc_67A
		ld      a, (byte_E12D)
		ld      b, a
		ld      a, (byte_E13D)
		and     b
		jp      z, loc_678
		ld      ix, 0E08Eh
		ld      iy, 0E209h
		ld      hl, unk_70B
		ld      e, 1Eh
		ld      a, (byte_E003)
		ld      b, a
		call    sub_9B9
		ld      a, b
		ld      (byte_E003), a
		ret
; ---------------------------------------------------------------------------

loc_678:				; CODE XREF: sub_582+DA↑j
		ld      a, 0

loc_67A:				; CODE XREF: sub_582+CF↑j
		cp      0Ah
		call    nc, sub_699
		and     0Fh
		ld      (byte_E003), a
		ld      a, (byte_E033)
		cp      0FFh
		ret     nz
		ld      b, 0Ah
		ld      a, (byte_E014)
		bit     0, a
		call    nz, sub_6A7
		ld      a, b
		ld      (byte_E003), a
		ret
; End of function sub_582


; =============== S U B R O U T I N E =======================================


sub_699:				; CODE XREF: sub_582+71↑p
				        ; sub_582+FA↑p ...
		ld      a, (byte_E014)
		bit     0, a
		jp      nz, loc_6A4
		ld      a, 9
		ret
; ---------------------------------------------------------------------------

loc_6A4:				; CODE XREF: sub_699+5↑j
		ld      a, 0Bh
		ret
; End of function sub_699


; =============== S U B R O U T I N E =======================================


sub_6A7:				; CODE XREF: sub_582+88↑p
				        ; sub_582+10F↑p
		ld      b, 0Bh
		ret
; End of function sub_6A7


; =============== S U B R O U T I N E =======================================


sub_6AA:				; CODE XREF: sub_582+3A↑p
				        ; sub_582+C7↑p

; FUNCTION CHUNK AT 06F6 SIZE 00000003 BYTES

		bit     6, c
		jp      nz, loc_6F6
		ld      a, (de)
		cp      0Ah
		call    z, sub_826
		ld      (hl), a
		cp      9
		ret     nz
		ld      a, (byte_E038)
		or      a
		ret     z
		ld      (hl), 0Ah
		ret
; End of function sub_6AA


; =============== S U B R O U T I N E =======================================


sub_6C1:				; CODE XREF: sub_582+26↑p
				        ; sub_582+B5↑p

; FUNCTION CHUNK AT 06F2 SIZE 00000004 BYTES
; FUNCTION CHUNK AT 06F6 SIZE 00000003 BYTES
; FUNCTION CHUNK AT 06F9 SIZE 00000012 BYTES

		ld      a, d
		cp      55h ; 'U'
		jp      z, loc_6FF
		ld      a, e
		cp      55h ; 'U'
		jp      z, loc_701
		bit     7, c
		jp      nz, loc_6F6
		ld      a, (hl)
		cp      0Fh
		call    z, sub_6E9
		ld      a, (iy+0)
		bit     0, a
		jp      nz, loc_6F9
		bit     0, c
		jp      nz, loc_6F2
		ld      a, 0Dh
		ld      (hl), a
		ret
; End of function sub_6C1


; =============== S U B R O U T I N E =======================================


sub_6E9:				; CODE XREF: sub_6C1+14↑p
		ld      a, (iy+0)
		xor     1
		ld      (iy+0), a
		ret
; End of function sub_6E9

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_6C1

loc_6F2:				; CODE XREF: sub_6C1+21↑j
		ld      a, 0Eh
		ld      (hl), a
		ret
; END OF FUNCTION CHUNK FOR sub_6C1
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_6AA
;   ADDITIONAL PARENT FUNCTION sub_6C1

loc_6F6:				; CODE XREF: sub_6AA+2↑j
				        ; sub_6C1+E↑j
		ld      (hl), 0Fh
		ret
; END OF FUNCTION CHUNK FOR sub_6AA
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_6C1

loc_6F9:				; CODE XREF: sub_6C1+1C↑j
		ld      a, b
		call    sub_1ADC
		ld      (hl), a
		ret
; ---------------------------------------------------------------------------

loc_6FF:				; CODE XREF: sub_6C1+3↑j
		ld      (hl), b
		ret
; ---------------------------------------------------------------------------

loc_701:				; CODE XREF: sub_6C1+9↑j
		ld      a, (ix+0)
		cp      9
		call    nc, sub_699
		ld      (hl), a
		ret
; END OF FUNCTION CHUNK FOR sub_6C1
; ---------------------------------------------------------------------------
unk_70B:        db    0		 ; DATA XREF: sub_582+5A↑o
				        ; sub_582+E5↑o
		db    0
		db    0
		db  0Fh
		db    1
		db    1
		db    1
		db  0Fh
		db    2
		db    2
		db    2
		db  0Fh
		db    3
		db    3
		db    3
		db  0Fh
		db    4
		db    4
		db    4
		db  0Fh
		db    5
		db    5
		db    5
		db  0Fh
		db    6
		db    6
		db    6
		db  0Fh
		db    7
		db    7
		db    7
		db  0Fh
		db    8
		db    8
		db    8
		db  0Fh
		db    9
		db    9
		db    9
		db  0Fh
		db    8
		db    8
		db    8
		db  0Fh
		db    7
		db    7
		db    7
		db  0Fh
		db    6
		db    6
		db    6
		db  0Fh
		db    5
		db    5
		db    5
		db  0Fh
		db    4
		db    4
		db    4
		db  0Fh
		db    3
		db    3
		db    3
		db  0Fh
		db    2
		db    2
		db    2
		db  0Fh
		db    1
		db    1
		db    1
		db  0Fh
		db    0
		db    0
		db  0Fh
		db    1
		db    1
		db  0Fh
		db    2
		db    2
		db  0Fh
		db    3
		db    3
		db  0Fh
		db    4
		db    4
		db  0Fh
		db    5
		db    5
		db  0Fh
		db    6
		db    6
		db  0Fh
		db    7
		db    7
		db  0Fh
		db    8
		db    8
		db  0Fh
		db    9
		db    9
		db  0Fh
		db    8
		db    8
		db  0Fh
		db    7
		db    7
		db  0Fh
		db    6
		db    6
		db  0Fh
		db    5
		db    5
		db  0Fh
		db    4
		db    4
		db  0Fh
		db    3
		db    3
		db  0Fh
		db    2
		db    2
		db  0Fh
		db    1
		db    1
		db  0Fh
		db    0
		db  0Fh
		db    1
		db  0Fh
		db    2
		db  0Fh
		db    3
		db  0Fh
		db    4
		db  0Fh
		db    5
		db  0Fh
		db    6
		db  0Fh
		db    7
		db  0Fh
		db    8
		db  0Fh
		db    9
		db  0Fh
		db    8
		db  0Fh
		db    7
		db  0Fh
		db    6
		db  0Fh
		db    5
		db  0Fh
		db    4
		db  0Fh
		db    3
		db  0Fh
		db    2
		db  0Fh
		db    1
		db  0Fh
		db    2
		db  0Fh
		db    3
		db  0Fh
		db    4
		db  0Fh
		db    5
		db  0Fh
		db    6
		db  0Fh
		db    7
		db  0Fh
		db    8
		db  0Fh
		db    9
		db    9
		db  0Fh
		db    8
		db    8
		db  0Fh
		db    7
		db    7
		db  0Fh
		db    6
		db    6
		db  0Fh
		db    5
		db    5
		db  0Fh
		db    4
		db    4
		db  0Fh
		db    3
		db    3
		db  0Fh
		db    2
		db    2
		db  0Fh
		db    1
		db    1
		db  0Fh
		db    0
		db    0
		db  0Fh
		db    1
		db    1
		db    1
		db  0Fh
		db    2
		db    2
		db    2
		db  0Fh
		db    3
		db    3
		db    3
		db  0Fh
		db    4
		db    4
		db    4
		db  0Fh
		db    5
		db    5
		db    5
		db  0Fh
		db    6
		db    6
		db    6
		db  0Fh
		db    7
		db    7
		db    7
		db  0Fh
		db    8
		db    8
		db    8
		db  0Fh
		db    9
		db    9
		db    9
		db    9
		db  0Fh
		db    8
		db    8
		db    8
		db    8
		db  0Fh
		db    7
		db    7
		db    7
		db    7
		db  0Fh
		db    6
		db    6
		db    6
		db    6
		db  0Fh
		db    5
		db    5
		db    5
		db    5
		db  0Fh
		db    4
		db    4
		db    4
		db    4
		db  0Fh
		db    3
		db    3
		db    3
		db    3
		db  0Fh
		db    2
		db    2
		db    2
		db    2
		db  0Fh
		db    1
		db    1
		db    1
		db    1
		db 0FFh

; =============== S U B R O U T I N E =======================================


sub_826:				; CODE XREF: sub_6AA+8↑p
		ld      a, 0
		ret
; End of function sub_826


; =============== S U B R O U T I N E =======================================


sub_829:				; CODE XREF: sub_4B2+B↑p
		ld      a, (byte_E053)
		ld      b, a
		ld      a, (byte_E059)
		ld      c, a
		ld      a, (byte_E056)
		ld      d, a
		ld      a, (byte_E050)
		or      b
		or      c
		or      d
		jp      nz, loc_872
		ld      a, (byte_E12B)
		cp      55h ; 'U'
		jp      nz, loc_864
		ld      a, 0FFh
		ld      (byte_E12B), a
		xor     a
		ld      (byte_E058), a
		ld      a, (byte_E057)
		cp      3
		jp      z, loc_85F
		ld      a, 3
		ld      (byte_E057), a
		jp      loc_864
; ---------------------------------------------------------------------------

loc_85F:				; CODE XREF: sub_829+2B↑j
		ld      a, 4
		ld      (byte_E057), a

loc_864:				; CODE XREF: sub_829+1A↑j
				        ; sub_829+33↑j
		ld      hl, 0E057h
		ld      de, 0E062h
		call    sub_1B32
		cp      1
		call    c, sub_8F3

loc_872:				; CODE XREF: sub_829+12↑j
		ld      a, (byte_E083)
		ld      b, a
		ld      a, (byte_E089)
		ld      c, a
		ld      a, (byte_E086)
		ld      d, a
		ld      a, (byte_E080)
		or      b
		or      c
		or      d
		jp      nz, loc_8BB
		ld      a, (byte_E13D)
		cp      55h ; 'U'
		jp      nz, loc_8AD
		ld      a, 0FFh
		ld      (byte_E13D), a
		xor     a
		ld      (byte_E088), a
		ld      a, (byte_E087)
		cp      3
		jp      z, loc_8A8
		ld      a, 3
		ld      (byte_E087), a
		jp      loc_8AD
; ---------------------------------------------------------------------------

loc_8A8:				; CODE XREF: sub_829+74↑j
		ld      a, 4
		ld      (byte_E087), a

loc_8AD:				; CODE XREF: sub_829+63↑j
				        ; sub_829+7C↑j
		ld      hl, 0E087h
		ld      de, 0E092h
		call    sub_1B32
		cp      1
		call    c, sub_8F3

loc_8BB:				; CODE XREF: sub_829+5B↑j
		ld      ix, 0E057h
		ld      iy, 0E202h
		ld      a, (byte_E006)
		and     3
		ld      b, a
		call    sub_90B
		push    bc
		ld      ix, 0E087h
		ld      iy, 0E208h
		ld      a, (byte_E006)
		srl     a
		srl     a
		and     3
		ld      b, a
		call    sub_90B
		ld      a, b
		pop     bc
		sla     a
		sla     a
		or      b
		ld      b, a
		ld      hl, 0E006h
		ld      a, (hl)
		and     0F0h
		or      b
		ld      (hl), a
		ret
; End of function sub_829


; =============== S U B R O U T I N E =======================================


sub_8F3:				; CODE XREF: sub_829+46↑p
				        ; sub_829+8F↑p
		ld      a, (hl)
		or      a
		jp      z, loc_902
		call    sub_1B32
		or      a
		ret     nz
		ld      a, (hl)
		ld      (de), a
		xor     a
		ld      (hl), a
		ret
; ---------------------------------------------------------------------------

loc_902:				; CODE XREF: sub_8F3+2↑j
		call    sub_1B32
		cp      0Ah
		ret     nc
		ld      a, (de)
		ld      (hl), a
		ret
; End of function sub_8F3


; =============== S U B R O U T I N E =======================================


sub_90B:				; CODE XREF: sub_829+A0↑p
				        ; sub_829+B6↑p
		ld      a, (ix+0)
		cp      0F0h
		jp      nc, loc_9A2
		or      a
		ret     z
		ld      hl, unk_B3D
		ld      e, 32h ; '2'
		ld      a, (ix+0)
		cp      1
		jp      z, sub_9B9
		ld      hl, unk_9DC
		ld      e, 32h ; '2'
		cp      2
		jp      z, sub_9B9
		ld      hl, unk_A17
		ld      e, 3Ch ; '<'
		cp      3
		jp      z, sub_9B9
		ld      hl, unk_ADE
		ld      e, 1Eh
		cp      4
		jp      z, sub_9B9
		ld      hl, unk_B47
		ld      e, 1Eh
		cp      5
		jp      z, sub_9B9
		ld      hl, unk_B51
		ld      e, 14h
		cp      6
		jp      z, sub_9B9
		ld      hl, unk_B5B
		ld      e, 14h
		cp      7
		jp      z, sub_9B9
		ld      hl, unk_B65
		ld      e, 14h
		cp      8
		jp      z, sub_9B9
		ld      hl, unk_B6F
		ld      e, 28h ; '('
		cp      9
		jp      z, sub_9B9
		ld      hl, unk_B79
		ld      e, 64h ; 'd'
		cp      0Ah
		jp      z, sub_9B9
		ld      hl, unk_B83
		ld      e, 50h ; 'P'
		cp      0Bh
		jp      z, sub_9B9
		ld      hl, unk_B8D
		ld      e, 50h ; 'P'
		cp      0Ch
		jp      z, sub_9B9
		ld      hl, unk_B97
		ld      e, 50h ; 'P'
		cp      0Dh
		jp      z, sub_9B9
		ld      hl, unk_BA1
		ld      e, 50h ; 'P'
		jp      sub_9B9
; ---------------------------------------------------------------------------

loc_9A2:				; CODE XREF: sub_90B+5↑j
		and     0Fh
		ld      c, a
		ld      b, 0
		ld      hl, byte_9D7
		add     hl, bc
		ld      a, (hl)
		ld      b, a
		cp      0FFh
		ret     nz
		ld      (ix+0), 0F0h
		ld      a, (byte_9D7)
		ld      b, a
		ret
; End of function sub_90B


; =============== S U B R O U T I N E =======================================


sub_9B9:				; CODE XREF: sub_582+63↑p
				        ; sub_582+EE↑p ...
		ld      a, (iy+0)
		cp      e
		ret     c
		xor     a
		ld      (iy+0), a
		ld      a, (ix+1)
		ld      c, a
		ld      b, 0
		add     hl, bc
		ld      b, (hl)
		inc     (ix+1)
		inc     hl
		ld      a, (hl)
		cp      0FFh
		ret     nz
		ld      (ix+1), 0
		ret
; End of function sub_9B9

; ---------------------------------------------------------------------------
byte_9D7:       db 0		    ; DATA XREF: sub_90B+9C↑o
				        ; sub_90B+A9↑r
		db    1
		db    2
		db    3
		db 0FFh
unk_9DC:        db    1		 ; DATA XREF: sub_90B+17↑o
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    3
		db    3
		db    3
		db    3
		db    3
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db 0FFh
unk_A17:        db    1		 ; DATA XREF: sub_90B+21↑o
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    0
		db    0
		db    3
		db    3
		db    0
		db    0
		db    3
		db    3
		db    3
		db    0
		db    0
		db    0
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    2
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    3
		db    3
		db    3
		db    3
		db    0
		db    0
		db    0
		db    0
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    3
		db    3
		db    0
		db    0
		db 0FFh
unk_ADE:        db    3		 ; DATA XREF: sub_90B+2B↑o
		db    3
		db    3
		db    3
		db    3
		db    3
		db    3
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    3
		db    3
		db    3
		db    3
		db    3
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    2
		db    2
		db    2
		db    1
		db    1
		db    1
		db    1
		db    1
		db    0
		db    0
		db    0
		db 0FFh
unk_B3D:        db    1		 ; DATA XREF: sub_90B+A↑o
		db    2
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
unk_B47:        db    3		 ; DATA XREF: sub_90B+35↑o
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
unk_B51:        db    1		 ; DATA XREF: sub_90B+3F↑o
		db    2
		db    3
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
unk_B5B:        db    2		 ; DATA XREF: sub_90B+49↑o
		db    2
		db    1
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
unk_B65:        db    1		 ; DATA XREF: sub_90B+53↑o
		db    1
		db    2
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
unk_B6F:        db    1		 ; DATA XREF: sub_90B+5D↑o
		db    0
		db    2
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
unk_B79:        db    1		 ; DATA XREF: sub_90B+67↑o
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
unk_B83:        db    1		 ; DATA XREF: sub_90B+71↑o
		db    1
		db    0
		db    2
		db    2
		db    0
		db    3
		db    3
		db    0
		db 0FFh
unk_B8D:        db    1		 ; DATA XREF: sub_90B+7B↑o
		db    0
		db    0
		db    2
		db    0
		db    0
		db    3
		db    0
		db    0
		db 0FFh
unk_B97:        db    1		 ; DATA XREF: sub_90B+85↑o
		db    1
		db    1
		db    2
		db    1
		db    1
		db    1
		db    3
		db 0FFh
		db 0FFh
unk_BA1:        db    1		 ; DATA XREF: sub_90B+8F↑o
		db    2
		db    1
		db    3
		db    2
		db    2
		db    1
		db    1
		db    2
		db 0FFh

; =============== S U B R O U T I N E =======================================


sub_BAB:				; CODE XREF: sub_4B2+11↑p
		ld      a, (byte_E02C)
		or      a
		ret     nz
		ld      ix, 0E05Ch
		ld      iy, 0E205h
		ld      a, (byte_E001)
		and     3
		ld      e, a
		call    sub_BE2
		push    de
		ld      ix, 0E08Ch
		ld      iy, 0E20Bh
		ld      a, (byte_E001)
		srl     a
		srl     a
		and     3
		ld      e, a
		call    sub_BE2
		sla     e
		sla     e
		ld      a, e
		pop     de
		or      e
		ld      (byte_E001), a
		ret
; End of function sub_BAB


; =============== S U B R O U T I N E =======================================


sub_BE2:				; CODE XREF: sub_BAB+13↑p
				        ; sub_BAB+29↑p

; FUNCTION CHUNK AT 0C4A SIZE 0000000C BYTES

		ld      a, (ix-2)
		cp      0FFh
		jp      nz, loc_C53
		ld      a, (ix+0)
		or      a
		jp      z, loc_C53
		cp      40h ; '@'
		jp      z, loc_C4A
		cp      80h
		jp      z, loc_C4D
		cp      0C0h
		jp      z, loc_C50
		call    sub_1ADC
		ld      c, a
		add     a, c
		add     a, c
		add     a, c
		add     a, c
		ld      c, a
		ld      b, 0
		ld      hl, 0C51h
		add     hl, bc
		ld      a, (ix+0)
		and     0Fh
		cp      1
		call    z, sub_C41
		cp      2
		call    z, sub_C44
		cp      3
		call    z, sub_C47
		ld      a, (iy+0)
		cp      d
		ret     c
		xor     a
		ld      (iy+0), a
		ld      a, (ix+1)
		ld      c, a
		ld      b, 0
		add     hl, bc
		ld      e, (hl)
		inc     (ix+1)
		inc     hl
		ld      a, (hl)
		cp      0FFh
		ret     nz
		ld      (ix+1), 0
		ret
; End of function sub_BE2


; =============== S U B R O U T I N E =======================================


sub_C41:				; CODE XREF: sub_BE2+34↑p
		ld      d, 28h ; '('
		ret
; End of function sub_C41


; =============== S U B R O U T I N E =======================================


sub_C44:				; CODE XREF: sub_BE2+39↑p
		ld      d, 64h ; 'd'
		ret
; End of function sub_C44


; =============== S U B R O U T I N E =======================================


sub_C47:				; CODE XREF: sub_BE2+3E↑p
		ld      d, 0C8h
		ret
; End of function sub_C47

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_BE2

loc_C4A:				; CODE XREF: sub_BE2+11↑j
		ld      e, 2
		ret
; ---------------------------------------------------------------------------

loc_C4D:				; CODE XREF: sub_BE2+16↑j
		ld      e, 1
		ret
; ---------------------------------------------------------------------------

loc_C50:				; CODE XREF: sub_BE2+1B↑j
		ld      e, 0
		ret
; ---------------------------------------------------------------------------

loc_C53:				; CODE XREF: sub_BE2+5↑j
				        ; sub_BE2+C↑j
		ld      e, 3
		ret
; END OF FUNCTION CHUNK FOR sub_BE2
; ---------------------------------------------------------------------------
		db    2
		db    3
		db    2
		db    3
		db 0FFh
		db    1
		db    3
		db    1
		db    3
		db 0FFh
		db    0
		db    3
		db    0
		db    3
		db 0FFh
		db    2
		db    1
		db    2
		db    1
		db 0FFh
		db    2
		db    1
		db    2
		db    3
		db 0FFh
		db    1
		db    2
		db    1
		db    3
		db 0FFh

; =============== S U B R O U T I N E =======================================


sub_C74:				; CODE XREF: sub_4B2+8↑p
		call    sub_DB6
		ld      ix, 0E009h
		ld      iy, 0E200h
		ld      a, (byte_E052)
		ld      c, a
		ld      hl, 0E051h
		call    sub_CB0
		ld      hl, 0E004h
		ld      a, (hl)
		and     0C0h
		or      (ix+0)
		ld      (hl), a
		ld      ix, 0E00Ah
		ld      iy, 0E206h
		ld      a, (byte_E082)
		ld      c, a
		ld      hl, 0E081h
		call    sub_CB0
		ld      hl, 0E005h
		ld      a, (hl)
		and     0C0h
		or      (ix+0)
		ld      (hl), a
		ret
; End of function sub_C74


; =============== S U B R O U T I N E =======================================


sub_CB0:				; CODE XREF: sub_C74+12↑p
				        ; sub_C74+2E↑p
		bit     2, (hl)
		jp      nz, loc_CDB
		bit     6, (hl)
		jp      nz, loc_CE9
		cp      (ix+0)
		jp      z, loc_D0C
		and     7
		ld      b, a
		ld      a, (ix+0)
		and     7
		cp      b
		jp      nz, loc_CFB
		ld      a, c
		and     18h
		jp      nz, loc_CD4
		set     4, (hl)

loc_CD4:				; CODE XREF: sub_CB0+1F↑j
		ld      a, c
		ld      (ix+0), a
		jp      loc_D0C
; ---------------------------------------------------------------------------

loc_CDB:				; CODE XREF: sub_CB0+2↑j
		bit     0, (hl)
		jp      nz, loc_D0C
		ld      a, c
		ld      (ix+0), a
		ld      (hl), 0
		jp      loc_D0C
; ---------------------------------------------------------------------------

loc_CE9:				; CODE XREF: sub_CB0+7↑j
		bit     4, (hl)
		jp      nz, loc_D0C
		ld      a, c
		and     7
		ld      (ix+0), a
		set     0, (hl)
		set     2, (hl)
		jp      loc_D0C
; ---------------------------------------------------------------------------

loc_CFB:				; CODE XREF: sub_CB0+19↑j
		bit     0, (hl)
		jp      nz, loc_D0C
		ld      a, (ix+0)
		and     7
		ld      (ix+0), a
		set     4, (hl)
		set     6, (hl)

loc_D0C:				; CODE XREF: sub_CB0+D↑j
				        ; sub_CB0+28↑j ...
		bit     1, (hl)
		jp      nz, loc_D1F
		bit     0, (hl)
		jp      z, loc_D2B
		set     1, (hl)
		xor     a
		ld      (iy+1), a
		jp      loc_D2B
; ---------------------------------------------------------------------------

loc_D1F:				; CODE XREF: sub_CB0+5E↑j
		ld      a, (iy+1)
		cp      32h ; '2'
		jp      c, loc_D2B
		res     0, (hl)
		res     1, (hl)

loc_D2B:				; CODE XREF: sub_CB0+63↑j
				        ; sub_CB0+6C↑j ...
		bit     5, (hl)
		jp      nz, loc_D3A
		bit     4, (hl)
		ret     z
		set     5, (hl)
		ld      (iy+0), 0
		ret
; ---------------------------------------------------------------------------

loc_D3A:				; CODE XREF: sub_CB0+7D↑j
		ld      a, (iy+0)
		cp      32h ; '2'
		ret     c
		res     4, (hl)
		res     5, (hl)
		ret
; End of function sub_CB0


; =============== S U B R O U T I N E =======================================


sub_D45:				; CODE XREF: sub_4B2+E↑p
		ld      hl, 0E204h
		ld      de, 0E010h
		ld      ix, 0E012h
		call    sub_D88
		ld      hl, 0E006h
		ld      a, c
		cp      55h ; 'U'
		call    z, sub_D7C
		cp      0AAh
		call    z, sub_D7F
		ld      hl, 0E20Ah
		ld      de, 0E011h
		ld      ix, 0E013h
		call    sub_D88
		ld      hl, 0E006h
		ld      a, c
		cp      55h ; 'U'
		call    z, sub_D82
		cp      0AAh
		call    z, sub_D85
		ret
; End of function sub_D45


; =============== S U B R O U T I N E =======================================


sub_D7C:				; CODE XREF: sub_D45+13↑p
		res     6, (hl)
		ret
; End of function sub_D7C


; =============== S U B R O U T I N E =======================================


sub_D7F:				; CODE XREF: sub_D45+18↑p
		set     6, (hl)
		ret
; End of function sub_D7F


; =============== S U B R O U T I N E =======================================


sub_D82:				; CODE XREF: sub_D45+2E↑p
		res     7, (hl)
		ret
; End of function sub_D82


; =============== S U B R O U T I N E =======================================


sub_D85:				; CODE XREF: sub_D45+33↑p
		set     7, (hl)
		ret
; End of function sub_D85


; =============== S U B R O U T I N E =======================================


sub_D88:				; CODE XREF: sub_D45+A↑p
				        ; sub_D45+25↑p ...
		ld      c, 0
		ld      a, (de)
		cp      55h ; 'U'
		jp      z, loc_DA4
		cp      0AAh
		jp      z, loc_DAF
		ld      a, (ix+0)
		or      a
		ret     z
		ld      a, 55h ; 'U'
		ld      c, a
		ld      (de), a
		ld      (hl), 0
		dec     (ix+0)
		ret
; ---------------------------------------------------------------------------

loc_DA4:				; CODE XREF: sub_D88+5↑j
		ld      a, (hl)
		cp      32h ; '2'
		ret     c
		ld      a, 0AAh
		ld      c, a
		ld      (de), a
		ld      (hl), 0
		ret
; ---------------------------------------------------------------------------

loc_DAF:				; CODE XREF: sub_D88+A↑j
		ld      a, (hl)
		cp      32h ; '2'
		ret     c
		xor     a
		ld      (de), a
		ret
; End of function sub_D88


; =============== S U B R O U T I N E =======================================


sub_DB6:				; CODE XREF: sub_C74↑p
		ld      hl, 0E20Ch
		ld      de, 0E034h
		ld      ix, 0E064h
		call    sub_D88
		ld      hl, 0E004h
		ld      a, c
		cp      55h ; 'U'
		call    z, sub_DED
		cp      0AAh
		call    z, sub_DF2
		ld      hl, 0E20Dh
		ld      de, 0E035h
		ld      ix, 0E094h
		call    sub_D88
		ld      hl, 0E005h
		ld      a, c
		cp      55h ; 'U'
		call    z, sub_DED
		cp      0AAh
		call    z, sub_DF2
		ret
; End of function sub_DB6


; =============== S U B R O U T I N E =======================================


sub_DED:				; CODE XREF: sub_DB6+13↑p
				        ; sub_DB6+2E↑p
		set     6, (hl)
		set     7, (hl)
		ret
; End of function sub_DED


; =============== S U B R O U T I N E =======================================


sub_DF2:				; CODE XREF: sub_DB6+18↑p
				        ; sub_DB6+33↑p
		res     6, (hl)
		res     7, (hl)
		ret
; End of function sub_DF2


; =============== S U B R O U T I N E =======================================


sub_DF7:				; CODE XREF: sub_4B2+1D↑p
		ld      hl, 0E000h
		ld      c, 0C0h
		ld      b, 7

loc_DFE:				; CODE XREF: sub_DF7+C↓j
		ld      a, (hl)
		out     (c), a
		inc     c
		inc     hl
		djnz    loc_DFE
		ret
; End of function sub_DF7


; =============== S U B R O U T I N E =======================================


sub_E06:				; CODE XREF: sub_4A5+6↑p
		ld      hl, 0E200h
		ld      b, 14h

loc_E0B:				; CODE XREF: sub_E06+7↓j
		inc     (hl)
		inc     hl
		djnz    loc_E0B
		ld      hl, 0E214h
		ld      b, 14h

loc_E14:				; CODE XREF: sub_E06+17↓j
		ld      e, (hl)
		inc     hl
		ld      d, (hl)
		inc     de
		ld      (hl), d
		dec     hl
		ld      (hl), e
		inc     hl
		inc     hl
		djnz    loc_E14
		ret
; End of function sub_E06


; =============== S U B R O U T I N E =======================================


sub_E20:				; CODE XREF: sub_4A5↑p
		ld      c, 80h
		ld      hl, 0E100h
		call    sub_F01
		ld      c, 81h
		ld      hl, 0E110h
		call    sub_F01
		ld      c, 84h
		ld      ix, 0E05Bh
		ld      hl, 0E120h
		ld      de, 0E050h
		ld      iy, 0E026h
		call    sub_E6B
		ld      hl, 0E050h
		ld      iy, 0E127h
		call    sub_EC8
		ld      c, 87h
		ld      ix, 0E08Bh
		ld      hl, 0E130h
		ld      de, 0E080h
		ld      iy, 0E028h
		call    sub_E6B
		ld      hl, 0E080h
		ld      iy, 0E137h
		call    sub_EC8
		ret
; End of function sub_E20


; =============== S U B R O U T I N E =======================================


sub_E6B:				; CODE XREF: sub_E20+20↑p
				        ; sub_E20+3D↑p
		xor     a
		ld      (byte_E02A), a
		in      a, (c)
		xor     0FFh
		rrca
		ld      (ix+0), a
		push    hl
		call    sub_F15
		ld      a, c
		cp      0AAh
		jp      nz, loc_E94
		ld      a, (ix-2)
		or      a
		jp      nz, loc_E94
		ld      a, 96h
		call    sub_3DA
		ld      hl, 0E012h
		inc     (hl)
		call    sub_1AEE

loc_E94:				; CODE XREF: sub_E6B+13↑j
				        ; sub_E6B+1A↑j
		ld      a, (ix+0)
		rrca
		ld      (ix+0), a
		pop     hl
		inc     hl
		inc     hl
		push    hl
		call    sub_F15
		ld      a, c
		cp      0AAh
		jp      nz, loc_EBB
		ld      a, (ix-2)
		or      a
		jp      nz, loc_EBB
		ld      a, 96h
		call    sub_3DA
		ld      hl, 0E013h
		inc     (hl)
		call    sub_1AFA

loc_EBB:				; CODE XREF: sub_E6B+3A↑j
				        ; sub_E6B+41↑j
		pop     hl
		inc     hl
		inc     hl
		ld      a, (ix+0)
		ld      e, a
		ld      b, 6
		call    sub_F0C
		ret
; End of function sub_E6B


; =============== S U B R O U T I N E =======================================


sub_EC8:				; CODE XREF: sub_E20+2A↑p
				        ; sub_E20+47↑p
		ld      a, (ix-2)
		or      a
		ret     nz
		ld      a, (iy+0)
		cp      55h ; 'U'
		ret     nz
		ld      a, 0FFh
		ld      (iy+0), a
		ld      a, (ix-5)
		or      a
		jp      z, loc_EE8
		ld      hl, 0E02Bh
		bit     0, (hl)
		ret     z
		set     1, (hl)
		ret
; ---------------------------------------------------------------------------

loc_EE8:				; CODE XREF: sub_EC8+14↑j
		inc     (hl)
		ld      a, (hl)
		cp      1
		call    nz, sub_EFA
		ld      a, 0FFh
		ld      (byte_E02A), a
		ld      a, 98h
		call    sub_3DA
		ret
; End of function sub_EC8


; =============== S U B R O U T I N E =======================================


sub_EFA:				; CODE XREF: sub_EC8+24↑p
		cp      63h ; 'c'
		ret     c
		ld      a, 63h ; 'c'
		ld      (hl), a
		ret
; End of function sub_EFA


; =============== S U B R O U T I N E =======================================


sub_F01:				; CODE XREF: sub_E20+5↑p
				        ; sub_E20+D↑p
		in      a, (c)
		xor     0FFh
		ld      e, a
		ld      b, 8
		call    sub_F0C
		ret
; End of function sub_F01


; =============== S U B R O U T I N E =======================================


sub_F0C:				; CODE XREF: sub_E6B+59↑p
				        ; sub_F01+7↑p ...
		rrc     e
		call    sub_F15
		inc     hl
		djnz    sub_F0C
		ret
; End of function sub_F0C


; =============== S U B R O U T I N E =======================================


sub_F15:				; CODE XREF: sub_E6B+D↑p
				        ; sub_E6B+34↑p ...
		push    de
		ld      c, 0
		ld      a, (hl)
		rla
		and     7
		ld      (hl), a
		ld      d, a
		inc     hl
		ld      a, (hl)
		or      a
		jp      nz, loc_F30
		ld      a, d
		cp      7
		jp      nz, loc_F38
		ld      a, 55h ; 'U'
		ld      (hl), a
		jp      loc_F38
; ---------------------------------------------------------------------------

loc_F30:				; CODE XREF: sub_F15+C↑j
		ld      a, d
		or      a
		jp      nz, loc_F38
		ld      (hl), a
		ld      c, 0AAh

loc_F38:				; CODE XREF: sub_F15+12↑j
				        ; sub_F15+18↑j ...
		pop     de
		ret
; End of function sub_F15


; =============== S U B R O U T I N E =======================================


sub_F3A:				; CODE XREF: sub_4A5+9↑p
		ld      a, (byte_F00A)
		cp      80h
		ret     nz
		ld      ix, 0E300h
		ld      a, (ix+0)
		and     0Fh
		or      a
		ret     z
		ld      c, a
		ld      b, 0
		ld      de, 0E302h
		ld      hl, 0E303h
		ldir
		ld      a, (byte_E302)
		out     (0C7h), a
		ld      (byte_F00A), a
		dec     (ix+0)
		ret
; End of function sub_F3A


; =============== S U B R O U T I N E =======================================


sub_F62:				; CODE XREF: sub_0:loc_295↑p
				        ; sub_0:loc_2DF↑p

; FUNCTION CHUNK AT 0F97 SIZE 000001BF BYTES
; FUNCTION CHUNK AT 19ED SIZE 00000019 BYTES
; FUNCTION CHUNK AT 1A0B SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A15 SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A1F SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A29 SIZE 0000000A BYTES

		ld      a, (iy+4)
		ld      b, (iy+7)
		or      b
		ret     nz
		ld      a, (iy+8)
		cp      0FFh
		ret     z
		cp      17h
		jp      c, loc_F97

loc_F75:				; CODE XREF: sub_1156+13↓j
		res     0, (iy+11h)
		res     1, (iy+11h)
		call    sub_F89
		ld      (iy+8), 0FFh
		ld      (iy+1), 0
		ret
; End of function sub_F62


; =============== S U B R O U T I N E =======================================


sub_F89:				; CODE XREF: sub_F62+1B↑p

; FUNCTION CHUNK AT 1A33 SIZE 00000030 BYTES

		ld      a, (ix+2Eh)
		or      a
		ret     nz
		ld      a, (byte_E016)
		bit     4, a
		ret     z
		jp      loc_1A33
; End of function sub_F89

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F62

loc_F97:				; CODE XREF: sub_F62+10↑j
		cp      1
		jp      z, loc_FCE
		cp      2
		jp      z, loc_FEE
		cp      3
		jp      z, loc_101E
		cp      4
		jp      nc, loc_1050
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      nz, loc_FBE

loc_FB3:				; CODE XREF: sub_F62+71↓j
		ld      a, (ix+8)
		cp      55h ; 'U'
		jp      nz, loc_FC6
		jp      loc_19F2
; ---------------------------------------------------------------------------

loc_FBE:				; CODE XREF: sub_F62+4E↑j
		ld      (iy+8), 1
		call    sub_196D
		ret
; ---------------------------------------------------------------------------

loc_FC6:				; CODE XREF: sub_F62+56↑j
		ld      (iy+8), 2
		call    sub_1974
		ret
; ---------------------------------------------------------------------------

loc_FCE:				; CODE XREF: sub_F62+37↑j
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      z, loc_FB3
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_19ED
		ret
; ---------------------------------------------------------------------------

loc_FEE:				; CODE XREF: sub_F62+3C↑j
		ld      a, (ix+8)
		cp      55h ; 'U'
		jp      z, loc_100E
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_19F7
		ret
; ---------------------------------------------------------------------------

loc_100E:		               ; CODE XREF: sub_F62+91↑j
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      z, loc_19FC
		ld      (iy+8), 3
		call    sub_196D
		ret
; ---------------------------------------------------------------------------

loc_101E:		               ; CODE XREF: sub_F62+41↑j
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      z, loc_103E
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_19ED
		ret
; ---------------------------------------------------------------------------

loc_103E:		               ; CODE XREF: sub_F62+C1↑j
		ld      (iy+8), 4
		call    sub_1981
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		ret     z
		ld      (iy+3), 0B4h
		ret
; ---------------------------------------------------------------------------

loc_1050:		               ; CODE XREF: sub_F62+46↑j
		cp      0Fh
		jp      nc, loc_10D0
		bit     0, a
		jp      nz, loc_1083
		ld      a, (ix+0)
		cp      55h ; 'U'
		jp      z, loc_107C
		push    ix
		ld      ix, (word_E017)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A01
		jp      loc_1083
; ---------------------------------------------------------------------------

loc_107C:		               ; CODE XREF: sub_F62+FD↑j
		set     0, (iy+8)
		call    sub_19C5

loc_1083:		               ; CODE XREF: sub_F62+F5↑j
				        ; sub_F62+117↑j
		bit     1, (iy+8)
		jp      nz, loc_10B3
		ld      a, (ix+4)
		cp      55h ; 'U'
		jp      z, loc_10AC
		push    ix
		ld      ix, (word_E019)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A15
		jp      loc_10B3
; ---------------------------------------------------------------------------

loc_10AC:		               ; CODE XREF: sub_F62+12D↑j
		set     1, (iy+8)
		call    sub_19CA

loc_10B3:		               ; CODE XREF: sub_F62+125↑j
				        ; sub_F62+147↑j
		bit     3, (iy+8)
		ret     nz
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_10C7
		ld      a, (iy+3)
		ret     nz
		jp      loc_1A29
; ---------------------------------------------------------------------------

loc_10C7:		               ; CODE XREF: sub_F62+15B↑j
		set     3, (iy+8)
		ld      (iy+3), 0
		ret
; ---------------------------------------------------------------------------

loc_10D0:		               ; CODE XREF: sub_F62+F0↑j
		bit     4, a
		jp      nz, loc_10E1
		ld      (iy+8), 10h
		ld      (iy+3), 5Ah ; 'Z'
		call    sub_1988
		ret
; ---------------------------------------------------------------------------

loc_10E1:		               ; CODE XREF: sub_F62+170↑j
		bit     0, a
		jp      nz, loc_110F
		ld      a, (ix+2)
		cp      55h ; 'U'
		jp      z, loc_1108
		push    ix
		ld      ix, (word_E017)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A0B
		jp      loc_110F
; ---------------------------------------------------------------------------

loc_1108:		               ; CODE XREF: sub_F62+189↑j
		set     0, (iy+8)
		call    sub_19C5

loc_110F:		               ; CODE XREF: sub_F62+181↑j
				        ; sub_F62+1A3↑j
		bit     1, (iy+8)
		jp      nz, loc_113F
		ld      a, (ix+6)
		cp      55h ; 'U'
		jp      z, loc_1138
		push    ix
		ld      ix, (word_E019)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A1F
		jp      loc_113F
; ---------------------------------------------------------------------------

loc_1138:		               ; CODE XREF: sub_F62+1B9↑j
		set     1, (iy+8)
		call    sub_19CA

loc_113F:		               ; CODE XREF: sub_F62+1B1↑j
				        ; sub_F62+1D3↑j
		bit     2, (iy+8)
		ret     nz
		ld      a, (iy+3)
		or      a
		ret     nz
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_1A2E
		set     2, (iy+8)
		ret
; END OF FUNCTION CHUNK FOR sub_F62

; =============== S U B R O U T I N E =======================================


sub_1156:		               ; CODE XREF: sub_0:loc_2A0↑p
				        ; sub_0:loc_2EA↑p

; FUNCTION CHUNK AT 19ED SIZE 00000019 BYTES
; FUNCTION CHUNK AT 1A0B SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A1F SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A29 SIZE 0000000A BYTES

		ld      a, (iy+4)
		ld      b, (iy+7)
		or      b
		ret     nz
		ld      a, (iy+8)
		cp      0FFh
		ret     z
		cp      9Fh
		jp      c, loc_116C
		jp      loc_F75
; ---------------------------------------------------------------------------

loc_116C:		               ; CODE XREF: sub_1156+10↑j
		cp      1
		jp      z, loc_1199
		cp      80h
		jp      nc, loc_11B9
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      nz, loc_1189

loc_117E:		               ; CODE XREF: sub_1156+48↓j
		ld      a, (ix+8)
		cp      55h ; 'U'
		jp      nz, loc_1191
		jp      loc_19F2
; ---------------------------------------------------------------------------

loc_1189:		               ; CODE XREF: sub_1156+25↑j
		ld      (iy+8), 1
		call    sub_196D
		ret
; ---------------------------------------------------------------------------

loc_1191:		               ; CODE XREF: sub_1156+2D↑j
		ld      (iy+8), 80h
		call    sub_1988
		ret
; ---------------------------------------------------------------------------

loc_1199:		               ; CODE XREF: sub_1156+18↑j
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      z, loc_117E
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_19ED
		ret
; ---------------------------------------------------------------------------

loc_11B9:		               ; CODE XREF: sub_1156+1D↑j
		bit     2, a
		jp      nz, loc_120B
		bit     1, a
		jp      nz, loc_11F8
		bit     0, a
		jp      nz, loc_11DB
		set     0, (iy+8)
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_11E3
		ld      (iy+3), 0B4h
		jp      loc_120B
; ---------------------------------------------------------------------------

loc_11DB:		               ; CODE XREF: sub_1156+6F↑j
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      nz, loc_11EE

loc_11E3:		               ; CODE XREF: sub_1156+7B↑j
		set     1, (iy+8)
		ld      (iy+3), 5Ah ; 'Z'
		jp      loc_120B
; ---------------------------------------------------------------------------

loc_11EE:		               ; CODE XREF: sub_1156+8A↑j
		ld      a, (iy+3)
		or      a
		jp      nz, loc_120B
		jp      loc_1A29
; ---------------------------------------------------------------------------

loc_11F8:		               ; CODE XREF: sub_1156+6A↑j
		ld      a, (iy+3)
		or      a
		jp      nz, loc_120B
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_1A2E
		set     2, (iy+8)

loc_120B:		               ; CODE XREF: sub_1156+65↑j
				        ; sub_1156+82↑j ...
		bit     3, (iy+8)
		jp      nz, loc_123B
		ld      a, (ix+2)
		cp      55h ; 'U'
		jp      z, loc_1234
		push    ix
		ld      ix, (word_E017)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A0B
		jp      loc_123B
; ---------------------------------------------------------------------------

loc_1234:		               ; CODE XREF: sub_1156+C1↑j
		set     3, (iy+8)
		call    sub_19C5

loc_123B:		               ; CODE XREF: sub_1156+B9↑j
				        ; sub_1156+DB↑j
		bit     4, (iy+8)
		ret     nz
		ld      a, (ix+6)
		cp      55h ; 'U'
		jp      z, loc_1260
		push    ix
		ld      ix, (word_E019)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A1F
		ret
; ---------------------------------------------------------------------------

loc_1260:		               ; CODE XREF: sub_1156+EF↑j
		set     4, (iy+8)
		call    sub_19CA
		ret
; End of function sub_1156


; =============== S U B R O U T I N E =======================================


sub_1268:		               ; CODE XREF: sub_0:loc_2A3↑p
				        ; sub_0+2F0↑p

; FUNCTION CHUNK AT 12B8 SIZE 00000054 BYTES
; FUNCTION CHUNK AT 1334 SIZE 0000041B BYTES
; FUNCTION CHUNK AT 19ED SIZE 00000019 BYTES
; FUNCTION CHUNK AT 1A06 SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A0B SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A10 SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A15 SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A1A SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A1F SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A24 SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A29 SIZE 0000000A BYTES

		ld      a, (iy+4)
		ld      b, (iy+7)
		or      b
		ret     nz
		ld      a, (iy+8)
		cp      0FFh
		ret     nz
		ld      a, (iy+1)
		or      a
		jp      nz, loc_12B8
		call    sub_130C
		ld      a, (iy-2)
		or      a
		ret     z
		push    ix
		ld      ix, (word_E01D)
		ld      (ix+0), 0
		ld      (ix+1), 0
		pop     ix
		ld      (iy+5), 1
		ld      (iy+6), 0
		ld      (iy+0Ah), 12h
		ld      (iy+1), 1
		xor     a
		ld      (byte_E02C), a
		ret
; End of function sub_1268


; =============== S U B R O U T I N E =======================================


sub_12AA:		               ; CODE XREF: sub_1268+30A↓p
		ld      (iy+0Fh), 0FFh
		ld      a, (ix+2Eh)
		or      a
		ret     z
		ld      (iy+0Fh), 0
		ret
; End of function sub_12AA

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1268

loc_12B8:		               ; CODE XREF: sub_1268+12↑j
		cp      0Ch
		jp      nc, loc_1354
		push    ix
		ld      ix, (word_E01D)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 7530h
		or      a
		sbc     hl, bc
		jp      nc, loc_1334
		ld      a, (iy+1)
		cp      1
		jp      z, loc_1552
		cp      2
		jp      z, loc_1576
		cp      3
		jp      z, loc_15A4
		cp      4
		jp      z, loc_15BF
		cp      5
		jp      z, loc_1624
		cp      7
		jp      z, loc_1664
		cp      8
		jp      z, loc_166F
		cp      9
		jp      z, loc_168F
		cp      0Ah
		jp      z, loc_16A7
		cp      0Bh
		jp      z, loc_1707
		jp      sub_0
; END OF FUNCTION CHUNK FOR sub_1268

; =============== S U B R O U T I N E =======================================


sub_130C:		               ; CODE XREF: sub_1268+15↑p
				        ; sub_1268+2F2↓p ...
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 3E8h
		or      a
		sbc     hl, bc
		jp      c, loc_1330
		ld      bc, 7D0h
		or      a
		sbc     hl, bc
		jp      nc, loc_1978
		call    sub_19B2
		ret
; ---------------------------------------------------------------------------

loc_1330:		               ; CODE XREF: sub_130C+14↑j
		call    sub_19B7
		ret
; End of function sub_130C

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1268

loc_1334:		               ; CODE XREF: sub_1268+69↑j
		ld      a, (iy+1)
		cp      1
		jp      nz, loc_1340
		ld      (iy+13h), 1

loc_1340:		               ; CODE XREF: sub_1268+D1↑j
				        ; sub_1268+424↓j ...
		call    sub_19BC
		ld      (iy+0Ah), 0
		ld      (iy+1), 0Ch
		ld      (iy+5), 5
		ld      (iy+3), 64h ; 'd'
		ret
; ---------------------------------------------------------------------------

loc_1354:		               ; CODE XREF: sub_1268+52↑j
		cp      0Ch
		jp      z, loc_1532
		cp      0Dh
		jp      z, loc_14DA
		cp      0Eh
		jp      z, loc_14C1
		cp      0Fh
		jp      z, loc_148A
		cp      13h
		jp      z, loc_1467
		cp      14h
		jp      z, loc_1420
		cp      15h
		jp      z, loc_13E7
		call    sub_174F
		bit     0, (iy+1)
		jp      nz, loc_13B2
		ld      a, (ix+2)
		cp      55h ; 'U'
		jp      z, loc_13A3
		push    ix
		ld      ix, (word_E017)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A0B
		jp      loc_13B2
; ---------------------------------------------------------------------------

loc_13A3:		               ; CODE XREF: sub_1268+11E↑j
		ld      a, (ix+0)
		cp      55h ; 'U'
		jp      z, loc_1A10
		call    sub_19C5
		set     0, (iy+1)

loc_13B2:		               ; CODE XREF: sub_1268+116↑j
				        ; sub_1268+138↑j
		bit     1, (iy+1)
		ret     nz
		ld      a, (ix+6)
		cp      55h ; 'U'
		jp      z, loc_13D7
		push    ix
		ld      ix, (word_E019)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A1F
		ret
; ---------------------------------------------------------------------------

loc_13D7:		               ; CODE XREF: sub_1268+154↑j
		ld      a, (ix+4)
		cp      55h ; 'U'
		jp      z, loc_1A24
		call    sub_19CA
		set     1, (iy+1)
		ret
; ---------------------------------------------------------------------------

loc_13E7:		               ; CODE XREF: sub_1268+10C↑j
		ld      a, (iy+3)
		or      a
		ret     nz
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_1A2E
		ld      hl, 7530h
		ld      (word_E214), hl
		ld      a, (byte_E02B)
		and     80h
		ld      (byte_E02B), a
		ld      (iy+1), 0
		ld      (iy+0Ah), 0
		ld      (iy+6), 0
		ld      a, (byte_E014)
		bit     0, a
		jp      nz, loc_141B
		ld      (iy+5), 3
		ret
; ---------------------------------------------------------------------------

loc_141B:		               ; CODE XREF: sub_1268+1AB↑j
		ld      (iy+5), 4
		ret
; ---------------------------------------------------------------------------

loc_1420:		               ; CODE XREF: sub_1268+107↑j
		call    sub_174F
		ld      a, (iy+0Fh)
		or      a
		jp      z, loc_142D
		call    sub_19B2

loc_142D:		               ; CODE XREF: sub_1268+1BF↑j
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_1445
		ld      hl, (word_E01D)
		ld      (hl), 0
		inc     hl
		ld      (hl), 0
		ld      a, (iy+3)
		or      a
		ret     nz
		jp      loc_1A29
; ---------------------------------------------------------------------------

loc_1445:		               ; CODE XREF: sub_1268+1CA↑j
		ld      (iy+3), 0
		push    ix
		ld      ix, (word_E01D)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 2BCh
		or      a
		sbc     hl, bc
		ret     c
		ld      (iy+3), 5Ah ; 'Z'
		ld      (iy+1), 15h
		ret
; ---------------------------------------------------------------------------

loc_1467:		               ; CODE XREF: sub_1268+102↑j
		call    sub_174F
		ld      a, (byte_E039)
		cp      0AAh
		jp      nz, loc_1475
		inc     (iy+12h)

loc_1475:		               ; CODE XREF: sub_1268+207↑j
		ld      (iy+1), 14h
		ld      (iy+3), 64h ; 'd'
		ld      (iy+5), 9
		ld      a, (iy-2)
		or      a
		ret     z
		dec     (iy-2)
		ret
; ---------------------------------------------------------------------------

loc_148A:		               ; CODE XREF: sub_1268+FD↑j
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      z, loc_14AA
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_19ED
		ret
; ---------------------------------------------------------------------------

loc_14AA:		               ; CODE XREF: sub_1268+227↑j
		call    sub_19CF
		ld      a, (ix+8)
		cp      55h ; 'U'
		jp      z, loc_19F2
		call    sub_1988
		ld      (iy+5), 0Eh
		ld      (iy+1), 10h
		ret
; ---------------------------------------------------------------------------

loc_14C1:		               ; CODE XREF: sub_1268+F8↑j
		ld      a, (iy+3)
		or      a
		ret     nz
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_1A2E
		call    sub_196D
		ld      (iy+5), 0Ch
		ld      (iy+1), 0Fh
		ret
; ---------------------------------------------------------------------------

loc_14DA:		               ; CODE XREF: sub_1268+F3↑j
		ld      a, (ix+8)
		cp      55h ; 'U'
		jp      z, loc_151A
		ld      a, (iy+13h)
		or      a
		jp      nz, loc_1501
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_19F7
		ret
; ---------------------------------------------------------------------------

loc_1501:		               ; CODE XREF: sub_1268+27E↑j
		push    ix
		ld      ix, (word_E01B)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1F4h
		or      a
		sbc     hl, bc
		ret     c
		ld      (iy+13h), 0

loc_151A:		               ; CODE XREF: sub_1268+277↑j
		call    sub_19CF
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      z, loc_19FC
		ld      (iy+5), 0Dh
		ld      (iy+3), 5Ah ; 'Z'
		ld      (iy+1), 0Eh
		ret
; ---------------------------------------------------------------------------

loc_1532:		               ; CODE XREF: sub_1268+EE↑j
		ld      a, (ix+0Ch)
		cp      55h ; 'U'
		jp      z, loc_1542
		ld      a, (iy+3)
		or      a
		ret     nz
		jp      loc_1A29
; ---------------------------------------------------------------------------

loc_1542:		               ; CODE XREF: sub_1268+2CF↑j
		ld      (iy+5), 0Bh
		ld      (iy+3), 0
		ld      (iy+1), 0Dh
		call    sub_1974
		ret
; ---------------------------------------------------------------------------

loc_1552:		               ; CODE XREF: sub_1268+71↑j
		ld      a, (byte_E039)
		cp      0AAh
		jp      z, loc_1563
		call    sub_130C
		ld      a, (ix+2Ah)
		cp      55h ; 'U'
		ret     nz

loc_1563:		               ; CODE XREF: sub_1268+2EF↑j
		ld      (iy+0Ah), 40h ; '@'
		ld      (iy+1), 4
		ld      (iy+5), 7
		call    sub_1996
		call    sub_12AA
		ret
; ---------------------------------------------------------------------------

loc_1576:		               ; CODE XREF: sub_1268+76↑j
		ld      a, (ix+2Ah)
		cp      55h ; 'U'
		jp      nz, loc_158E

loc_157E:		               ; CODE XREF: sub_1268+3A9↓j
		ld      (iy+0Ah), 40h ; '@'
		ld      (iy+1), 5
		ld      (iy+5), 7
		call    sub_199D
		ret
; ---------------------------------------------------------------------------

loc_158E:		               ; CODE XREF: sub_1268+313↑j
				        ; sub_1268+344↓j ...
		ld      a, (ix+2Ch)
		cp      55h ; 'U'
		ret     nz

loc_1594:		               ; CODE XREF: sub_1268+401↓j
				        ; sub_1268+40C↓j ...
		ld      (iy+0Ah), 80h
		ld      (iy+1), 0Ah
		ld      (iy+5), 8
		call    sub_19A4
		ret
; ---------------------------------------------------------------------------

loc_15A4:		               ; CODE XREF: sub_1268+7B↑j
		call    sub_130C
		ld      a, (ix+2Ah)
		cp      55h ; 'U'
		jp      nz, loc_158E

loc_15AF:		               ; CODE XREF: sub_1268+3F9↓j
		ld      (iy+0Ah), 40h ; '@'
		ld      (iy+1), 4
		ld      (iy+5), 7
		call    sub_1996
		ret
; ---------------------------------------------------------------------------

loc_15BF:		               ; CODE XREF: sub_1268+80↑j
		push    ix
		ld      ix, (word_E017)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A01
		ld      a, (byte_E039)
		cp      0AAh
		jp      z, loc_15FE
		ld      a, (ix+2Ah)
		cp      55h ; 'U'
		jp      z, loc_15FE
		ld      a, (byte_E039)
		cp      0FFh
		jp      nz, loc_1614
		call    sub_19C5
		ld      (iy+0Ah), 52h ; 'R'
		ld      (iy+1), 3
		ld      (iy+5), 1
		ret
; ---------------------------------------------------------------------------

loc_15FE:		               ; CODE XREF: sub_1268+373↑j
				        ; sub_1268+37B↑j
		ld      a, (ix+0)
		cp      55h ; 'U'
		ret     nz
		ld      a, (ix+2)
		cp      55h ; 'U'
		jp      z, loc_1A06
		ld      a, (byte_E039)
		cp      0FFh
		jp      z, loc_157E

loc_1614:		               ; CODE XREF: sub_1268+383↑j
		call    sub_19C5
		ld      (iy+0Ah), 22h ; '"'
		ld      (iy+1), 7
		ld      (iy+5), 1
		ret
; ---------------------------------------------------------------------------

loc_1624:		               ; CODE XREF: sub_1268+85↑j
		push    ix
		ld      ix, (word_E017)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A0B
		ld      a, (ix+2Ah)
		cp      55h ; 'U'
		jp      z, loc_1653
		call    sub_19C5
		ld      (iy+0Ah), 52h ; 'R'
		ld      (iy+1), 2
		ld      (iy+5), 1
		ret
; ---------------------------------------------------------------------------

loc_1653:		               ; CODE XREF: sub_1268+3D8↑j
		ld      a, (ix+2)
		cp      55h ; 'U'
		ret     nz
		ld      a, (ix+0)
		cp      55h ; 'U'
		jp      z, loc_1A10
		jp      loc_15AF
; ---------------------------------------------------------------------------

loc_1664:		               ; CODE XREF: sub_1268+8A↑j
		ld      a, (byte_E039)
		cp      0AAh
		jp      z, loc_1594
		jp      loc_158E
; ---------------------------------------------------------------------------

loc_166F:		               ; CODE XREF: sub_1268+8F↑j
		ld      a, (ix+2Ch)
		cp      55h ; 'U'
		jp      z, loc_1594

loc_1677:		               ; CODE XREF: sub_1268+42C↓j
		push    ix
		ld      ix, (word_E01F)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 2BCh
		or      a
		sbc     hl, bc
		ret     c
		jp      loc_1340
; ---------------------------------------------------------------------------

loc_168F:		               ; CODE XREF: sub_1268+94↑j
		ld      a, (ix+2Ch)
		cp      55h ; 'U'
		jp      nz, loc_1677

loc_1697:		               ; CODE XREF: sub_1268+499↓j
		ld      (iy+0Ah), 80h
		ld      (iy+1), 0Bh
		ld      (iy+5), 8
		call    sub_19AB
		ret
; ---------------------------------------------------------------------------

loc_16A7:		               ; CODE XREF: sub_1268+99↑j
		push    ix
		ld      ix, (word_E019)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A15
		ld      a, (byte_E039)
		cp      0AAh
		jp      z, loc_16EE
		ld      a, (ix+2Ch)
		cp      55h ; 'U'
		jp      z, loc_16EE
		ld      a, (byte_E039)
		cp      0FFh
		jp      nz, loc_1340
		call    sub_19CA
		ld      (iy+0Ah), 22h ; '"'
		ld      (iy+1), 8
		ld      (iy+5), 1
		ld      hl, (word_E01F)
		ld      (hl), 0
		inc     hl
		ld      (hl), 0
		ret
; ---------------------------------------------------------------------------

loc_16EE:		               ; CODE XREF: sub_1268+45B↑j
				        ; sub_1268+463↑j
		ld      a, (ix+4)
		cp      55h ; 'U'
		ret     nz
		ld      a, (ix+6)
		cp      55h ; 'U'
		jp      z, loc_1A1A
		ld      a, (byte_E039)
		cp      0FFh
		jp      z, loc_1697
		jp      loc_1340
; ---------------------------------------------------------------------------

loc_1707:		               ; CODE XREF: sub_1268+9E↑j
		push    ix
		ld      ix, (word_E019)
		ld      l, (ix+0)
		ld      h, (ix+1)
		pop     ix
		ld      bc, 1388h
		or      a
		sbc     hl, bc
		jp      nc, loc_1A1F
		ld      a, (ix+2Ch)
		cp      55h ; 'U'
		jp      z, loc_173E
		call    sub_19CA
		ld      (iy+0Ah), 22h ; '"'
		ld      (iy+1), 9
		ld      (iy+5), 1
		ld      hl, (word_E01F)
		ld      (hl), 0
		inc     hl
		ld      (hl), 0
		ret
; ---------------------------------------------------------------------------

loc_173E:		               ; CODE XREF: sub_1268+4BB↑j
		ld      a, (ix+6)
		cp      55h ; 'U'
		ret     nz
		ld      a, (ix+4)
		cp      55h ; 'U'
		jp      z, loc_1A24
		jp      loc_1594
; END OF FUNCTION CHUNK FOR sub_1268

; =============== S U B R O U T I N E =======================================


sub_174F:		               ; CODE XREF: sub_1268+10F↑p
				        ; sub_1268:loc_1420↑p ...
		ld      a, (ix+2Eh)
		or      a
		jp      nz, loc_1760
		ld      a, (iy+0Fh)
		cp      0FEh
		ret     nc
		inc     (iy+0Fh)
		ret
; ---------------------------------------------------------------------------

loc_1760:		               ; CODE XREF: sub_174F+4↑j
		ld      a, (iy+0Fh)
		or      a
		ret     z
		cp      0FFh
		ret     z
		ld      a, (byte_E039)
		cp      0AAh
		jp      z, loc_1773
		inc     (iy+12h)

loc_1773:		               ; CODE XREF: sub_174F+1E↑j
		ld      a, (iy+0Fh)
		ld      (iy+0Fh), 0FFh
		ld      (iy+0Ah), 41h ; 'A'
		ld      (iy+5), 6
		cp      14h
		jp      c, loc_1792
		cp      1Eh
		jp      c, loc_1798
		ld      a, 9Bh
		call    sub_3DA
		ret
; ---------------------------------------------------------------------------

loc_1792:		               ; CODE XREF: sub_174F+35↑j
		ld      a, 99h
		call    sub_3DA
		ret
; ---------------------------------------------------------------------------

loc_1798:		               ; CODE XREF: sub_174F+3A↑j
		ld      a, 9Ah
		call    sub_3DA
		ret
; End of function sub_174F


; =============== S U B R O U T I N E =======================================


sub_179E:		               ; CODE XREF: sub_0+2A6↑p
				        ; sub_0+2F3↑p

; FUNCTION CHUNK AT 1951 SIZE 0000001C BYTES
; FUNCTION CHUNK AT 1A06 SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A10 SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A1A SIZE 00000005 BYTES
; FUNCTION CHUNK AT 1A24 SIZE 00000005 BYTES

		ld      a, (iy+7)
		or      a
		jp      nz, loc_17DE
		ld      a, (ix+24h)
		cp      55h ; 'U'
		ret     nz
		ld      (ix+24h), 0FFh
		set     0, (iy+11h)
		res     1, (iy+11h)
		xor     a
		ld      (byte_E02C), a
		call    sub_19BC
		ld      (iy+7), 1
		ld      (iy+5), 0F0h
		ld      (iy+0Ah), 33h ; '3'
		ld      (iy+8), 0FFh
		ld      a, 40h ; '@'
		ld      (byte_E02B), a
		ld      a, 0FFh
		call    sub_3DA
		ld      a, 97h
		call    sub_3DA
		ret
; ---------------------------------------------------------------------------

loc_17DE:		               ; CODE XREF: sub_179E+4↑j
		ld      a, (ix+24h)
		cp      55h ; 'U'
		jp      nz, loc_180A
		ld      (ix+24h), 0FFh
		call    sub_19BC
		ld      (iy+5), 3
		xor     a
		ld      (iy+6), a
		ld      (iy+1), a
		ld      (iy+4), a
		ld      (iy+7), a
		ld      (iy+8), a
		ld      (iy+0Ah), a
		ld      a, 0FFh
		call    sub_3DA
		ret
; ---------------------------------------------------------------------------

loc_180A:		               ; CODE XREF: sub_179E+45↑j
		ld      a, (iy+7)
		cp      0Ah
		jp      z, loc_1834
		ld      a, (ix+2Ch)
		cp      55h ; 'U'
		jp      z, loc_1864
		ld      (iy+0Ah), 33h ; '3'
		call    sub_19BC
		ld      (iy+3), 0
		ld      a, (ix+2Ah)
		or      a
		ret     z
		cp      55h ; 'U'
		jp      z, loc_1849
		ld      (iy+0Ah), 40h ; '@'
		ret
; ---------------------------------------------------------------------------

loc_1834:		               ; CODE XREF: sub_179E+71↑j
		ld      (iy+0Ah), 13h
		ld      a, (ix+2Ah)
		or      a
		jp      z, loc_1951
		cp      55h ; 'U'
		jp      z, loc_1849
		ld      (iy+0Ah), 40h ; '@'
		ret
; ---------------------------------------------------------------------------

loc_1849:		               ; CODE XREF: sub_179E+8E↑j
				        ; sub_179E+A3↑j
		ld      a, 0FFh
		call    sub_3DA
		ld      (iy+5), 0F0h
		ld      (ix+2Ah), 0FFh
		inc     (iy+7)
		ld      a, (iy+7)
		cp      0Bh
		ret     nz
		ld      (iy+7), 1
		ret
; ---------------------------------------------------------------------------

loc_1864:		               ; CODE XREF: sub_179E+79↑j
		ld      (iy+0Ah), 80h
		ld      a, (iy+7)
		cp      1
		jp      z, loc_189F
		cp      2
		jp      z, loc_18B4
		cp      3
		jp      z, loc_18C9
		cp      4
		jp      z, loc_18DE
		cp      5
		jp      z, loc_18F3
		cp      6
		jp      z, loc_1908
		cp      7
		jp      z, loc_191D
		cp      0Ah
		jp      z, loc_1951
		ld      (ix+2Ch), 0FFh
		cp      8
		jp      z, loc_1932
		jp      loc_1936
; ---------------------------------------------------------------------------

loc_189F:		               ; CODE XREF: sub_179E+CF↑j
		ld      a, (ix+0)
		cp      55h ; 'U'
		jp      nz, sub_1996
		ld      a, (ix+2)
		cp      55h ; 'U'
		jp      z, loc_1A06
		ld      (iy+7), 2
		ret
; ---------------------------------------------------------------------------

loc_18B4:		               ; CODE XREF: sub_179E+D4↑j
		ld      a, (ix+2)
		cp      55h ; 'U'
		jp      nz, sub_199D
		ld      a, (ix+0)
		cp      55h ; 'U'
		jp      z, loc_1A10
		ld      (iy+7), 1
		ret
; ---------------------------------------------------------------------------

loc_18C9:		               ; CODE XREF: sub_179E+D9↑j
		ld      a, (ix+4)
		cp      55h ; 'U'
		jp      nz, sub_19A4
		ld      a, (ix+6)
		cp      55h ; 'U'
		jp      z, loc_1A1A
		ld      (iy+7), 4
		ret
; ---------------------------------------------------------------------------

loc_18DE:		               ; CODE XREF: sub_179E+DE↑j
		ld      a, (ix+6)
		cp      55h ; 'U'
		jp      nz, sub_19AB
		ld      a, (ix+4)
		cp      55h ; 'U'
		jp      z, loc_1A24
		ld      (iy+7), 3
		ret
; ---------------------------------------------------------------------------

loc_18F3:		               ; CODE XREF: sub_179E+E3↑j
		ld      a, (ix+8)
		cp      55h ; 'U'
		jp      nz, sub_1974
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      z, loc_19FC
		ld      (iy+7), 6
		ret
; ---------------------------------------------------------------------------

loc_1908:		               ; CODE XREF: sub_179E+E8↑j
		ld      a, (ix+0Ah)
		cp      55h ; 'U'
		jp      nz, sub_196D
		ld      a, (ix+8)
		cp      55h ; 'U'
		jp      z, loc_19F2
		ld      (iy+7), 5
		ret
; ---------------------------------------------------------------------------

loc_191D:		               ; CODE XREF: sub_179E+ED↑j
		ld      (iy+3), 0Ah
		ld      a, (ix+0Ch)
		or      a
		jp      z, loc_192D
		ld      (iy+5), 0F1h
		ret
; ---------------------------------------------------------------------------

loc_192D:		               ; CODE XREF: sub_179E+187↑j
		ld      (iy+5), 0F0h
		ret
; ---------------------------------------------------------------------------

loc_1932:		               ; CODE XREF: sub_179E+FB↑j
		inc     (iy+5)
		ret
; ---------------------------------------------------------------------------

loc_1936:		               ; CODE XREF: sub_179E+FE↑j
		ld      a, 0FFh
		call    sub_3DA
		ld      hl, (word_E02F)
		inc     hl
		ld      a, (hl)
		cp      0FFh
		call    z, sub_194C
		ld      (word_E02F), hl
		call    sub_3DA
		ret
; End of function sub_179E


; =============== S U B R O U T I N E =======================================


sub_194C:		               ; CODE XREF: sub_179E+1A4↑p
		ld      hl, unk_1E7
		ld      a, (hl)
		ret
; End of function sub_194C

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_179E

loc_1951:		               ; CODE XREF: sub_179E+9E↑j
				        ; sub_179E+F2↑j
		call    sub_19B2
		ld      a, (ix+2Eh)
		or      a
		jp      z, loc_1967
		ld      a, (byte_E301)
		cp      0A2h
		ret     z
		ld      a, 0A2h
		call    sub_3DA
		ret
; ---------------------------------------------------------------------------

loc_1967:		               ; CODE XREF: sub_179E+1BA↑j
		ld      a, 0FFh
		call    sub_3DA
		ret
; END OF FUNCTION CHUNK FOR sub_179E

; =============== S U B R O U T I N E =======================================


sub_196D:		               ; CODE XREF: sub_F62+60↑p
				        ; sub_F62+B8↑p ...
		ld      (iy+0), 0Bh
		jp      loc_1978
; End of function sub_196D


; =============== S U B R O U T I N E =======================================


sub_1974:		               ; CODE XREF: sub_F62+68↑p
				        ; sub_1268+2E6↑p ...
		ld      (iy+0), 9

loc_1978:		               ; CODE XREF: sub_130C+1D↑j
				        ; sub_196D+4↑j
		ld      hl, (word_E01B)
		ld      (hl), 0
		inc     hl
		ld      (hl), 0
		ret
; End of function sub_1974


; =============== S U B R O U T I N E =======================================


sub_1981:		               ; CODE XREF: sub_F62+E0↑p

; FUNCTION CHUNK AT 19E6 SIZE 00000007 BYTES

		ld      (iy+0), 18h
		jp      loc_19E6
; End of function sub_1981


; =============== S U B R O U T I N E =======================================


sub_1988:		               ; CODE XREF: sub_F62+17B↑p
				        ; sub_1156+3F↑p ...

; FUNCTION CHUNK AT 19E6 SIZE 00000007 BYTES

		ld      (iy+0), 1Eh
		jp      loc_19E6
; End of function sub_1988

; ---------------------------------------------------------------------------
		ld      (iy+0), 1Ah
		jp      loc_19E6

; =============== S U B R O U T I N E =======================================


sub_1996:		               ; CODE XREF: sub_1268+307↑p
				        ; sub_1268+353↑p ...
		ld      (iy+0), 8
		jp      sub_19D4
; End of function sub_1996


; =============== S U B R O U T I N E =======================================


sub_199D:		               ; CODE XREF: sub_1268+322↑p
				        ; sub_179E+11B↑j
		ld      (iy+0), 0Ah
		jp      sub_19D4
; End of function sub_199D


; =============== S U B R O U T I N E =======================================


sub_19A4:		               ; CODE XREF: sub_1268+338↑p
				        ; sub_179E+130↑j
		ld      (iy+0), 10h
		jp      sub_19DD
; End of function sub_19A4


; =============== S U B R O U T I N E =======================================


sub_19AB:		               ; CODE XREF: sub_1268+43B↑p
				        ; sub_179E+145↑j
		ld      (iy+0), 14h
		jp      sub_19DD
; End of function sub_19AB


; =============== S U B R O U T I N E =======================================


sub_19B2:		               ; CODE XREF: sub_130C+20↑p
				        ; sub_1268+1C2↑p ...
		ld      (iy+0), 11h
		ret
; End of function sub_19B2


; =============== S U B R O U T I N E =======================================


sub_19B7:		               ; CODE XREF: sub_130C:loc_1330↑p
		res     4, (iy+0)
		ret
; End of function sub_19B7


; =============== S U B R O U T I N E =======================================


sub_19BC:		               ; CODE XREF: sub_1268:loc_1340↑p
				        ; sub_179E+1D↑p ...
		ld      a, (iy+0)
		and     7
		ld      (iy+0), a
		ret
; End of function sub_19BC


; =============== S U B R O U T I N E =======================================


sub_19C5:		               ; CODE XREF: sub_F62+11E↑p
				        ; sub_F62+1AA↑p ...
		res     3, (iy+0)
		ret
; End of function sub_19C5


; =============== S U B R O U T I N E =======================================


sub_19CA:		               ; CODE XREF: sub_F62+14E↑p
				        ; sub_F62+1DA↑p ...
		res     4, (iy+0)
		ret
; End of function sub_19CA


; =============== S U B R O U T I N E =======================================


sub_19CF:		               ; CODE XREF: sub_1268:loc_14AA↑p
				        ; sub_1268:loc_151A↑p
		res     3, (iy+0)
		ret
; End of function sub_19CF


; =============== S U B R O U T I N E =======================================


sub_19D4:		               ; CODE XREF: sub_1996+4↑j
				        ; sub_199D+4↑j ...
		ld      hl, (word_E017)
		ld      (hl), 0
		inc     hl
		ld      (hl), 0
		ret
; End of function sub_19D4


; =============== S U B R O U T I N E =======================================


sub_19DD:		               ; CODE XREF: sub_19A4+4↑j
				        ; sub_19AB+4↑j ...
		ld      hl, (word_E019)
		ld      (hl), 0
		inc     hl
		ld      (hl), 0
		ret
; End of function sub_19DD

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1981
;   ADDITIONAL PARENT FUNCTION sub_1988

loc_19E6:		               ; CODE XREF: sub_1981+4↑j
				        ; sub_1988+4↑j ...
		call    sub_19D4
		call    sub_19DD
		ret
; END OF FUNCTION CHUNK FOR sub_1981
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F62
;   ADDITIONAL PARENT FUNCTION sub_1156
;   ADDITIONAL PARENT FUNCTION sub_1268

loc_19ED:		               ; CODE XREF: sub_F62+88↑j
				        ; sub_F62+D8↑j ...
		ld      a, 8
		jp      loc_1A38
; ---------------------------------------------------------------------------

loc_19F2:		               ; CODE XREF: sub_F62+59↑j
				        ; sub_1156+30↑j ...
		ld      a, 9
		jp      loc_1A38
; ---------------------------------------------------------------------------

loc_19F7:		               ; CODE XREF: sub_F62+A8↑j
				        ; sub_1268+295↑j
		ld      a, 18h
		jp      loc_1A38
; ---------------------------------------------------------------------------

loc_19FC:		               ; CODE XREF: sub_F62+B1↑j
				        ; sub_1268+2BA↑j ...
		ld      a, 19h
		jp      loc_1A38
; ---------------------------------------------------------------------------

loc_1A01:		               ; CODE XREF: sub_F62+114↑j
				        ; sub_1268+36B↑j
		ld      a, 28h ; '('
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_F62
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1268
;   ADDITIONAL PARENT FUNCTION sub_179E

loc_1A06:		               ; CODE XREF: sub_1268+3A1↑j
				        ; sub_179E+10E↑j
		ld      a, 29h ; ')'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_1268
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F62
;   ADDITIONAL PARENT FUNCTION sub_1156
;   ADDITIONAL PARENT FUNCTION sub_1268

loc_1A0B:		               ; CODE XREF: sub_F62+1A0↑j
				        ; sub_1156+D8↑j ...
		ld      a, 38h ; '8'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_F62
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1268
;   ADDITIONAL PARENT FUNCTION sub_179E

loc_1A10:		               ; CODE XREF: sub_1268+140↑j
				        ; sub_1268+3F6↑j ...
		ld      a, 39h ; '9'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_1268
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F62
;   ADDITIONAL PARENT FUNCTION sub_1268

loc_1A15:		               ; CODE XREF: sub_F62+144↑j
				        ; sub_1268+453↑j
		ld      a, 48h ; 'H'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_F62
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1268
;   ADDITIONAL PARENT FUNCTION sub_179E

loc_1A1A:		               ; CODE XREF: sub_1268+491↑j
				        ; sub_179E+138↑j
		ld      a, 49h ; 'I'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_1268
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F62
;   ADDITIONAL PARENT FUNCTION sub_1156
;   ADDITIONAL PARENT FUNCTION sub_1268

loc_1A1F:		               ; CODE XREF: sub_F62+1D0↑j
				        ; sub_1156+106↑j ...
		ld      a, 58h ; 'X'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_F62
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1268
;   ADDITIONAL PARENT FUNCTION sub_179E

loc_1A24:		               ; CODE XREF: sub_1268+174↑j
				        ; sub_1268+4E1↑j ...
		ld      a, 59h ; 'Y'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_1268
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F62
;   ADDITIONAL PARENT FUNCTION sub_1156
;   ADDITIONAL PARENT FUNCTION sub_1268

loc_1A29:		               ; CODE XREF: sub_F62+162↑j
				        ; sub_1156+9F↑j ...
		ld      a, 68h ; 'h'
		jp      loc_1A38
; ---------------------------------------------------------------------------

loc_1A2E:		               ; CODE XREF: sub_F62+1EC↑j
				        ; sub_1156+AE↑j ...
		ld      a, 69h ; 'i'
		jp      loc_1A38
; END OF FUNCTION CHUNK FOR sub_F62
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_F89

loc_1A33:		               ; CODE XREF: sub_F89+B↑j
		ld      a, 78h ; 'x'
		jp      loc_1A38
; ---------------------------------------------------------------------------

loc_1A38:		               ; CODE XREF: sub_F62+A8D↑j
				        ; sub_F62+A92↑j ...
		ld      (iy+4), a
		call    sub_19BC
		xor     a
		ld      (byte_E02C), a
		ld      (byte_E05D), a
		ld      (byte_E08D), a
		ld      (iy+6), a
		ld      (iy+5), 0Ah
		ld      (iy+0Ah), 43h ; 'C'
		ld      a, 41h ; 'A'
		ld      (byte_E02B), a
		ld      a, 0FFh
		call    sub_3DA
		ld      a, 0A0h
		call    sub_3DA
		ret
; END OF FUNCTION CHUNK FOR sub_F89
; ---------------------------------------------------------------------------
byte_1A63:      db  11h, 12h, 13h, 14h, 15h, 16h, 21h, 23h, 25h, 31h
				        ; DATA XREF: sub_1AB9+C↓o
		db  32h, 41h, 43h, 51h, 52h, 53h
byte_1A73:      db  11h, 12h, 13h, 14h, 15h, 16h, 18h, 1Ah, 1Bh, 1Ch
				        ; DATA XREF: sub_1AB9↓o
		db  21h, 23h, 31h, 32h, 41h, 51h

; =============== S U B R O U T I N E =======================================


sub_1A83:		               ; CODE XREF: sub_0+1AA↑p
		in      a, (85h)
		xor     0FFh
		ld      (byte_E015), a
		and     0Fh
		call    sub_1AB9
		ld      a, e
		ld      (byte_E021), a
		ld      a, d
		ld      (byte_E023), a
		ld      a, (byte_E015)
		call    sub_1ADC
		call    sub_1AB9
		ld      a, e
		ld      (byte_E022), a
		ld      a, d
		ld      (byte_E024), a
		ld      a, (byte_E015)
		and     0Fh
		ld      b, a
		ld      a, (byte_E015)
		call    sub_1ADC
		xor     b
		ld      (byte_E025), a
		ret
; End of function sub_1A83


; =============== S U B R O U T I N E =======================================


sub_1AB9:		               ; CODE XREF: sub_1A83+9↑p
				        ; sub_1A83+1A↑p
		ld      hl, byte_1A73
		push    af
		ld      a, (byte_E016)
		bit     3, a
		jp      z, loc_1AC8
		ld      hl, byte_1A63

loc_1AC8:		               ; CODE XREF: sub_1AB9+9↑j
		pop     af

loc_1AC9:		               ; CODE XREF: sub_1AB9+16↓j
		or      a
		jp      z, loc_1AD2
		dec     a
		inc     hl
		jp      loc_1AC9
; ---------------------------------------------------------------------------

loc_1AD2:		               ; CODE XREF: sub_1AB9+11↑j
		ld      a, (hl)
		and     0Fh
		ld      d, a
		ld      a, (hl)
		call    sub_1ADC
		ld      e, a
		ret
; End of function sub_1AB9


; =============== S U B R O U T I N E =======================================


sub_1ADC:		               ; CODE XREF: sub_6C1+39↑p
				        ; sub_BE2+1E↑p ...
		srl     a
		srl     a
		srl     a
		srl     a
		ret
; End of function sub_1ADC

; ---------------------------------------------------------------------------
		sla     a
		sla     a
		sla     a
		sla     a
		ret

; =============== S U B R O U T I N E =======================================


sub_1AEE:		               ; CODE XREF: sub_E6B+26↑p
		ld      a, (byte_E021)
		ld      b, a
		ld      a, (byte_E023)
		ld      c, a
		call    sub_1B0F
		ret
; End of function sub_1AEE


; =============== S U B R O U T I N E =======================================


sub_1AFA:		               ; CODE XREF: sub_E6B+4D↑p
		ld      a, (byte_E025)
		or      a
		jp      z, loc_1B03
		inc     iy

loc_1B03:		               ; CODE XREF: sub_1AFA+4↑j
		ld      a, (byte_E022)
		ld      b, a
		ld      a, (byte_E024)
		ld      c, a
		call    sub_1B0F
		ret
; End of function sub_1AFA


; =============== S U B R O U T I N E =======================================


sub_1B0F:		               ; CODE XREF: sub_1AEE+8↑p
				        ; sub_1AFA+11↑p
		inc     (iy+0)
		ld      a, b
		cp      (iy+0)
		ret     nz
		ld      (iy+0), 0
		ld      a, (de)
		or      a
		call    z, sub_1B2C
		ld      a, c
		push    de
		pop     hl
		add     a, (hl)
		ld      (hl), a
		cp      63h ; 'c'
		ret     c
		ld      a, 63h ; 'c'
		ld      (hl), a
		ret
; End of function sub_1B0F


; =============== S U B R O U T I N E =======================================


sub_1B2C:		               ; CODE XREF: sub_1B0F+E↑p
		ld      a, 0FFh
		ld      (byte_E02A), a
		ret
; End of function sub_1B2C


; =============== S U B R O U T I N E =======================================


sub_1B32:		               ; CODE XREF: sub_0+1CE↑p
				        ; sub_0+25C↑p ...
		push	hl
		ld	hl, (word_E02D)
		ld	a, h
		rrca
		rrca
		xor	h
		rrca
		xor	l
		rrca
		rrca
		rrca
		rrca
		xor	l
		rra
		adc	hl, hl
		jr	nz, loc_1B49
		ld	hl, 733Ch

loc_1B49:		               ; CODE XREF: sub_1B32+12↑j
		ld	a, r
		xor	l
		ld	(word_E02D), hl
		pop	hl
		ret
; End of function sub_1B32

; ---------------------------------------------------------------------------
		align	4000h, 0FFh

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

j_updatesmps:		           ; CODE XREF: sub_0+4F↑p
		jp	updatesmps
; End of function j_updatesmps


; =============== S U B R O U T I N E =======================================


sub_4003:		               ; CODE XREF: sub_0+1A2↑p

; FUNCTION CHUNK AT 45BD SIZE 0000000E BYTES

		jp      loc_43AB
; ---------------------------------------------------------------------------
		ld      hl, 1FFFh

loc_4009:		               ; CODE XREF: sub_4003+16↓j
		ld      a, l

loc_400A:		               ; CODE XREF: sub_4003+C↓j
		or      a
		jp      z, loc_4012
		dec     a
		jp      loc_400A
; ---------------------------------------------------------------------------

loc_4012:		               ; CODE XREF: sub_4003+8↑j
		ld      a, h
		or      a
		jp      z, loc_401C
		dec     a
		ld      h, a
		jp      loc_4009
; ---------------------------------------------------------------------------

loc_401C:		               ; CODE XREF: sub_4003+11↑j
		ld      a, (byte_F022)
		ld      b, a
		ld      a, (byte_F023)
		cp      b
		ret     nz
		ld      a, 1
		ld      (byte_F024), a
		ret
; ---------------------------------------------------------------------------

updatesmps:		             ; CODE XREF: j_updatesmps↑j
		ld      a, (byte_F03F)
		or      15h
		ld      (byte_F03F), a
		ld      c, a
		ld      a, 27h ; '''
		call    writefmi
		ld      a, (byte_F022)
		ld      (byte_F023), a
		dec     a
		ld      (byte_F022), a
		call    nullsub_1
		ld      hl, 0F007h
		ld      a, (hl)
		or      a
		jr      z, loc_4060
		dec     (hl)
		jr      nz, loc_4060
		ld      a, (byte_F008)
		ld      (hl), a
		ld      hl, 0F04Bh
		ld      de, 30h ; '0'
		ld      b, 7

loc_405C:		               ; CODE XREF: sub_4003+5B↓j
		inc     (hl)
		add     hl, de
		djnz    loc_405C

loc_4060:		               ; CODE XREF: sub_4003+48↑j
				        ; sub_4003+4B↑j
		call    nullsub_2
		call    sub_44EA
		ld      hl, 0F009h
		ld      a, (hl)
		ld      (hl), 80h
		cp      81h
		jp      nc, loc_4394
		ld      b, 6
		ld      hl, 0F070h
		ld      de, 0F190h

loc_4079:		               ; CODE XREF: sub_4003+89↓j
		push    bc
		res     2, (hl)
		ex      de, hl
		bit     7, (hl)
		ex      de, hl
		jr      z, loc_4084
		set     2, (hl)

loc_4084:		               ; CODE XREF: sub_4003+7D↑j
		ld      bc, 30h ; '0'
		add     hl, bc
		ex      de, hl
		add     hl, bc
		ex      de, hl
		pop     bc
		djnz    loc_4079
		ld      ix, 0F040h
		bit     7, (ix+0)
		call    nz, sub_48E1
		ld      b, 0Ch

loc_409B:		               ; CODE XREF: sub_4003+A6↓j
		push    bc
		ld      de, 30h ; '0'
		add     ix, de
		bit     7, (ix+0)
		call    nz, loc_40AC
		pop     bc
		djnz    loc_409B
		ret
; ---------------------------------------------------------------------------

loc_40AC:		               ; CODE XREF: sub_4003+A2↑p
		dec     (ix+0Bh)
		jr      nz, loc_40D4
		call    loc_421E
		bit     4, (ix+0)
		ret     nz
		ld      de, 0
		call    loc_40EE
		bit     2, (ix+0)
		ret     nz
		bit     1, (ix+0)
		ret     nz
		ld      a, (ix+1)
		or      0F0h
		ld      c, a
		ld      a, 28h ; '('
		jp      writefmi
; ---------------------------------------------------------------------------

loc_40D4:		               ; CODE XREF: sub_4003+AC↑j
		bit     4, (ix+0)
		ret     nz
		call    loc_416C
		res     7, (ix+2)
		call    loc_432E
		call    loc_417D
		call    loc_41D2
		bit     7, (ix+2)
		ret     z

loc_40EE:		               ; CODE XREF: sub_4003+B9↑p
		bit     2, (ix+0)
		ret     nz
		ld      l, (ix+0Dh)
		ld      h, (ix+0Eh)
		add     hl, de
		ld      a, (ix+24h)
		or      a
		jr      z, loc_4107
		ld      e, (ix+22h)
		ld      d, (ix+23h)
		add     hl, de

loc_4107:		               ; CODE XREF: sub_4003+FB↑j
		ld      b, (ix+5)
		ld      c, 0
		add     hl, bc
		ld      a, (ix+10h)
		ld      c, a
		and     80h
		rlca
		neg
		ld      b, a
		add     hl, bc
		add     hl, bc
		bit     5, (ix+0)
		jp      nz, loc_412F
		call    loc_42E3
		ld      a, 0A4h
		ld      c, h
		call    writefmiorii
		ld      a, 0A0h
		ld      c, l
		jp      writefmiorii
; ---------------------------------------------------------------------------

loc_412F:		               ; CODE XREF: sub_4003+11A↑j
		push    ix
		ld      ix, 0F02Ah
		ld      iy, byte_4164
		ld      b, 4

loc_413B:		               ; CODE XREF: sub_4003+15C↓j
		push    bc
		push    hl
		ld      e, (ix+0)
		ld      d, (ix+1)
		add     hl, de
		call    loc_42E3
		ld      a, (iy+0)
		ld      c, h
		call    writefmi
		ld      a, (iy+1)
		ld      c, l
		call    writefmi
		inc     ix
		inc     ix
		inc     iy
		inc     iy
		pop     hl
		pop     bc
		djnz    loc_413B
		pop     ix
		ret
; ---------------------------------------------------------------------------
byte_4164:      db 0ADh, 0A9h, 0AEh, 0AAh, 0ACh, 0A8h, 0A6h, 0A2h
				        ; DATA XREF: sub_4003+132↑o
; ---------------------------------------------------------------------------

loc_416C:		               ; CODE XREF: sub_4003+D6↑p
		ld      a, (ix+1Eh)
		or      a
		ret     z
		dec     (ix+1Eh)
		ret     nz
		set     4, (ix+0)
		pop     hl
		jp      loc_431C
; ---------------------------------------------------------------------------

loc_417D:		               ; CODE XREF: sub_4003+E0↑p
		ld      a, (ix+24h)
		or      a
		ret     z
		dec     a
		jr      z, loc_4189
		ld      (ix+24h), a
		ret
; ---------------------------------------------------------------------------

loc_4189:		               ; CODE XREF: sub_4003+180↑j
		dec     (ix+25h)
		ret     nz
		ld      c, (ix+20h)
		ld      b, (ix+21h)
		inc     bc
		ld      a, (bc)
		ld      (ix+25h), a
		ld      a, (ix+27h)
		or      a
		jr      nz, loc_41B0
		inc     bc
		inc     bc
		ld      a, (bc)
		ld      (ix+27h), a
		ld      a, (ix+26h)
		neg
		ld      (ix+26h), a
		ld      de, 0
		ret
; ---------------------------------------------------------------------------

loc_41B0:		               ; CODE XREF: sub_4003+199↑j
		dec     (ix+27h)
		ld      a, (ix+26h)
		ld      c, a
		and     80h
		rlca
		neg
		ld      b, a
		ld      l, (ix+22h)
		ld      h, (ix+23h)
		add     hl, bc
		add     hl, bc
		add     hl, bc
		add     hl, bc
		ld      (ix+22h), l
		ld      (ix+23h), h
		set     7, (ix+2)
		ret
; ---------------------------------------------------------------------------

loc_41D2:		               ; CODE XREF: sub_4003+E3↑p
		ld      de, 0
		ld      a, (ix+7)
		or      a
		ret     z
		dec     a
		ld      hl, (word_F002)
		ld      c, 4
		call    sub_4546
		call    pointertableoffset

loc_41E6:		               ; CODE XREF: sub_4003+208↓j
		push    hl
		ld      c, (ix+17h)
		ld      b, 0
		add     hl, bc
		ld      a, (hl)
		ex      de, hl
		pop     hl
		or      a
		jp      p, loc_420D
		cp      82h
		jp      z, loc_4202
		jp      nc, loc_420D
		rra
		jr      c, loc_4206
		xor     a
		jr      loc_4208
; ---------------------------------------------------------------------------

loc_4202:		               ; CODE XREF: sub_4003+1F3↑j
		inc     de
		ld      a, (de)
		jr      loc_4208
; ---------------------------------------------------------------------------

loc_4206:		               ; CODE XREF: sub_4003+1FA↑j
		dec     c
		ld      a, c

loc_4208:		               ; CODE XREF: sub_4003+1FD↑j
				        ; sub_4003+201↑j
		ld      (ix+17h), a
		jr      loc_41E6
; ---------------------------------------------------------------------------

loc_420D:		               ; CODE XREF: sub_4003+1EE↑j
				        ; sub_4003+1F6↑j
		inc     (ix+17h)
		ld      l, a
		and     80h
		rlca
		neg
		ld      h, a
		add     hl, hl
		ex      de, hl
		set     7, (ix+2)
		ret
; ---------------------------------------------------------------------------

loc_421E:		               ; CODE XREF: sub_4003+AE↑p
		ld      e, (ix+3)
		ld      d, (ix+4)
		res     1, (ix+0)
		res     4, (ix+0)

loc_422C:		               ; CODE XREF: ROM:45CC↓j
		ld      a, (de)
		inc     de
		cp      0E0h
		jp      nc, loc_45BD
		ex      af, af'
		call    loc_431C
		ex      af, af'
		or      a
		jp      p, loc_426B
		sub     81h
		jp      p, loc_4247
		set     4, (ix+0)
		jr      loc_4260
; ---------------------------------------------------------------------------

loc_4247:		               ; CODE XREF: sub_4003+23B↑j
		push    af
		call    loc_42B9
		pop     af
		bit     6, (ix+0)
		jr      z, loc_4259
		ld      b, a
		ld      a, (de)
		inc     de
		ld      (ix+0Fh), a
		ld      a, b

loc_4259:		               ; CODE XREF: sub_4003+24D↑j
		ld      (ix+0Dh), 0
		ld      (ix+0Eh), a

loc_4260:		               ; CODE XREF: sub_4003+242↑j
		ld      a, (de)
		or      a
		jp      p, loc_426A
		ld      a, (ix+0Ch)
		jr      loc_4271
; ---------------------------------------------------------------------------

loc_426A:		               ; CODE XREF: sub_4003+25F↑j
		inc     de

loc_426B:		               ; CODE XREF: sub_4003+236↑j
		call    sub_452A
		ld      (ix+0Ch), a

loc_4271:		               ; CODE XREF: sub_4003+265↑j
		ld      (ix+3), e
		ld      (ix+4), d
		ld      a, (ix+0Ch)
		ld      (ix+0Bh), a
		bit     1, (ix+0)
		jp      nz, loc_428E
		xor     a
		ld      (ix+17h), a
		ld      a, (ix+1Fh)
		ld      (ix+1Eh), a

loc_428E:		               ; CODE XREF: sub_4003+27E↑j
		ld      a, (ix+24h)
		or      a
		jr      z, loc_42AC
		ld      e, (ix+20h)
		ld      d, (ix+21h)
		push    ix
		pop     hl
		ld      bc, 24h ; '$'
		add     hl, bc
		ex      de, hl
		ldi
		ldi
		ldi
		ld      a, (hl)
		srl     a
		ld      (de), a

loc_42AC:		               ; CODE XREF: sub_4003+28F↑j
		bit     4, (ix+0)
		ret     nz
		xor     a
		ld      (ix+22h), a
		ld      (ix+23h), a
		ret
; ---------------------------------------------------------------------------

loc_42B9:		               ; CODE XREF: sub_4003+245↑p
		ld      a, (ix+1)
		or      a
		ret     nz
		ld      a, (byte_F021)
		and     0Fh
		cp      8
		jp      c, loc_42C9
		xor     a

loc_42C9:		               ; CODE XREF: sub_4003+2C2↑j
		ld      b, 0
		ld      c, a
		inc     a
		ld      (byte_F021), a
		ld      hl, unk_42D9
		add     hl, bc
		ld      a, (hl)
		ld      (byte_F020), a
		ret
; ---------------------------------------------------------------------------
unk_42D9:       db    1		 ; DATA XREF: sub_4003+2CD↑o
		db    2
		db    4
		db    8
		db    4
		db    2
		db    4
		db    2
		db  0Fh
		db  0Fh
; ---------------------------------------------------------------------------

loc_42E3:		               ; CODE XREF: sub_4003+11D↑p
				        ; sub_4003+141↑p
		ld      d, 0
		ld      c, 8
		ld      e, 0Ch
		ld      a, h

loc_42EA:		               ; CODE XREF: sub_4003+2EF↓j
		sub     e
		jr      c, loc_42F4
		ld      b, a
		ld      a, d
		add     a, c
		ld      d, a
		ld      a, b
		jr      loc_42EA
; ---------------------------------------------------------------------------

loc_42F4:		               ; CODE XREF: sub_4003+2E8↑j
		add     a, e
		ld      e, l
		ld      hl, unk_4AF2
		call    pointertableoffset
		ld      a, h
		ld      b, a
		and     7
		ld      h, a
		ld      a, b
		ld      c, 0
		and     0F0h
		rrca
		rrca
		rrca
		rrca
		ld      b, a
		ld      a, e
		and     0E0h
		rlca
		rlca
		rlca
		inc     a
		ld      e, a
		xor     a
		sub     b

loc_4315:		               ; CODE XREF: sub_4003+314↓j
		add     a, b
		dec     e
		jr      nz, loc_4315
		ld      e, a
		add     hl, de
		ret
; ---------------------------------------------------------------------------

loc_431C:		               ; CODE XREF: sub_4003+177↑j
				        ; sub_4003+231↑p ...
		bit     2, (ix+0)
		ret     nz
		bit     1, (ix+0)
		ret     nz
		ld      c, (ix+1)
		ld      a, 28h ; '('
		jp      writefmi
; ---------------------------------------------------------------------------

loc_432E:		               ; CODE XREF: sub_4003+DD↑p
		ld      a, (ix+0Fh)
		or      a
		ret     z
		ld      c, a
		and     80h
		rlca
		neg
		ld      b, a
		ld      l, (ix+0Dh)
		ld      h, (ix+0Eh)
		add     hl, bc
		add     hl, bc
		add     hl, bc
		add     hl, bc
		ld      (ix+0Dh), l
		ld      (ix+0Eh), h
		set     7, (ix+2)
		ret
; ---------------------------------------------------------------------------

loc_434F:		               ; CODE XREF: ROM:4744↓p
				        ; ROM:4816↓p ...
		ld      hl, (word_F037)
		bit     3, (ix+0)
		jp      z, loc_435F
		ld      l, (ix+2Ah)
		ld      h, (ix+2Bh)

loc_435F:		               ; CODE XREF: sub_4003+353↑j
		or      a
		jr      z, locret_4369
		ld      b, a
		ld      de, 19h

loc_4366:		               ; CODE XREF: sub_4003+364↓j
		add     hl, de
		djnz    loc_4366

locret_4369:		            ; CODE XREF: sub_4003+35D↑j
		ret
; ---------------------------------------------------------------------------

loc_436A:		               ; CODE XREF: ROM:4747↓p
				        ; ROM:4819↓p ...
		ld      a, 0B4h
		ld      c, (ix+0Ah)
		call    writefmiorii
		ld      de, unk_4AD5
		ld      b, 15h

loc_4377:		               ; CODE XREF: sub_4003+377↓j
		call    sub_454F
		djnz    loc_4377
		ld      b, 4

loc_437E:		               ; CODE XREF: sub_4003+38E↓j
		ld      a, (hl)
		inc     hl
		or      a
		jp      p, loc_438B
		add     a, (ix+6)
		jr      nc, loc_438B
		ld      a, 0FFh

loc_438B:		               ; CODE XREF: sub_4003+37E↑j
				        ; sub_4003+384↑j
		ld      c, a
		ld      a, (de)
		inc     de
		call    writefmiorii
		djnz    loc_437E
		ret
; ---------------------------------------------------------------------------

loc_4394:		               ; CODE XREF: sub_4003+6B↑j
		cp      90h
		jp      c, loc_43F8
		cp      0A0h
		jp      z, loc_4457
		cp      0A2h
		jp      z, loc_4457
		cp      0C0h
		jp      c, loc_4471
		jp      loc_43B6
; ---------------------------------------------------------------------------

loc_43AB:		               ; CODE XREF: sub_4003↑j
		ld      hl, unk_4B0A
		ld      de, 0F000h
		ld      bc, 0Dh
		ldir

loc_43B6:		               ; CODE XREF: sub_4003+3A5↑j
				        ; sub_4003+3FA↓p ...
		call    sub_458F
		xor     a
		ld      (byte_F020), a
		ld      (byte_F021), a
		ld      (byte_F024), a
		ld      hl, 0F00Ah
		ld      de, 0F00Bh
		ld      bc, 35h ; '5'
		ld      (hl), a
		ldir
		ld      hl, 0F040h
		ld      de, 30h ; '0'
		ld      b, 0Dh

loc_43D7:		               ; CODE XREF: sub_4003+3D6↓j
		ld      (hl), a
		add     hl, de
		djnz    loc_43D7
		ld      hl, unk_4B17
		ld      b, 2Dh ; '-'

loc_43E0:		               ; CODE XREF: sub_4003+3E4↓j
		ld      a, (hl)
		inc     hl
		ld      c, (hl)
		inc     hl
		call    writefmi
		djnz    loc_43E0
		ld      hl, unk_4B29
		ld      b, 24h ; '$'

loc_43EE:		               ; CODE XREF: sub_4003+3F2↓j
		ld      a, (hl)
		inc     hl
		ld      c, (hl)
		inc     hl
		call    writefmii
		djnz    loc_43EE
		ret
; ---------------------------------------------------------------------------

loc_43F8:		               ; CODE XREF: sub_4003+393↑j
		sub     81h
		and     0Fh
		push    af
		call    loc_43B6
		pop     af
		ld      hl, (word_F002)
		ld      c, 2
		call    sub_4546
		call    pointertableoffset
		push    hl
		call    readpointer
		ld      (word_F037), hl
		pop     hl
		inc     hl
		inc     hl
		ld      b, (hl)
		inc     hl
		inc     hl
		ld      c, (hl)
		inc     hl
		ld      a, (hl)
		inc     hl
		ld      (byte_F007), a
		ld      (byte_F008), a
		ld      (word_F033), hl
		ld      hl, unk_4B9A
		ld      (word_F035), hl
		ld      de, 0F040h
		ld      a, c

loc_4430:		               ; CODE XREF: sub_4003+451↓j
		push    bc
		ld      hl, (word_F035)
		ldi
		ldi
		ld      (de), a
		inc     de
		ld      (word_F035), hl
		ld      hl, (word_F033)
		ldi
		ldi
		ldi
		ldi
		ld      (word_F033), hl
		ld      hl, unk_4B71
		ld      bc, 29h ; ')'
		ldir
		pop     bc
		djnz    loc_4430
		ret
; ---------------------------------------------------------------------------

loc_4457:		               ; CODE XREF: sub_4003+398↑j
				        ; sub_4003+39D↑j
		push    ix
		push    iy
		push    af
		push    hl
		push    de
		push    bc
		call    loc_43B6
		pop     bc
		pop     de
		pop     hl
		pop     af
		pop     iy
		pop     ix
		push    af
		ld      a, 10h
		ld      (byte_F018), a
		pop     af

loc_4471:		               ; CODE XREF: sub_4003+3A2↑j
		sub     90h
		ld      hl, (word_F002)
		ld      c, 3
		call    sub_4546
		call    pointertableoffset
		push    hl
		call    readpointer
		ld      (word_F039), hl
		pop     hl
		inc     hl
		inc     hl
		ld      c, (hl)
		inc     hl
		ld      b, (hl)
		inc     hl
		ld      (word_F033), hl

loc_448F:		               ; CODE XREF: sub_4003+4CD↓j
		push    bc
		ld      hl, (word_F033)
		inc     hl
		ld      d, 0
		ld      a, (hl)
		and     7
		ld      hl, word_4BA8
		call    pointertableoffset
		ex      de, hl
		ld      hl, (word_F033)
		ld      a, (hl)
		inc     hl
		or      88h
		ld      (de), a
		inc     de
		ldi
		pop     bc
		push    bc
		ld      a, c
		ld      (de), a
		inc     de
		ldi
		ldi
		ldi
		ldi
		ld      (word_F033), hl
		ld      hl, unk_4B71
		ld      bc, 29h ; ')'
		ldir
		push    de
		pop     ix
		ld      hl, (word_F039)
		ld      (ix-6), l
		ld      (ix-5), h
		pop     bc
		djnz    loc_448F
		ret
; End of function sub_4003


; =============== S U B R O U T I N E =======================================


nullsub_1:		              ; CODE XREF: sub_4003+40↑p
		ret
; End of function nullsub_1

; ---------------------------------------------------------------------------
		ld      a, 28h ; '('
		ld      (byte_F00D), a
		ld      a, 6
		ld      (byte_F00F), a
		ld      (byte_F00E), a
		xor     a
		ld      (byte_F040), a
		ld      (byte_F160), a
		ret

; =============== S U B R O U T I N E =======================================


nullsub_2:		              ; CODE XREF: sub_4003:loc_4060↑p
		ret
; End of function nullsub_2


; =============== S U B R O U T I N E =======================================


sub_44EA:		               ; CODE XREF: sub_4003+60↑p
		ld      hl, (word_F002)
		ld      c, 0
		call    sub_4546
		ld      de, 0F00Ah
		ld      b, 3

loc_44F7:		               ; CODE XREF: sub_44EA+36↓j
		push    de
		push    hl
		ld      a, (de)
		ld      c, a
		cp      81h
		jr      c, loc_451A
		cp      0C0h
		jr      nc, loc_4523
		sub     80h
		ld      e, a
		ld      d, 0
		add     hl, de
		ld      e, (hl)
		ld      a, (byte_F018)
		cp      e
		jr      z, loc_4512
		jr      nc, loc_451A

loc_4512:		               ; CODE XREF: sub_44EA+24↑j
		ld      a, e
		ld      (byte_F018), a
		ld      a, c
		ld      (byte_F009), a

loc_451A:		               ; CODE XREF: sub_44EA+13↑j
				        ; sub_44EA+26↑j
		pop     hl
		pop     de
		ld      a, 80h
		ld      (de), a
		inc     de
		djnz    loc_44F7
		ret
; ---------------------------------------------------------------------------

loc_4523:		               ; CODE XREF: sub_44EA+17↑j
		ld      a, c
		ld      (byte_F009), a
		pop     hl
		pop     de
		ret
; End of function sub_44EA


; =============== S U B R O U T I N E =======================================


sub_452A:		               ; CODE XREF: sub_4003:loc_426B↑p
				        ; ROM:loc_4764↓p ...
		ld      c, a
		ld      a, (ix+2)
		dec     a
		and     3
		ld      b, a
		ld      a, c
		ret     z
		rr      b
		jr      nc, loc_453D
		rr      b
		jr      nc, loc_453E
		add     a, c

loc_453D:		               ; CODE XREF: sub_452A+C↑j
		add     a, c

loc_453E:		               ; CODE XREF: sub_452A+10↑j
		add     a, c
		ret
; End of function sub_452A

; ---------------------------------------------------------------------------
		ld      hl, (word_F002)
		jr      sub_4546

; =============== S U B R O U T I N E =======================================


pointertableoffset:		     ; CODE XREF: sub_4003+1E0↑p
				        ; sub_4003+2F6↑p ...
		ld      c, a
; End of function pointertableoffset


; =============== S U B R O U T I N E =======================================


sub_4546:		               ; CODE XREF: sub_4003+1DD↑p
				        ; sub_4003+403↑p ...
		ld      b, 0
		add     hl, bc
		add     hl, bc
; End of function sub_4546


; =============== S U B R O U T I N E =======================================


readpointer:		            ; CODE XREF: sub_4003+40A↑p
				        ; sub_4003+47C↑p
		ld      b, (hl)
		inc     hl
		ld      h, (hl)
		ld      l, b
		ret
; End of function readpointer


; =============== S U B R O U T I N E =======================================


sub_454F:		               ; CODE XREF: sub_4003:loc_4377↑p
		ld      a, (de)
		inc     de
		ld      c, (hl)
		inc     hl
; End of function sub_454F


; =============== S U B R O U T I N E =======================================


writefmiorii:		           ; CODE XREF: sub_4003+123↑p
				        ; sub_4003+129↑j ...

; FUNCTION CHUNK AT 4573 SIZE 0000000A BYTES

		bit     2, (ix+1)
		jr      nz, loc_4573
		bit     2, (ix+0)
		ret     nz
		add     a, (ix+1)
; End of function writefmiorii


; =============== S U B R O U T I N E =======================================


writefmi:		               ; CODE XREF: sub_4003+33↑p
				        ; sub_4003+CE↑j ...
		ex      (sp), iy
		ex      (sp), iy
		ex      (sp), iy
		ex      (sp), iy
		out     (40h), a
		ex      (sp), iy
		ex      (sp), iy
		ld      a, c
		out     (41h), a
		ret
; End of function writefmi

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR writefmiorii

loc_4573:		               ; CODE XREF: writefmiorii+4↑j
		bit     2, (ix+0)
		ret     nz
		add     a, (ix+1)
		sub     4
; END OF FUNCTION CHUNK FOR writefmiorii

; =============== S U B R O U T I N E =======================================


writefmii:		              ; CODE XREF: sub_4003+3EF↑p
		ex      (sp), iy
		ex      (sp), iy
		ex      (sp), iy
		ex      (sp), iy
		out     (42h), a
		ex      (sp), iy
		ex      (sp), iy
		ld      a, c
		out     (43h), a
		ret
; End of function writefmii


; =============== S U B R O U T I N E =======================================


sub_458F:		               ; CODE XREF: sub_4003:loc_43B6↑p
				        ; ROM:4668↓j ...
		ld      hl, (word_F004)
		ld      c, l
		ld      a, 24h ; '$'
		call    writefmi
		ld      c, h
		ld      a, 25h ; '%'
		call    writefmi
		ld      a, (byte_F006)
		ld      c, a
		ld      a, 26h ; '&'
		jp      writefmi
; End of function sub_458F


sub_45A7:		               ; CODE XREF: ROM:470A↓p
		ld      a, 40h ; '@'
		ld      c, 7Fh
		jr      loc_45B1

; =============== S U B R O U T I N E =======================================


sub_45AD:		               ; CODE XREF: ROM:loc_4707↓p
				        ; ROM:473E↓p ...
		ld      a, 80h
		ld      c, 0FFh

loc_45B1:		               ; CODE XREF: ROM:45AB↑j
		ld      b, 4

loc_45B3:		               ; CODE XREF: sub_45AD+D↓j
		push    af
		call    writefmiorii
		pop     af
		add     a, 4
		djnz    loc_45B3
		ret
; End of function sub_45AD

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_4003

loc_45BD:		               ; CODE XREF: sub_4003+22D↑j
		ld      hl, loc_45CB
		push    hl
		sub     0E0h
		ld      hl, off_45D8
		call    pointertableoffset
		ld      a, (de)
		jp      (hl)
; END OF FUNCTION CHUNK FOR sub_4003
; ---------------------------------------------------------------------------

loc_45CB:		               ; DATA XREF: sub_4003:loc_45BD↑o
		inc     de
		jp      loc_422C
; ---------------------------------------------------------------------------

loc_45CF:		               ; DATA XREF: ROM:4616↓o
		ld      hl, off_4618
		call    pointertableoffset
		inc     de
		ld      a, (de)
		jp      (hl)
; ---------------------------------------------------------------------------
off_45D8:       dw cfnull               ; DATA XREF: sub_4003+5C0↑o
				        ; sub_48E1+1E↓o
				        ; 0E0h
		dw loc_46C6             ; 0E1h
		dw loc_46E6             ; 0E2h
		dw loc_4707             ; 0E3h
		dw loc_476E             ; 0E4h
		dw loc_483C             ; 0E5h
		dw loc_483E             ; 0E6h
		dw loc_47A1             ; 0E7h
		dw loc_4764             ; 0E8h
		dw loc_481F             ; 0E9h
		dw loc_465C             ; 0EAh
		dw loc_466B             ; 0EBh
		dw cfnull2              ; 0ECh
		dw loc_46EA             ; 0EDh
		dw loc_46F2             ; 0EEh
		dw loc_480E             ; 0EFh
		dw loc_46FA             ; 0F0h
		dw loc_4882             ; 0F1h
		dw loc_470D             ; 0F2h
		dw cfnull2              ; 0F3h
		dw loc_4884             ; 0F4h
		dw cfnull2              ; 0F5h
		dw loc_4888             ; 0F6h
		dw loc_48CA             ; 0F7h
		dw loc_489F             ; 0F8h
		dw loc_48B8             ; 0F9h
		dw loc_487E             ; 0FAh
		dw loc_4877             ; 0FBh
		dw loc_488E             ; 0FCh
		dw loc_462C             ; 0FDh
		dw loc_47A7             ; 0FEh
		dw loc_45CF             ; 0FFh
off_4618:       dw cfnull3              ; DATA XREF: ROM:loc_45CF↑o
				        ; 000h
		dw loc_46DE             ; 001h
		dw cfnull4              ; 002h
		dw loc_4682             ; 003h
		dw loc_46B8             ; 004h
		dw loc_464C             ; 005h
		dw loc_4631             ; 006h
		dw loc_46CA             ; 007h
		dw loc_46D3             ; 008h
		dw loc_46D8             ; 009h
; ---------------------------------------------------------------------------

loc_462C:		               ; DATA XREF: ROM:4612↑o
		inc     de
		inc     de
		inc     de
		inc     de

cfnull2:				; DATA XREF: ROM:45F0↑o
				        ; ROM:45FE↑o ...
		ret
; ---------------------------------------------------------------------------

loc_4631:		               ; DATA XREF: ROM:4624↑o
		ld      (ix+18h), 80h
		ld      (ix+19h), e
		ld      (ix+1Ah), d
		ld      hl, unk_4AEE
		ld      b, 4

loc_4640:		               ; CODE XREF: ROM:4648↓j
		ld      a, (de)
		inc     de
		ld      c, a
		ld      a, (hl)
		inc     hl
		call    writefmiorii
		djnz    loc_4640
		dec     de
		ret
; ---------------------------------------------------------------------------

loc_464C:		               ; DATA XREF: ROM:4622↑o
		exx
		ld      b, 7
		ld      de, 30h ; '0'
		ld      hl, 0F042h

loc_4655:		               ; CODE XREF: ROM:4657↓j
		ld      (hl), a
		add     hl, de
		djnz    loc_4655
		exx
		ret
; ---------------------------------------------------------------------------

cfnull3:				; DATA XREF: ROM:off_4618↑o
		ret
; ---------------------------------------------------------------------------

loc_465C:		               ; DATA XREF: ROM:45EC↑o
		ld      hl, 0F004h
		ex      de, hl
		ldi
		ldi
		ldi
		ex      de, hl
		dec     de
		jp      sub_458F
; ---------------------------------------------------------------------------

loc_466B:		               ; DATA XREF: ROM:45EE↑o
		ex      de, hl
		ld      c, (hl)
		inc     hl
		ld      b, (hl)
		inc     hl
		ex      de, hl
		ld      hl, (word_F004)
		add     hl, bc
		ld      (word_F004), hl
		ld      a, (de)
		ld      hl, 0F006h
		add     a, (hl)
		ld      (hl), a
		jp      sub_458F
; ---------------------------------------------------------------------------

cfnull4:				; DATA XREF: ROM:461C↑o
		ret
; ---------------------------------------------------------------------------

loc_4682:		               ; DATA XREF: ROM:461E↑o
		ld      (byte_F011), a
		or      a
		jr      z, loc_46A0
		push    ix
		push    de
		ld      ix, 0F040h
		ld      b, 0Ah
		ld      de, 30h ; '0'

loc_4694:		               ; CODE XREF: ROM:469A↓j
		res     7, (ix+0)
		add     ix, de
		djnz    loc_4694
		pop     de
		pop     ix
		ret
; ---------------------------------------------------------------------------

loc_46A0:		               ; CODE XREF: ROM:4686↑j
		push    ix
		push    de
		ld      ix, 0F040h
		ld      b, 0Ah
		ld      de, 30h ; '0'

loc_46AC:		               ; CODE XREF: ROM:46B2↓j
		set     7, (ix+0)
		add     ix, de
		djnz    loc_46AC
		pop     de
		pop     ix
		ret
; ---------------------------------------------------------------------------

loc_46B8:		               ; DATA XREF: ROM:4620↑o
		ex      de, hl
		ld      e, (hl)
		inc     hl
		ld      d, (hl)
		inc     hl
		ld      c, (hl)
		ld      b, 0
		inc     hl
		ex      de, hl
		ldir
		dec     de
		ret
; ---------------------------------------------------------------------------

loc_46C6:		               ; DATA XREF: ROM:45DA↑o
		ld      (ix+10h), a
		ret
; ---------------------------------------------------------------------------

loc_46CA:		               ; DATA XREF: ROM:4626↑o
		ld      (ix+18h), a
		inc     de
		ld      a, (de)
		ld      (ix+19h), a
		ret
; ---------------------------------------------------------------------------

loc_46D3:		               ; DATA XREF: ROM:4628↑o
		xor     a
		ld      (byte_F03C), a
		ret
; ---------------------------------------------------------------------------

loc_46D8:		               ; DATA XREF: ROM:462A↑o
		ld      a, 1
		ld      (byte_F03C), a
		ret
; ---------------------------------------------------------------------------

loc_46DE:		               ; DATA XREF: ROM:461A↑o
		ld      hl, 0F008h
		add     a, (hl)
		ld      (hl), a
		dec     hl
		ld      (hl), a
		ret
; ---------------------------------------------------------------------------

loc_46E6:		               ; DATA XREF: ROM:45DC↑o
		ld      (byte_F016), a
		ret
; ---------------------------------------------------------------------------

loc_46EA:		               ; DATA XREF: ROM:45F2↑o
		ex      de, hl
		ld      a, (hl)
		inc     hl
		ld      c, (hl)
		ex      de, hl
		jp      writefmiorii
; ---------------------------------------------------------------------------

loc_46F2:		               ; DATA XREF: ROM:45F4↑o
		ex      de, hl
		ld      a, (hl)
		inc     hl
		ld      c, (hl)
		ex      de, hl
		jp      writefmi
; ---------------------------------------------------------------------------

loc_46FA:		               ; DATA XREF: ROM:45F8↑o
		ld      (ix+24h), a
		ld      (ix+20h), e
		ld      (ix+21h), d
		inc     de
		inc     de
		inc     de
		ret
; ---------------------------------------------------------------------------

loc_4707:		               ; DATA XREF: ROM:45DE↑o
		call    sub_45AD
		call    sub_45A7

loc_470D:		               ; DATA XREF: ROM:45FC↑o
		res     7, (ix+0)
		ld      a, 1Fh
		ld      (byte_F015), a
		call    loc_431C
		ld      a, (ix+1)
		cp      2
		jp      z, loc_474F
		bit     3, (ix+0)
		jp      z, loc_474C
		xor     a
		ld      (byte_F018), a
		push    ix
		ld      bc, 0FEE0h
		add     ix, bc
		bit     7, (ix+0)
		jp      z, loc_474A
		res     2, (ix+0)
		call    sub_45AD
		ld      a, (ix+8)
		call    loc_434F
		call    loc_436A

loc_474A:		               ; CODE XREF: ROM:4737↑j
		pop     ix

loc_474C:		               ; CODE XREF: ROM:4725↑j
		pop     hl
		pop     hl
		ret
; ---------------------------------------------------------------------------

loc_474F:		               ; CODE XREF: ROM:471E↑j
		res     5, (ix+0)
		ld      a, (byte_F03F)
		and     0BFh
		ld      c, a
		ld      (byte_F03F), a
		ld      a, 27h ; '''
		call    writefmi
		pop     hl
		pop     hl
		ret
; ---------------------------------------------------------------------------

loc_4764:		               ; DATA XREF: ROM:45E8↑o
		call    sub_452A
		ld      (ix+1Eh), a
		ld      (ix+1Fh), a
		ret
; ---------------------------------------------------------------------------

loc_476E:		               ; DATA XREF: ROM:45E0↑o
		ld      (ix+11h), a
		or      a
		jr      z, loc_4798
		inc     de
		ld      a, (de)
		and     0Fh
		ld      c, a
		inc     de
		ld      a, (de)
		ld      b, a
		add     a, a
		add     a, a
		add     a, a
		add     a, a
		or      b
		ld      (ix+13h), a
		inc     de
		ld      a, (de)
		add     a, a
		add     a, a
		add     a, a
		add     a, a
		or      c
		ld      (ix+12h), a
		inc     de
		ld      a, (de)
		ld      (ix+14h), a
		ld      (ix+15h), 1
		ret
; ---------------------------------------------------------------------------

loc_4798:		               ; CODE XREF: ROM:4772↑j
		inc     de
		inc     de
		inc     de
		inc     de
		ld      a, 0C0h
		jp      cfnull
; ---------------------------------------------------------------------------

loc_47A1:		               ; DATA XREF: ROM:45E6↑o
		set     1, (ix+0)
		dec     de
		ret
; ---------------------------------------------------------------------------

loc_47A7:		               ; DATA XREF: ROM:4614↑o
		ld      a, (ix+1)
		cp      2
		jr      nz, loc_47F8
		ld      l, e
		ld      h, d
		xor     a
		add     a, (hl)
		inc     hl
		add     a, (hl)
		inc     hl
		add     a, (hl)
		inc     hl
		add     a, (hl)
		or      a
		jr      z, loc_47E6
		set     5, (ix+0)
		call    sub_47FC
		ld      (word_F02A), hl
		call    sub_47FC
		ld      (word_F02C), hl
		call    sub_47FC
		ld      (word_F02E), hl
		call    sub_47FC
		ld      (word_F030), hl
		dec     de
		ld      a, (byte_F03F)
		or      40h ; '@'
		ld      c, a
		ld      (byte_F03F), a
		ld      a, 27h ; '''
		jp      writefmi
; ---------------------------------------------------------------------------

loc_47E6:		               ; CODE XREF: ROM:47B9↑j
		res     5, (ix+0)
		ld      a, (byte_F03F)
		and     0BFh
		ld      c, a
		ld      (byte_F03F), a
		ld      a, 27h ; '''
		call    writefmi

loc_47F8:		               ; CODE XREF: ROM:47AC↑j
		inc     de
		inc     de
		inc     de
		ret

sub_47FC:		               ; CODE XREF: ROM:47BF↑p
				        ; ROM:47C5↑p ...
		ld      a, (de)
		inc     de
		and     3
		ld      hl, word_4806
		jp      pointertableoffset
; ---------------------------------------------------------------------------
word_4806:      dw 0		    ; DATA XREF: ROM:4800↑o
		dw 600h
		dw 7CFh
		dw 980h
; ---------------------------------------------------------------------------

loc_480E:		               ; DATA XREF: ROM:45F6↑o
		call    sub_45AD
		ld      a, (de)
		ld      (ix+8), a
		push    de
		call    loc_434F
		call    loc_436A
		pop     de
		ret
; ---------------------------------------------------------------------------

cfnull:				 ; CODE XREF: ROM:479E↑j
				        ; DATA XREF: ROM:off_45D8↑o
		ret
; ---------------------------------------------------------------------------

loc_481F:		               ; DATA XREF: ROM:45EA↑o
		ld      c, a
		ld      a, 22h ; '"'
		bit     2, (ix+0)
		call    z, writefmi
		inc     de
		ld      a, (ix+0Ah)
		and     0C0h
		ex      de, hl
		or      (hl)
		ld      (ix+0Ah), a
		ld      c, a
		ld      a, 0B4h
		call    writefmiorii
		ex      de, hl
		ret
; ---------------------------------------------------------------------------

loc_483C:		               ; DATA XREF: ROM:45E2↑o
		inc     de
		ld      a, (de)

loc_483E:		               ; DATA XREF: ROM:45E4↑o
		add     a, (ix+6)
		ld      (ix+6), a
		bit     2, (ix+0)
		ret     nz
		push    bc
		push    de
		push    hl
		ld      a, (ix+8)
		call    loc_434F
		ld      bc, 15h
		add     hl, bc
		ld      de, unk_4AEA
		ld      b, 4

loc_485B:		               ; CODE XREF: ROM:4871↓j
		ld      a, (hl)
		or      a
		jp      p, loc_486F
		and     7Fh
		add     a, (ix+6)
		jp      p, loc_486A
		ld      a, 7Fh

loc_486A:		               ; CODE XREF: ROM:4865↑j
		ld      c, a
		ld      a, (de)
		call    writefmiorii

loc_486F:		               ; CODE XREF: ROM:485D↑j
		inc     de
		inc     hl
		djnz    loc_485B
		pop     hl
		pop     de
		pop     bc
		ret
; ---------------------------------------------------------------------------

loc_4877:		               ; DATA XREF: ROM:460E↑o
		add     a, (ix+5)
		ld      (ix+5), a
		ret
; ---------------------------------------------------------------------------

loc_487E:		               ; DATA XREF: ROM:460C↑o
		ld      (ix+2), a
		ret
; ---------------------------------------------------------------------------

loc_4882:		               ; DATA XREF: ROM:45FA↑o
		inc     de
		ld      a, (de)

loc_4884:		               ; DATA XREF: ROM:4600↑o
		ld      (ix+7), a
		ret
; ---------------------------------------------------------------------------

loc_4888:		               ; CODE XREF: ROM:48DC↓j
				        ; DATA XREF: ROM:4604↑o
		ex      de, hl
		ld      e, (hl)
		inc     hl
		ld      d, (hl)
		dec     de
		ret
; ---------------------------------------------------------------------------

loc_488E:		               ; DATA XREF: ROM:4610↑o
		or      a
		jr      z, loc_4896
		set     6, (ix+0)
		ret
; ---------------------------------------------------------------------------

loc_4896:		               ; CODE XREF: ROM:488F↑j
		res     6, (ix+0)
		xor     a
		ld      (ix+0Fh), a
		ret
; ---------------------------------------------------------------------------

loc_489F:		               ; DATA XREF: ROM:4608↑o
		ld      c, a
		inc     de
		ld      a, (de)
		ld      b, a
		push    bc
		push    ix
		pop     hl
		ld      c, (ix+9)
		dec     c
		dec     c
		ld      (ix+9), c
		ld      b, 0
		add     hl, bc
		ld      (hl), e
		inc     hl
		ld      (hl), d
		pop     de
		dec     de
		ret
; ---------------------------------------------------------------------------

loc_48B8:		               ; DATA XREF: ROM:460A↑o
		push    ix
		pop     hl
		ld      c, (ix+9)
		ld      b, 0
		add     hl, bc
		ld      e, (hl)
		inc     hl
		ld      d, (hl)
		inc     c
		inc     c
		ld      (ix+9), c
		ret
; ---------------------------------------------------------------------------

loc_48CA:		               ; DATA XREF: ROM:4606↑o
		inc     de
		add     a, 28h ; '('
		ld      c, a
		ld      b, 0
		push    ix
		pop     hl
		add     hl, bc
		ld      a, (hl)
		or      a
		jr      nz, loc_48DA
		ld      a, (de)
		ld      (hl), a

loc_48DA:		               ; CODE XREF: ROM:48D6↑j
		inc     de
		dec     (hl)
		jp      nz, loc_4888
		inc     de
		ret

; =============== S U B R O U T I N E =======================================


sub_48E1:		               ; CODE XREF: sub_4003+93↑p
		dec     (ix+0Bh)
		ret     nz
		res     1, (ix+0)
		res     4, (ix+0)
		ld      e, (ix+3)
		ld      d, (ix+4)

loc_48F3:		               ; CODE XREF: sub_48E1+27↓j
		ld      a, (de)
		inc     de
		cp      0E0h
		jr      c, loc_490B
		ld      hl, loc_4907
		push    hl
		sub     0E0h
		ld      hl, off_45D8
		call    pointertableoffset
		ld      a, (de)
		jp      (hl)
; ---------------------------------------------------------------------------

loc_4907:		               ; DATA XREF: sub_48E1+18↑o
		inc     de
		jp      loc_48F3
; ---------------------------------------------------------------------------

loc_490B:		               ; CODE XREF: sub_48E1+16↑j
		or      a
		jp      p, loc_491D
		and     0Fh
		ld      (ix+0Dh), a
		ld      a, (de)
		inc     de
		or      a
		jp      p, loc_491D
		dec     de
		jr      loc_4923
; ---------------------------------------------------------------------------

loc_491D:		               ; CODE XREF: sub_48E1+2B↑j
				        ; sub_48E1+36↑j
		call    sub_452A
		ld      (ix+0Ch), a

loc_4923:		               ; CODE XREF: sub_48E1+3A↑j
		ld      a, (ix+0Ch)
		ld      (ix+0Bh), a
		ld      (ix+3), e
		ld      (ix+4), d
		bit     1, (ix+0)
		ret     nz
		ld      a, (ix+0Dh)
		and     0Fh
		jp      nz, loc_4942
		set     4, (ix+0)
		ret
; ---------------------------------------------------------------------------

locret_4941:		            ; CODE XREF: sub_48E1+67↓j
		ret
; ---------------------------------------------------------------------------

loc_4942:		               ; CODE XREF: sub_48E1+58↑j
		ld      c, a
		ld      a, (byte_F160)
		bit     2, a
		jp      nz, locret_4941
		dec     c
		ld      hl, off_49AC
		call    sub_4546
		ld      de, 0F160h
		ld      a, 80h
		ld      (de), a
		inc     de
		ld      a, 2
		ld      (de), a
		inc     de
		ld      a, 1
		ld      (de), a
		inc     de
		ld      bc, 4
		ldir
		push    hl
		ld      bc, 29h ; ')'
		ld      hl, unk_4983
		ldir
		pop     hl
		ld      a, (hl)
		inc     hl
		ld      h, (hl)
		ld      l, a
		ld      ix, 0F160h
		call    sub_45AD
		call    loc_436A
		ld      ix, 0F040h
		ret
; End of function sub_48E1

; ---------------------------------------------------------------------------
unk_4983:       db    0		 ; DATA XREF: sub_48E1+89↑o
		db    0
		db  30h ; 0
		db 0C0h
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
off_49AC:       dw unk_4A2D             ; DATA XREF: sub_48E1+6B↑o
		dw unk_4A06
		dw unk_49D2
		dw unk_4A62
		dw unk_49D2
		dw unk_4A62
		dw unk_4A06
		dw unk_4A06
		dw unk_4AA8
		dw unk_4AAE
		dw unk_49CC
		dw unk_49D2
		dw unk_49D2
		dw unk_49D2
		dw unk_49D8
		dw unk_49D8
unk_49CC:       db 0E3h		 ; DATA XREF: ROM:49C0↑o
		db  49h ; I
		db    8
		db    8
		db 0EDh
		db  49h ; I
unk_49D2:       db 0E5h		 ; DATA XREF: ROM:49B0↑o
				        ; ROM:49B4↑o ...
		db  49h ; I
		db    3
		db    8
		db 0EDh
		db  49h ; I
unk_49D8:       db 0DEh		 ; DATA XREF: ROM:49C8↑o
				        ; ROM:49CA↑o
		db  49h ; I
		db 0FEh
		db    8
		db 0EDh
		db  49h ; I
		db 0E0h
		db  40h ; @
		db 0F6h
		db 0E5h
		db  49h ; I
		db 0E0h
		db  80h
		db 0FEh
		db    0
		db    2
		db    0
		db    0
		db 0B0h
		db  10h
		db 0F2h
		db  3Bh ; ;
		db    8
		db  30h ; 0
		db  31h ; 1
		db  60h ; `
		db  1Fh
		db  1Fh
		db  15h
		db  13h
		db  1Fh
		db  1Fh
		db  1Fh
		db  16h
		db    0
		db    0
		db  18h
		db  0Dh
		db    0
		db    0
		db    0
		db  37h ; 7
		db    0
		db  30h ; 0
		db    5
		db  82h
unk_4A06:       db  0Ch		 ; DATA XREF: ROM:49AE↑o
				        ; ROM:49B8↑o ...
		db  4Ah ; J
		db    0
		db  0Eh
		db  14h
		db  4Ah ; J
		db 0FEh
		db    3
		db    1
		db    0
		db    0
		db 0B0h
		db  0Ch
		db 0F2h
		db  3Ch ; <
		db  0Fh
		db    0
		db    0
		db    0
		db  1Fh
		db  1Ah
		db  18h
		db  1Ch
		db  17h
		db  11h
		db  1Ah
		db  0Eh
		db    0
		db  0Fh
		db  14h
		db  10h
		db  1Fh
		db 0ECh
		db 0FFh
		db 0FFh
		db    5
		db  80h
		db  0Ch
		db  80h
unk_4A2D:       db  33h ; 3             ; DATA XREF: ROM:off_49AC↑o
		db  4Ah ; J
		db 0D0h
		db  0Ah
		db  3Bh ; ;
		db  4Ah ; J
		db 0FEh
		db    3
		db    1
		db    2
		db    0
		db  95h
		db  0Ch
		db 0F2h
		db 0FCh
		db    1
		db    0
		db    0
		db    0
		db  1Fh
		db  9Fh
		db  9Fh
		db  1Fh
		db  15h
		db  13h
		db  1Fh
		db  11h
		db    0
		db    0
		db  0Eh
		db  0Dh
		db 0F5h
		db 0FFh
		db    9
		db 0F6h
		db  0Ah
		db  86h
		db  20h
		db  82h
		db  5Ah ; Z
		db  4Ah ; J
		db    0
		db  0Ah
		db  8Fh
		db  4Ah ; J
		db 0FEh
		db    3
		db    1
		db    2
		db    0
		db  32h ; 2
		db  50h ; P
		db 0F2h
unk_4A62:       db  87h		 ; DATA XREF: ROM:49B2↑o
				        ; ROM:49B6↑o
		db  4Ah ; J
		db    0
		db    3
		db  8Fh
		db  4Ah ; J
		db  87h
		db  4Ah ; J
		db    0
		db    7
		db  8Fh
		db  4Ah ; J
		db  87h
		db  4Ah ; J
		db    0
		db  13h
		db  8Fh
		db  4Ah ; J
		db  80h
		db  4Ah ; J
		db    0
		db    3
		db  8Fh
		db  4Ah ; J
		db  85h
		db  4Ah ; J
		db    0
		db    3
		db  8Fh
		db  4Ah ; J
		db 0E0h
		db  80h
		db 0F6h
		db  87h
		db  4Ah ; J
		db 0E0h
		db  40h ; @
		db 0FEh
		db    0
		db    3
		db    0
		db    3
		db 0D1h
		db    8
		db 0F2h
		db  3Dh ; =
		db    0
		db  0Fh
		db  0Fh
		db  0Fh
		db  1Fh
		db  9Fh
		db  9Fh
		db  9Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db  0Bh
		db  0Dh
		db  0Ch
		db  0Fh
		db  4Ch ; L
		db  4Ch ; L
		db  4Ch ; L
		db    0
		db  8Bh
		db  8Bh
		db  80h
unk_4AA8:       db 0B4h		 ; DATA XREF: ROM:49BC↑o
		db  4Ah ; J
		db 0FFh
		db  0Ch
		db 0BCh
		db  4Ah ; J
unk_4AAE:       db 0B4h		 ; DATA XREF: ROM:49BE↑o
		db  4Ah ; J
		db    0
		db  0Ch
		db 0BCh
		db  4Ah ; J
		db 0FEh
		db    3
		db    1
		db    0
		db    0
		db 0B4h
		db  0Ch
		db 0F2h
		db  3Ch ; <
		db  0Fh
		db    0
		db    0
		db    0
		db  1Fh
		db  1Ah
		db  18h
		db  1Ch
		db  17h
		db  11h
		db  1Ah
		db  0Eh
		db    0
		db  0Fh
		db  14h
		db  10h
		db  1Fh
		db 0ECh
		db 0FFh
		db 0FFh
		db    5
		db  80h
		db  0Ch
		db  80h
unk_4AD5:       db 0B0h		 ; DATA XREF: sub_4003+36F↑o
		db  30h ; 0
		db  38h ; 8
		db  34h ; 4
		db  3Ch ; <
		db  50h ; P
		db  58h ; X
		db  54h ; T
		db  5Ch ; \
		db  60h ; `
		db  68h ; h
		db  64h ; d
		db  6Ch ; l
		db  70h ; p
		db  78h ; x
		db  74h ; t
		db  7Ch ; |
		db  80h
		db  88h
		db  84h
		db  8Ch
unk_4AEA:       db  40h ; @             ; DATA XREF: ROM:4856↑o
		db  48h ; H
		db  44h ; D
		db  4Ch ; L
unk_4AEE:       db  90h		 ; DATA XREF: ROM:463B↑o
		db  98h
		db  94h
		db  9Ch
unk_4AF2:       db  6Bh ; k             ; DATA XREF: sub_4003+2F3↑o
		db  42h ; B
		db  8Fh
		db  42h ; B
		db 0B6h
		db  52h ; R
		db 0E2h
		db  52h ; R
		db  0Ch
		db  53h ; S
		db  3Ah ; :
		db  63h ; c
		db  6Bh ; k
		db  63h ; c
		db  9Fh
		db  63h ; c
		db 0D6h
		db  73h ; s
		db  10h
		db  74h ; t
		db  4Eh ; N
		db  84h
		db  90h
		db  84h
unk_4B0A:       db    1		 ; DATA XREF: sub_4003:loc_43AB↑o
		db    0
		db 0B8h
		db  4Bh ; K
		db  80h
		db    3
		db    0
		db    0
		db    0
		db  80h
		db  80h
		db  80h
		db  80h
unk_4B17:       db  22h ; "             ; DATA XREF: sub_4003+3D8↑o
		db    0
		db  2Bh ; +
		db    0
		db  28h ; (
		db    0
		db  28h ; (
		db    1
		db  28h ; (
		db    2
		db  28h ; (
		db    4
		db  28h ; (
		db    5
		db  28h ; (
		db    6
		db  27h ; '
		db  15h
unk_4B29:       db  40h ; @             ; DATA XREF: sub_4003+3E6↑o
		db  7Fh ; 
		db  41h ; A
		db  7Fh ; 
		db  42h ; B
		db  7Fh ; 
		db  44h ; D
		db  7Fh ; 
		db  45h ; E
		db  7Fh ; 
		db  46h ; F
		db  7Fh ; 
		db  48h ; H
		db  7Fh ; 
		db  49h ; I
		db  7Fh ; 
		db  4Ah ; J
		db  7Fh ; 
		db  4Ch ; L
		db  7Fh ; 
		db  4Dh ; M
		db  7Fh ; 
		db  4Eh ; N
		db  7Fh ; 
		db  80h
		db 0FFh
		db  81h
		db 0FFh
		db  82h
		db 0FFh
		db  84h
		db 0FFh
		db  85h
		db 0FFh
		db  86h
		db 0FFh
		db  88h
		db 0FFh
		db  89h
		db 0FFh
		db  8Ah
		db 0FFh
		db  8Ch
		db 0FFh
		db  8Dh
		db 0FFh
		db  8Eh
		db 0FFh
		db  90h
		db    0
		db  91h
		db    0
		db  92h
		db    0
		db  94h
		db    0
		db  95h
		db    0
		db  96h
		db    0
		db  98h
		db    0
		db  99h
		db    0
		db  9Ah
		db    0
		db  9Ch
		db    0
		db  9Dh
		db    0
		db  9Eh
		db    0
unk_4B71:       db    0		 ; DATA XREF: sub_4003+448↑o
				        ; sub_4003+4B8↑o
		db    0
		db  30h ; 0
		db 0C0h
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_4B9A:       db  84h		 ; DATA XREF: sub_4003+423↑o
		db    2
		db  80h
		db    0
		db  80h
		db    1
		db  80h
		db    4
		db  80h
		db    5
		db  80h
		db    6
		db  80h
		db    2
word_4BA8:      dw 0F190h               ; DATA XREF: sub_4003+496↑o
		dw 0F1C0h
		dw 0F280h
		dw 0F1C0h
		dw 0F1F0h
		dw 0F220h
		dw 0F250h
		dw 0F1C0h
		db 0C6h
		db  4Bh ; K
		db 0C6h
		db  4Bh ; K
		db    6
		db  4Ch ; L
		db  24h ; $
		db  7Dh ; }
		db  26h ; &
		db  4Ch ; L
		db  47h ; G
		db  4Dh ; M
		db  90h
		db    0
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db  40h ; @
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  10h
		db  10h
		db    0
		db    0
		db    0
		db    0
		db    0
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  47h ; G
		db  4Dh ; M
		db 0A9h
		db  58h ; X
		db 0A7h
		db  62h ; b
		db 0A1h
		db  67h ; g
		db  3Eh ; >
		db  6Eh ; n
		db  9Dh
		db  74h ; t
		db 0AFh
		db  7Ah ; z
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db 0A7h
		db  62h ; b
		db  3Ah ; :
		db  4Ch ; L
		db  46h ; F
		db  4Ch ; L
		db  57h ; W
		db  4Ch ; L
		db  59h ; Y
		db  4Ch ; L
		db  9Bh
		db  4Ch ; L
		db 0B3h
		db  4Ch ; L
		db 0F0h
		db  4Ch ; L
		db  0Ah
		db  4Dh ; M
		db  24h ; $
		db  4Dh ; M
		db  35h ; 5
		db  4Dh ; M
		db  40h ; @
		db  60h ; `
		db  70h ; p
		db  60h ; `
		db  50h ; P
		db  30h ; 0
		db  10h
		db 0F0h
		db 0D0h
		db 0B0h
		db  90h
		db  81h
		db    0
		db  20h
		db  40h ; @
		db  60h ; `
		db  7Fh ; 
		db  60h ; `
		db  40h ; @
		db  20h
		db    0
		db 0E0h
		db 0C0h
		db 0A0h
		db  84h
		db 0A0h
		db 0C0h
		db 0E0h
		db  80h
		db  7Fh ; 
		db  81h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db    4
		db    6
		db    8
		db  0Ah
		db  0Ch
		db  0Ah
		db    8
		db    6
		db    4
		db    2
		db    0
		db 0FEh
		db 0FCh
		db 0FAh
		db 0F8h
		db 0F6h
		db 0F4h
		db 0F6h
		db 0F8h
		db 0FAh
		db 0FCh
		db 0FEh
		db    0
		db  82h
		db  29h ; )
		db    8
		db  10h
		db  18h
		db  20h
		db  28h ; (
		db  30h ; 0
		db  28h ; (
		db  20h
		db  18h
		db  10h
		db    8
		db    0
		db 0F8h
		db 0F0h
		db 0E8h
		db 0E0h
		db 0D8h
		db 0D0h
		db 0D8h
		db 0E0h
		db 0E8h
		db 0F0h
		db 0F8h
		db  80h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    3
		db    6
		db    3
		db    0
		db 0FDh
		db 0FAh
		db 0FAh
		db 0FDh
		db    0
		db  82h
		db  33h ; 3
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db    4
		db    2
		db    0
		db 0FEh
		db 0FCh
		db 0FEh
		db    0
		db  82h
		db  11h
		db 0FEh
		db 0FFh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db    1
		db    0
		db    0
		db 0FFh
		db 0FFh
		db  82h
		db  11h
		db    0
		db    0
		db    0
		db    0
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    1
		db    0
		db    0
		db    0
		db  80h
		db    0
		db    0
		db    0
		db    0
		db    1
		db    1
		db    1
		db    1
		db    2
		db    2
		db    1
		db    1
		db    1
		db    0
		db    0
		db    0
		db  82h
		db    4
		db 0E1h
		db  57h ; W
		db    6
		db    0
		db    2
		db    0
		db  65h ; e
		db  4Dh ; M
		db    0
		db    0
		db  2Ah ; *
		db  4Eh ; N
		db 0F4h
		db    2
		db  62h ; b
		db  50h ; P
		db 0F4h
		db    2
		db  7Eh ; ~
		db  50h ; P
		db 0F4h
		db    2
		db 0C5h
		db  51h ; Q
		db 0F4h
		db    2
		db  6Eh ; n
		db  54h ; T
		db 0F4h
		db    2
		db 0F8h
		db 0A8h
		db  4Dh ; M
		db 0F7h
		db    0
		db    5
		db  65h ; e
		db  4Dh ; M
		db 0F8h
		db 0B1h
		db  4Dh ; M
		db 0F8h
		db 0A8h
		db  4Dh ; M
		db 0F7h
		db    0
		db    7
		db  70h ; p
		db  4Dh ; M
		db 0F8h
		db 0C1h
		db  4Dh ; M
		db 0F8h
		db 0A8h
		db  4Dh ; M
		db 0F7h
		db    0
		db    3
		db  7Bh ; {
		db  4Dh ; M
		db 0F8h
		db 0CDh
		db  4Dh ; M
		db 0F8h
		db 0DAh
		db  4Dh ; M
		db 0F7h
		db    0
		db    4
		db  86h
		db  4Dh ; M
		db 0F8h
		db 0E8h
		db  4Dh ; M
		db 0F7h
		db    0
		db    4
		db  8Eh
		db  4Dh ; M
		db 0F8h
		db 0FAh
		db  4Dh ; M
		db 0F8h
		db 0FAh
		db  4Dh ; M
		db 0F8h
		db  0Ch
		db  4Eh ; N
		db 0F8h
		db  0Ch
		db  4Eh ; N
		db 0F8h
		db  14h
		db  4Eh ; N
		db 0F6h
		db  70h ; p
		db  4Dh ; M
		db  82h
		db  18h
		db  82h
		db  82h
		db  0Ch
		db  82h
		db  82h
		db  18h
		db 0F9h
		db  82h
		db  18h
		db  82h
		db  0Ch
		db  8Ch
		db    6
		db  8Bh
		db  82h
		db  0Ch
		db  82h
		db  8Ch
		db    6
		db  8Ch
		db  8Bh
		db  8Bh
		db 0F9h
		db  82h
		db  18h
		db  8Ch
		db    6
		db  8Ch
		db  8Bh
		db  0Ch
		db  82h
		db  10h
		db  82h
		db  82h
		db 0F9h
		db  82h
		db  18h
		db  82h
		db  82h
		db  0Ch
		db  82h
		db    6
		db  82h
		db  82h
		db  82h
		db  8Ch
		db  0Ch
		db 0F9h
		db  81h
		db  18h
		db  82h
		db  30h ; 0
		db  82h
		db  0Ch
		db  81h
		db  81h
		db  18h
		db  82h
		db  30h ; 0
		db  82h
		db  18h
		db 0F9h
		db  84h
		db  0Ch
		db  84h
		db  82h
		db  84h
		db  84h
		db  84h
		db  82h
		db  84h
		db  84h
		db  84h
		db  82h
		db  84h
		db  84h
		db  84h
		db  82h
		db  84h
		db 0F9h
		db  84h
		db  0Ch
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  84h
		db  82h
		db  84h
		db 0F9h
		db  80h
		db  0Ch
		db  82h
		db  82h
		db  82h
		db  82h
		db  30h ; 0
		db 0F9h
		db  82h
		db  18h
		db  82h
		db  82h
		db  0Ch
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  18h
		db  82h
		db    6
		db  82h
		db  8Ch
		db  8Bh
		db  82h
		db  82h
		db  8Ch
		db  8Bh
		db 0F9h
		db 0EFh
		db    4
		db 0BCh
		db  60h ; `
		db 0BFh
		db  60h ; `
		db 0C1h
		db  60h ; `
		db 0C3h
		db  60h ; `
		db 0C4h
		db  60h ; `
		db 0C6h
		db  60h ; `
		db 0EFh
		db    1
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0C6h
		db  0Ch
		db 0E7h
		db  0Ah
		db  80h
		db    2
		db 0C6h
		db  14h
		db  80h
		db    4
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0CEh
		db  14h
		db  80h
		db    4
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D2h
		db  0Ch
		db 0E7h
		db  0Ah
		db  80h
		db    2
		db 0D2h
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  14h
		db  80h
		db    4
		db 0CEh
		db  14h
		db  80h
		db    4
		db 0CCh
		db  14h
		db  80h
		db    4
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ch
		db 0E7h
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  14h
		db  80h
		db    4
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0CCh
		db  10h
		db 0CEh
		db  10h
		db 0D0h
		db  10h
		db 0D2h
		db  14h
		db  80h
		db  1Ch
		db 0D2h
		db  10h
		db 0D0h
		db  10h
		db 0D2h
		db  10h
		db 0D3h
		db  60h ; `
		db 0E7h
		db  60h ; `
		db  80h
		db  60h ; `
		db  80h
		db 0EFh
		db    0
		db  80h
		db  18h
		db 0C7h
		db  14h
		db  80h
		db    4
		db 0C6h
		db  14h
		db  80h
		db    4
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C9h
		db  0Ch
		db 0E7h
		db  14h
		db  80h
		db    4
		db 0C7h
		db  14h
		db  80h
		db    4
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  14h
		db  80h
		db    4
		db 0CBh
		db  0Ch
		db 0E7h
		db  26h ; &
		db  80h
		db  0Ah
		db 0CCh
		db  14h
		db  80h
		db    4
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ch
		db 0E7h
		db  0Ah
		db  80h
		db    2
		db 0C9h
		db  0Ch
		db 0E7h
		db  48h ; H
		db  80h
		db  18h
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C9h
		db  0Ch
		db 0E7h
		db  14h
		db  80h
		db    4
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  0Ch
		db 0E7h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  14h
		db  80h
		db    4
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ch
		db 0E7h
		db  26h ; &
		db  80h
		db  22h ; "
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ch
		db 0E7h
		db  1Ch
		db  80h
		db    8
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0CCh
		db  14h
		db  80h
		db    4
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0C9h
		db  14h
		db  80h
		db    4
		db 0C9h
		db  1Ch
		db  80h
		db    8
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  14h
		db  80h
		db    4
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  0Ch
		db 0E7h
		db  26h ; &
		db  80h
		db  16h
		db 0C4h
		db  14h
		db  80h
		db    4
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0C9h
		db  0Ah
		db  80h
		db    2
		db 0C9h
		db  0Ch
		db 0E7h
		db  14h
		db  80h
		db    4
		db 0C9h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  0Ah
		db  80h
		db    2
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C6h
		db  14h
		db  80h
		db    4
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C4h
		db  14h
		db  80h
		db    4
		db 0C6h
		db  0Ah
		db  80h
		db    2
		db 0C7h
		db  0Ch
		db 0E7h
		db  60h ; `
		db 0E7h
		db  26h ; &
		db  80h
		db  22h ; "
		db 0EFh
		db    7
		db 0C7h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  3Ah ; :
		db  80h
		db  0Eh
		db 0D3h
		db  14h
		db  80h
		db    4
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0D2h
		db  0Ah
		db  80h
		db    2
		db 0D3h
		db  14h
		db  80h
		db    4
		db 0D3h
		db  14h
		db  80h
		db    4
		db 0D3h
		db  0Ah
		db  80h
		db    2
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  26h ; &
		db  80h
		db  16h
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0C9h
		db  14h
		db  80h
		db  28h ; (
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ah
		db  80h
		db    2
		db 0C9h
		db  14h
		db  80h
		db  1Ch
		db 0C7h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ah
		db  80h
		db    2
		db 0D0h
		db  0Ah
		db  80h
		db    2
		db 0CEh
		db  0Ch
		db 0E7h
		db  48h ; H
		db 0E7h
		db  60h ; `
		db 0F6h
		db  38h ; 8
		db  4Eh ; N
		db 0EFh
		db    4
		db 0C4h
		db  60h ; `
		db 0C3h
		db  60h ; `
		db 0C4h
		db  60h ; `
		db 0C6h
		db  60h ; `
		db 0C7h
		db  60h ; `
		db 0C9h
		db  60h ; `
		db  80h
		db  0Ch
		db 0EFh
		db    1
		db 0F0h
		db  12h
		db    2
		db    3
		db    4
		db 0E6h
		db  0Ch
		db 0F6h
		db  3Ah ; :
		db  4Eh ; N
		db 0EFh
		db    3
		db 0CBh
		db  18h
		db 0CBh
		db    6
		db 0C9h
		db 0C8h
		db 0C9h
		db 0CBh
		db  30h ; 0
		db 0E7h
		db  18h
		db 0CFh
		db    6
		db 0CDh
		db 0CBh
		db 0CDh
		db 0CFh
		db  30h ; 0
		db 0D0h
		db  30h ; 0
		db 0C9h
		db  18h
		db 0D0h
		db 0D0h
		db 0CFh
		db 0CDh
		db 0CBh
		db 0D0h
		db 0CCh
		db 0D0h
		db 0D3h
		db 0D2h
		db 0CEh
		db 0D2h
		db 0D5h
		db    9
		db 0BFh
		db    3
		db 0C2h
		db 0C7h
		db 0CBh
		db 0CEh
		db 0D3h
		db  60h ; `
		db 0D2h
		db 0D0h
		db 0D2h
		db  18h
		db 0D0h
		db 0D2h
		db 0D5h
		db 0D3h
		db  60h ; `
		db 0D2h
		db 0D0h
		db  30h ; 0
		db 0CCh
		db  10h
		db 0CEh
		db 0D0h
		db 0D2h
		db  30h ; 0
		db 0D2h
		db  10h
		db 0D0h
		db 0D2h
		db 0D3h
		db  60h ; `
		db 0D0h
		db 0CFh
		db  18h
		db 0CEh
		db 0CCh
		db 0CAh
		db 0C9h
		db  30h ; 0
		db 0CEh
		db 0EFh
		db    6
		db 0BFh
		db  0Ch
		db 0BFh
		db  0Ch
		db  80h
		db  0Ch
		db 0BFh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0BFh
		db  12h
		db  80h
		db    6
		db 0BFh
		db  0Ch
		db 0BFh
		db  0Ch
		db  80h
		db  0Ch
		db 0BFh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0BFh
		db  12h
		db  80h
		db    6
		db 0C4h
		db  0Ch
		db 0C4h
		db  0Ch
		db  80h
		db  0Ch
		db 0C4h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C4h
		db  12h
		db  80h
		db    6
		db 0C9h
		db  0Ch
		db 0C9h
		db  0Ch
		db  80h
		db  0Ch
		db 0C9h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C9h
		db  12h
		db  80h
		db    6
		db 0F7h
		db    0
		db    2
		db 0CFh
		db  50h ; P
		db 0C6h
		db  0Ch
		db 0C6h
		db  0Ch
		db 0C6h
		db  0Ch
		db 0C6h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C6h
		db  12h
		db  80h
		db    6
		db 0C6h
		db  0Ch
		db 0C6h
		db  0Ch
		db 0C6h
		db  0Ch
		db 0C6h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C6h
		db  12h
		db  80h
		db    6
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C7h
		db  12h
		db  80h
		db    6
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C7h
		db  12h
		db  80h
		db    6
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0C7h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C7h
		db  12h
		db  80h
		db    6
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CEh
		db  12h
		db  80h
		db    6
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CEh
		db  12h
		db  80h
		db    6
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db 0E7h
		db  24h ; $
		db  80h
		db  0Ch
		db  80h
		db  60h ; `
		db  80h
		db  80h
		db  80h
		db  80h
		db  0Ch
		db 0C4h
		db    6
		db  80h
		db    6
		db 0C4h
		db    6
		db  80h
		db    6
		db 0C4h
		db    6
		db  80h
		db    6
		db 0C4h
		db    6
		db  80h
		db  2Ah ; *
		db  80h
		db  0Ch
		db 0C4h
		db    6
		db  80h
		db    6
		db 0C4h
		db    6
		db  80h
		db    6
		db 0C4h
		db    6
		db  80h
		db    6
		db 0C4h
		db    6
		db  80h
		db  12h
		db 0D3h
		db  0Ch
		db 0D2h
		db  0Ch
		db  80h
		db  60h ; `
		db  80h
		db 0EFh
		db    3
		db 0F6h
		db 0AAh
		db  50h ; P
		db 0EFh
		db    5
		db 0F8h
		db 0C3h
		db  52h ; R
		db 0F8h
		db    6
		db  53h ; S
		db 0EFh
		db    6
		db 0C2h
		db  0Ch
		db 0C2h
		db  0Ch
		db  80h
		db  0Ch
		db 0C2h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C2h
		db  12h
		db  80h
		db    6
		db 0C4h
		db  0Ch
		db 0C4h
		db  0Ch
		db  80h
		db  0Ch
		db 0C4h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C4h
		db  12h
		db  80h
		db    6
		db 0C9h
		db  0Ch
		db 0C9h
		db  0Ch
		db  80h
		db  0Ch
		db 0C9h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0C9h
		db  12h
		db  80h
		db    6
		db 0CEh
		db  0Ch
		db 0CEh
		db  0Ch
		db  80h
		db  0Ch
		db 0CEh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CEh
		db  12h
		db  80h
		db    6
		db 0F7h
		db    0
		db    2
		db 0CFh
		db  51h ; Q
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CBh
		db  12h
		db  80h
		db    6
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CBh
		db  12h
		db  80h
		db    6
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CBh
		db  12h
		db  80h
		db    6
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0CBh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CBh
		db  12h
		db  80h
		db    6
		db 0CCh
		db  0Ch
		db 0CCh
		db  0Ch
		db 0CCh
		db  0Ch
		db 0CCh
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0CCh
		db  12h
		db  80h
		db    6
		db 0D2h
		db  0Ch
		db 0D2h
		db  0Ch
		db 0D2h
		db  0Ch
		db 0D2h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0D2h
		db  12h
		db  80h
		db    6
		db 0D3h
		db  0Ch
		db 0D3h
		db  0Ch
		db 0D3h
		db  0Ch
		db 0D3h
		db  0Ch
		db 0E7h
		db  12h
		db  80h
		db    6
		db 0D3h
		db  12h
		db  80h
		db    6
		db 0D3h
		db  0Ch
		db 0D3h
		db  0Ch
		db 0D3h
		db  0Ch
		db 0D3h
		db  0Ch
		db 0E7h
		db  24h ; $
		db  80h
		db  0Ch
		db 0EFh
		db    5
		db 0F8h
		db  85h
		db  53h ; S
		db 0EFh
		db    6
		db  80h
		db  0Ch
		db 0C7h
		db    6
		db  80h
		db    6
		db 0C7h
		db    6
		db  80h
		db    6
		db 0C7h
		db    6
		db  80h
		db    6
		db 0C7h
		db    6
		db  80h
		db  2Ah ; *
		db  80h
		db  0Ch
		db 0C7h
		db    6
		db  80h
		db    6
		db 0C7h
		db    6
		db  80h
		db    6
		db 0C7h
		db    6
		db  80h
		db    6
		db 0C7h
		db    6
		db  80h
		db  2Ah ; *
		db  80h
		db  60h ; `
		db  80h
		db 0EFh
		db    5
		db 0F6h
		db 0CAh
		db  51h ; Q
		db 0D7h
		db  60h ; `
		db 0E7h
		db  14h
		db  80h
		db  1Ch
		db 0D0h
		db  14h
		db  80h
		db    4
		db 0D4h
		db  14h
		db  80h
		db    4
		db 0CDh
		db  26h ; &
		db  80h
		db  0Ah
		db 0C9h
		db  26h ; &
		db  80h
		db  0Ah
		db 0CBh
		db  26h ; &
		db  80h
		db  0Ah
		db 0CDh
		db  14h
		db  80h
		db    4
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0D0h
		db  14h
		db  80h
		db    4
		db 0CCh
		db  14h
		db  80h
		db    4
		db 0D0h
		db  14h
		db  80h
		db    4
		db 0D3h
		db  14h
		db  80h
		db    4
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0CEh
		db  14h
		db  80h
		db    4
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0D5h
		db  14h
		db  80h
		db    4
		db 0F9h
		db 0D3h
		db  4Ch ; L
		db  80h
		db  14h
		db 0D2h
		db  4Ch ; L
		db  80h
		db  14h
		db 0D0h
		db  4Ch ; L
		db  80h
		db  14h
		db 0D2h
		db  14h
		db  80h
		db    4
		db 0D0h
		db  14h
		db  80h
		db    4
		db 0CEh
		db  14h
		db  80h
		db    4
		db 0D5h
		db  14h
		db  80h
		db    4
		db 0D3h
		db  4Ch ; L
		db  80h
		db  14h
		db 0D2h
		db  4Ch ; L
		db  80h
		db  14h
		db 0D0h
		db  26h ; &
		db  80h
		db  0Ah
		db 0CCh
		db  10h
		db 0CEh
		db  10h
		db 0D0h
		db  10h
		db 0D2h
		db  26h ; &
		db  80h
		db  0Ah
		db 0D2h
		db  10h
		db 0D0h
		db  10h
		db 0D2h
		db  10h
		db 0D3h
		db  4Ch ; L
		db  80h
		db  14h
		db 0D0h
		db  4Ch ; L
		db  80h
		db  14h
		db 0CFh
		db  14h
		db  80h
		db    4
		db 0CEh
		db  14h
		db  80h
		db    4
		db 0CCh
		db  14h
		db  80h
		db    4
		db 0CAh
		db  14h
		db  80h
		db    4
		db 0C9h
		db  26h ; &
		db  80h
		db  0Ah
		db 0CEh
		db  26h ; &
		db  80h
		db  0Ah
		db 0F9h
		db  80h
		db  48h ; H
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CCh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  14h
		db  80h
		db    4
		db 0CFh
		db  0Ah
		db  80h
		db    2
		db 0CBh
		db  0Ch
		db 0E7h
		db  1Ch
		db  80h
		db  14h
		db 0F9h
		db 0D3h
		db  26h ; &
		db  80h
		db  0Ah
		db 0D2h
		db  26h ; &
		db  80h
		db  0Ah
		db 0D1h
		db  26h ; &
		db  80h
		db  3Ah ; :
		db 0F9h
		db  80h
		db    6
		db 0CCh
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D8h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0CCh
		db    4
		db  80h
		db    8
		db 0CCh
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D8h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0CCh
		db    4
		db  80h
		db    2
		db  80h
		db    6
		db 0CEh
		db    4
		db  80h
		db    2
		db 0D2h
		db    4
		db  80h
		db    2
		db 0D5h
		db    4
		db  80h
		db    2
		db 0DAh
		db    4
		db  80h
		db    2
		db 0D5h
		db    4
		db  80h
		db    2
		db 0D2h
		db    4
		db  80h
		db    2
		db 0CEh
		db    4
		db  80h
		db    8
		db 0CEh
		db    4
		db  80h
		db    2
		db 0D2h
		db    4
		db  80h
		db    2
		db 0D5h
		db    4
		db  80h
		db    2
		db 0DAh
		db    4
		db  80h
		db    2
		db 0D5h
		db    4
		db  80h
		db    2
		db 0D2h
		db    4
		db  80h
		db    2
		db 0CEh
		db    4
		db  80h
		db    2
		db  80h
		db    6
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D7h
		db    4
		db  80h
		db    2
		db 0DAh
		db    4
		db  80h
		db    2
		db 0DFh
		db    4
		db  80h
		db    2
		db 0DAh
		db    4
		db  80h
		db    2
		db 0D7h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    8
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D7h
		db    4
		db  80h
		db    2
		db 0DAh
		db    4
		db  80h
		db    2
		db 0DFh
		db    4
		db  80h
		db    2
		db 0DAh
		db    4
		db  80h
		db    2
		db 0D7h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db  80h
		db    6
		db 0CBh
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D7h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0CBh
		db    4
		db  80h
		db    8
		db 0CBh
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D7h
		db    4
		db  80h
		db    2
		db 0D3h
		db    4
		db  80h
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0CBh
		db    4
		db  80h
		db    2
		db 0F9h
		db 0EFh
		db    2
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0BCh
		db  0Ah
		db  80h
		db    2
		db 0BCh
		db    6
		db  80h
		db 0BCh
		db  0Ah
		db  80h
		db    2
		db 0BCh
		db    6
		db  80h
		db 0BCh
		db  0Ah
		db  80h
		db    2
		db 0BCh
		db    6
		db  80h
		db 0BCh
		db  0Ah
		db  80h
		db    2
		db 0BCh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BFh
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BFh
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BFh
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BFh
		db    6
		db  80h
		db 0C0h
		db  0Ah
		db  80h
		db    2
		db 0C0h
		db    6
		db  80h
		db 0C0h
		db  0Ah
		db  80h
		db    2
		db 0C0h
		db    6
		db  80h
		db 0C0h
		db  0Ah
		db  80h
		db    2
		db 0C0h
		db    6
		db  80h
		db 0C0h
		db  0Ah
		db  80h
		db    2
		db 0C0h
		db    6
		db  80h
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0C2h
		db    6
		db  80h
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0C2h
		db    6
		db  80h
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0C2h
		db    6
		db  80h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db  14h
		db  80h
		db  10h
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BAh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BFh
		db    6
		db  80h
		db  12h
		db 0BAh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BAh
		db    6
		db  80h
		db 0C0h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0C0h
		db    6
		db  80h
		db  12h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0C2h
		db    6
		db  80h
		db  12h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0C0h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db  14h
		db  80h
		db  10h
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BAh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BFh
		db    6
		db  80h
		db  12h
		db 0BAh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BAh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db  12h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0C2h
		db    6
		db  80h
		db    6
		db 0C2h
		db  10h
		db 0C2h
		db 0C2h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B7h
		db  0Ah
		db  80h
		db    2
		db 0B7h
		db    6
		db  80h
		db 0B7h
		db  0Ah
		db  80h
		db    2
		db 0B7h
		db    6
		db  80h
		db 0B7h
		db  0Ah
		db  80h
		db    2
		db 0B7h
		db    6
		db  80h
		db 0B7h
		db  0Ah
		db  80h
		db    2
		db 0B7h
		db    6
		db  80h
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db 0BBh
		db  14h
		db  80h
		db    4
		db 0BBh
		db  14h
		db  80h
		db    4
		db 0BBh
		db  14h
		db  80h
		db    4
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db 0B8h
		db  14h
		db  80h
		db    4
		db 0B8h
		db  14h
		db  80h
		db    4
		db 0B8h
		db  14h
		db  80h
		db    4
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db 0BDh
		db  14h
		db  80h
		db    4
		db 0BDh
		db  14h
		db  80h
		db    4
		db 0BDh
		db  14h
		db  80h
		db    4
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0BAh
		db    6
		db  80h
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db    6
		db 0F7h
		db    0
		db    2
		db  4Bh ; K
		db  56h ; V
		db 0BFh
		db  14h
		db  80h
		db    4
		db 0BFh
		db  14h
		db  80h
		db    4
		db 0BFh
		db  14h
		db  80h
		db    4
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BAh
		db    6
		db  80h
		db    6
		db 0BFh
		db  14h
		db  80h
		db    4
		db 0BFh
		db  14h
		db  80h
		db    4
		db 0BFh
		db  14h
		db  80h
		db    4
		db 0BFh
		db  0Ah
		db  80h
		db    2
		db 0BAh
		db    6
		db  80h
		db    6
		db 0B8h
		db  14h
		db  80h
		db    4
		db 0B8h
		db  14h
		db  80h
		db    4
		db 0B8h
		db  14h
		db  80h
		db    4
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db    6
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db    6
		db  80h
		db    6
		db 0BDh
		db  14h
		db  80h
		db    4
		db 0BDh
		db  14h
		db  80h
		db    4
		db 0BDh
		db  14h
		db  80h
		db    4
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0B8h
		db    6
		db  80h
		db    6
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  14h
		db  80h
		db    4
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B1h
		db    6
		db  80h
		db    6
		db 0AFh
		db  14h
		db  80h
		db    4
		db 0AFh
		db  14h
		db  80h
		db    4
		db 0AFh
		db  14h
		db  80h
		db    4
		db 0AFh
		db  0Ah
		db  80h
		db    2
		db 0AAh
		db    6
		db  80h
		db    6
		db 0AFh
		db  14h
		db  80h
		db    4
		db 0AFh
		db  14h
		db  80h
		db    4
		db 0AFh
		db  14h
		db  80h
		db    4
		db 0AFh
		db  0Ah
		db  80h
		db    2
		db 0AAh
		db    6
		db  80h
		db    6
		db 0B4h
		db  14h
		db  80h
		db  40h ; @
		db 0AFh
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db  14h
		db  80h
		db  10h
		db 0B6h
		db    4
		db  80h
		db    2
		db 0B8h
		db    4
		db  80h
		db    2
		db 0B6h
		db  0Ah
		db  80h
		db    2
		db 0B3h
		db    6
		db  80h
		db    6
		db 0B1h
		db  0Ah
		db  80h
		db    2
		db 0B6h
		db    6
		db  80h
		db    6
		db 0AFh
		db  14h
		db  80h
		db  10h
		db 0AFh
		db  0Ch
		db 0E7h
		db  26h ; &
		db  80h
		db  0Ah
		db 0B8h
		db  14h
		db  80h
		db  10h
		db 0B8h
		db  0Ah
		db  80h
		db  0Eh
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BCh
		db    6
		db  80h
		db    6
		db 0BDh
		db  14h
		db  80h
		db  28h ; (
		db 0B8h
		db  0Ah
		db  80h
		db    2
		db 0BBh
		db  0Ah
		db  80h
		db    2
		db 0BCh
		db    6
		db  80h
		db    6
		db 0BDh
		db  14h
		db  80h
		db  1Ch
		db 0BDh
		db  0Ah
		db  80h
		db    2
		db 0BFh
		db    6
		db  80h
		db    6
		db 0C0h
		db  0Ah
		db  80h
		db    2
		db 0C1h
		db    6
		db  80h
		db    6
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db    6
		db 0C2h
		db  14h
		db  80h
		db    4
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db    6
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db    6
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db    6
		db 0C2h
		db  14h
		db  80h
		db    4
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db    6
		db 0C2h
		db  0Ah
		db  80h
		db    2
		db 0BDh
		db    6
		db  80h
		db    6
		db 0F6h
		db  18h
		db  55h ; U
		db  3Bh ; ;
		db  73h ; s
		db  30h ; 0
		db  10h
		db    1
		db  1Fh
		db  18h
		db  18h
		db  12h
		db    7
		db  1Fh
		db    7
		db  1Fh
		db  0Ah
		db  0Ah
		db    9
		db  0Ah
		db  17h
		db  17h
		db  19h
		db  1Fh
		db  1Eh
		db  1Ah
		db  15h
		db  8Ah
		db  3Ch ; <
		db  47h ; G
		db  62h ; b
		db  60h ; `
		db  31h ; 1
		db  16h
		db  8Fh
		db  98h
		db  10h
		db    8
		db    4
		db    4
		db    4
		db    4
		db    6
		db    0
		db    4
		db  16h
		db  18h
		db  14h
		db  17h
		db  22h ; "
		db  92h
		db  12h
		db  92h
		db  38h ; 8
		db  35h ; 5
		db  30h ; 0
		db  30h ; 0
		db  31h ; 1
		db  14h
		db  9Ch
		db  1Ch
		db  9Ch
		db  11h
		db    6
		db    4
		db    1
		db  0Ch
		db  0Ah
		db    3
		db    4
		db 0B8h
		db 0B8h
		db  3Ch ; <
		db  2Ch ; ,
		db  20h
		db  28h ; (
		db  1Ch
		db  90h
		db  3Ah ; :
		db  11h
		db  22h ; "
		db  70h ; p
		db    1
		db  18h
		db  99h
		db  56h ; V
		db  4Bh ; K
		db    4
		db  0Ch
		db    1
		db    6
		db    2
		db    2
		db    2
		db    2
		db  14h
		db  18h
		db  18h
		db  18h
		db  1Dh
		db  32h ; 2
		db  30h ; 0
		db  8Eh
		db  3Ah ; :
		db    1
		db  24h ; $
		db  71h ; q
		db    3
		db  0Ch
		db    9
		db  0Bh
		db  0Dh
		db  0Ah
		db  13h
		db    8
		db    3
		db    3
		db    0
		db    2
		db    8
		db  18h
		db  1Ah
		db  1Bh
		db  1Ch
		db  16h
		db  2Dh ; -
		db  30h ; 0
		db  94h
		db  24h ; $
		db  31h ; 1
		db  31h ; 1
		db  65h ; e
		db  61h ; a
		db  1Fh
		db  18h
		db  1Fh
		db  1Fh
		db  13h
		db  11h
		db  0Eh
		db  11h
		db  0Eh
		db    8
		db  0Ch
		db    8
		db    4
		db  16h
		db    4
		db  16h
		db  16h
		db  94h
		db  12h
		db  94h
		db  24h ; $
		db  31h ; 1
		db  31h ; 1
		db  63h ; c
		db  61h ; a
		db  1Fh
		db  18h
		db  1Fh
		db  1Ch
		db  13h
		db  0Ch
		db  0Eh
		db  0Ch
		db  0Eh
		db    4
		db  0Ch
		db    6
		db    4
		db  18h
		db    4
		db  18h
		db  1Ch
		db  98h
		db  2Fh ; /
		db  98h
		db  3Bh ; ;
		db  47h ; G
		db  63h ; c
		db  61h ; a
		db  31h ; 1
		db  16h
		db  8Fh
		db  98h
		db  10h
		db    8
		db    2
		db    4
		db  0Ch
		db    8
		db    6
		db    2
		db    5
		db  16h
		db  14h
		db  14h
		db  16h
		db  1Ch
		db  22h ; "
		db  32h ; 2
		db  8Ah
		db  62h ; b
		db  61h ; a
		db    6
		db    0
		db    2
		db    3
		db 0C7h
		db  58h ; X
		db    0
		db    0
		db    4
		db  5Ah ; Z
		db 0F4h
		db    2
		db 0BDh
		db  5Ch ; \
		db 0F4h
		db    2
		db 0C9h
		db  5Ch ; \
		db 0F4h
		db    2
		db  7Dh ; }
		db  5Dh ; ]
		db 0F4h
		db    2
		db  2Ah ; *
		db  60h ; `
		db 0E8h
		db    2
		db 0F8h
		db    2
		db  59h ; Y
		db 0F8h
		db  30h ; 0
		db  59h ; Y
		db 0F8h
		db  30h ; 0
		db  59h ; Y
		db 0F8h
		db  27h ; '
		db  59h ; Y
		db 0F8h
		db  58h ; X
		db  59h ; Y
		db 0F7h
		db    0
		db    3
		db 0D3h
		db  58h ; X
		db 0F8h
		db 0BBh
		db  59h ; Y
		db 0F8h
		db  7Eh ; ~
		db  59h ; Y
		db 0F7h
		db    0
		db    3
		db 0DEh
		db  58h ; X
		db 0F8h
		db 0DFh
		db  59h ; Y
		db 0F8h
		db  30h ; 0
		db  59h ; Y
		db 0F7h
		db    0
		db    3
		db 0E9h
		db  58h ; X
		db 0F8h
		db 0BBh
		db  59h ; Y
		db 0F8h
		db  30h ; 0
		db  59h ; Y
		db 0F7h
		db    0
		db    3
		db 0F4h
		db  58h ; X
		db 0F8h
		db 0A5h
		db  59h ; Y
		db 0F6h
		db 0D3h
		db  58h ; X
		db  84h
		db  10h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db  84h
		db  84h
		db    8
		db 0F9h
		db  81h
		db  10h
		db  81h
		db  81h
		db  81h
		db  81h
		db  81h
		db  30h ; 0
		db 0F9h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db  84h
		db  84h
		db    8
		db 0F9h
		db  84h
		db  10h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db 0F9h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db  84h
		db  84h
		db    8
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db  84h
		db  84h
		db    8
		db 0F9h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db  84h
		db  84h
		db    8
		db  80h
		db  40h ; @
		db 0F9h
		db  84h
		db  10h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  80h
		db    8
		db  8Ah
		db    4
		db  8Ah
		db  8Ah
		db  8Ah
		db    8
		db  8Ah
		db    4
		db  8Ah
		db  89h
		db    8
		db  89h
		db    4
		db  89h
		db    8
		db  89h
		db 0F9h
		db  84h
		db  10h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  84h
		db    8
		db  84h
		db    4
		db  84h
		db  82h
		db    8
		db  84h
		db    4
		db  84h
		db  8Ah
		db    8
		db  8Ah
		db  8Ah
		db    4
		db  8Ah
		db    8
		db  8Ah
		db    4
		db  8Ah
		db  8Ah
		db    8
		db  8Ah
		db    4
		db  89h
		db    8
		db  89h
		db    4
		db  89h
		db 0F9h
		db 0EFh
		db    2
		db 0CDh
		db  10h
		db 0CAh
		db    4
		db  80h
		db    4
		db 0C8h
		db    4
		db  80h
		db    4
		db 0CDh
		db  10h
		db 0CAh
		db    4
		db  80h
		db    4
		db 0C8h
		db    4
		db  80h
		db    4
		db 0EFh
		db    4
		db 0F8h
		db  83h
		db  5Ch ; \
		db 0F7h
		db    0
		db    2
		db    4
		db  5Ah ; Z
		db 0EFh
		db    2
		db 0CDh
		db  10h
		db 0CAh
		db    8
		db 0C8h
		db    4
		db  80h
		db    4
		db 0CDh
		db  10h
		db 0CAh
		db    8
		db 0EFh
		db    4
		db 0D4h
		db    4
		db  80h
		db    4
		db  80h
		db    8
		db 0D4h
		db    4
		db  80h
		db    4
		db 0D4h
		db    4
		db  80h
		db    4
		db 0D6h
		db    4
		db  80h
		db    4
		db 0D1h
		db    4
		db  80h
		db  0Ch
		db 0CFh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db  80h
		db    4
		db 0F0h
		db    2
		db    2
		db  10h
		db    2
		db 0EFh
		db    9
		db 0F8h
		db  6Ah ; j
		db  5Ch ; \
		db 0F0h
		db    0
		db    0
		db    0
		db    0
		db 0EFh
		db    7
		db 0F8h
		db  25h ; %
		db  5Ch ; \
		db 0FBh
		db  0Ch
		db 0EFh
		db    0
		db 0F8h
		db 0A4h
		db  5Ah ; Z
		db 0F8h
		db 0DFh
		db  5Ah ; Z
		db 0F8h
		db 0A4h
		db  5Ah ; Z
		db 0F8h
		db 0ECh
		db  5Ah ; Z
		db 0EFh
		db    1
		db 0F8h
		db  4Bh ; K
		db  5Bh ; [
		db 0F8h
		db  62h ; b
		db  5Bh ; [
		db 0F8h
		db  62h ; b
		db  5Bh ; [
		db 0F8h
		db  8Bh
		db  5Bh ; [
		db 0F8h
		db  4Bh ; K
		db  5Bh ; [
		db 0F8h
		db  62h ; b
		db  5Bh ; [
		db 0F8h
		db 0BAh
		db  5Bh ; [
		db 0FBh
		db 0F4h
		db 0EFh
		db  0Bh
		db 0CDh
		db    8
		db 0CFh
		db    8
		db 0D1h
		db    8
		db 0D2h
		db    8
		db 0D4h
		db  0Ch
		db  80h
		db    4
		db 0D4h
		db  0Ch
		db  80h
		db    4
		db 0F6h
		db  66h ; f
		db  5Ah ; Z
		db 0BCh
		db    8
		db 0BCh
		db    4
		db  80h
		db    4
		db 0BCh
		db    8
		db 0BCh
		db    4
		db  80h
		db    4
		db 0BCh
		db    8
		db 0BCh
		db    4
		db  80h
		db    4
		db 0BCh
		db    8
		db 0BCh
		db    4
		db  80h
		db    4
		db 0BEh
		db    8
		db 0C0h
		db  0Ch
		db  80h
		db    4
		db 0BEh
		db  14h
		db  80h
		db  0Ch
		db 0BEh
		db    8
		db 0E7h
		db    8
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BEh
		db    8
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BEh
		db    8
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BEh
		db    8
		db 0C1h
		db    8
		db 0F9h
		db 0C0h
		db    4
		db  80h
		db    4
		db 0BEh
		db  0Ch
		db  80h
		db    4
		db 0BCh
		db  14h
		db  80h
		db  14h
		db 0F9h
		db 0C0h
		db    4
		db  80h
		db    4
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0C3h
		db  0Ch
		db  80h
		db  14h
		db 0C1h
		db    8
		db 0E7h
		db    8
		db 0C1h
		db    4
		db  80h
		db    4
		db 0C1h
		db    8
		db 0BEh
		db    8
		db 0C1h
		db  0Ch
		db  80h
		db  14h
		db 0C1h
		db    8
		db 0C1h
		db    8
		db 0C1h
		db    8
		db 0C3h
		db  0Ch
		db  80h
		db    4
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0C1h
		db    8
		db 0E7h
		db    8
		db 0C1h
		db    8
		db 0C1h
		db    8
		db 0BEh
		db    8
		db 0C1h
		db  0Ch
		db  80h
		db  14h
		db 0C1h
		db    8
		db 0C1h
		db    8
		db 0C1h
		db    8
		db 0C3h
		db  0Ch
		db  80h
		db    4
		db 0C1h
		db  14h
		db  80h
		db    4
		db  80h
		db  10h
		db 0BEh
		db  10h
		db 0C0h
		db    8
		db 0C1h
		db  10h
		db 0C3h
		db    8
		db 0E7h
		db  10h
		db 0C1h
		db  10h
		db 0C0h
		db    8
		db 0C1h
		db  10h
		db 0C3h
		db    8
		db 0E7h
		db  30h ; 0
		db  80h
		db  10h
		db 0F9h
		db  80h
		db    8
		db 0C5h
		db    4
		db  80h
		db  0Ch
		db 0C3h
		db    4
		db  80h
		db    4
		db 0C5h
		db    8
		db 0C8h
		db    4
		db  80h
		db    4
		db 0C5h
		db    8
		db 0C3h
		db    4
		db  80h
		db    4
		db 0F9h
		db 0C1h
		db  10h
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db  80h
		db    4
		db 0C1h
		db  10h
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db  80h
		db    4
		db  80h
		db    8
		db 0C5h
		db    4
		db  80h
		db  0Ch
		db 0C3h
		db    4
		db  80h
		db    4
		db 0C1h
		db    8
		db 0C1h
		db    4
		db  80h
		db    4
		db 0C3h
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db 0C1h
		db  10h
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db  80h
		db    4
		db 0C1h
		db  10h
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db  80h
		db    4
		db  80h
		db    8
		db 0C6h
		db  10h
		db 0C6h
		db    4
		db  80h
		db    4
		db 0C5h
		db    4
		db  80h
		db    4
		db 0C3h
		db    4
		db  80h
		db    4
		db 0C1h
		db    8
		db 0C5h
		db    4
		db  80h
		db    4
		db 0C3h
		db  30h ; 0
		db  80h
		db  10h
		db 0F9h
		db 0C1h
		db  10h
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db  80h
		db    4
		db 0C1h
		db  10h
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db  80h
		db    4
		db  80h
		db    8
		db 0C5h
		db    4
		db  80h
		db    4
		db 0C5h
		db    8
		db 0C3h
		db    4
		db  80h
		db    4
		db 0C1h
		db    4
		db  80h
		db    4
		db 0C1h
		db    4
		db 0C1h
		db    4
		db 0C3h
		db    8
		db  80h
		db    8
		db 0C1h
		db  10h
		db 0BEh
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db  80h
		db    4
		db 0C1h
		db  10h
		db  80h
		db    8
		db 0C8h
		db    8
		db 0E7h
		db    8
		db 0C8h
		db    4
		db  80h
		db    4
		db 0C8h
		db    4
		db  80h
		db    4
		db 0CAh
		db    4
		db  80h
		db    4
		db 0C5h
		db    8
		db  80h
		db    8
		db 0C3h
		db    4
		db  80h
		db    4
		db 0C3h
		db    8
		db 0C1h
		db  30h ; 0
		db  80h
		db  10h
		db 0F9h
		db 0C8h
		db  0Ch
		db  80h
		db    4
		db 0C8h
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db 0CFh
		db  0Ch
		db  80h
		db    4
		db 0CFh
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db 0D4h
		db  0Ch
		db  80h
		db    4
		db 0D4h
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db  80h
		db  20h
		db 0DBh
		db  0Ch
		db  80h
		db    4
		db 0DBh
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db  80h
		db  20h
		db 0D4h
		db  0Ch
		db  80h
		db    4
		db 0D4h
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db 0CAh
		db    4
		db 0CAh
		db    4
		db  80h
		db    8
		db 0CAh
		db    8
		db  80h
		db    8
		db 0CAh
		db    4
		db 0CAh
		db    4
		db  80h
		db    8
		db 0CAh
		db    8
		db 0F9h
		db 0D4h
		db    4
		db 0D4h
		db    4
		db  80h
		db    8
		db 0D4h
		db    8
		db  80h
		db    8
		db 0D4h
		db    4
		db 0D4h
		db    4
		db  80h
		db    8
		db 0D4h
		db    8
		db 0F9h
		db 0CDh
		db    8
		db 0CFh
		db    8
		db 0D1h
		db    8
		db 0D2h
		db    8
		db 0D4h
		db    8
		db 0D2h
		db    8
		db 0D1h
		db    8
		db 0CFh
		db    8
		db 0CDh
		db    8
		db 0D1h
		db    8
		db 0D4h
		db    8
		db 0D1h
		db    8
		db 0F9h
		db  80h
		db    8
		db 0EFh
		db    4
		db 0D1h
		db    4
		db  80h
		db  0Ch
		db 0CFh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db 0CDh
		db    4
		db 0CFh
		db    4
		db  80h
		db  0Ch
		db 0F9h
		db  80h
		db    8
		db 0EFh
		db    4
		db 0C6h
		db  0Ch
		db  80h
		db    4
		db 0C6h
		db    6
		db  80h
		db    2
		db 0C5h
		db    6
		db  80h
		db    2
		db 0C3h
		db    6
		db  80h
		db    2
		db 0C1h
		db    6
		db  80h
		db    2
		db 0C5h
		db    6
		db  80h
		db    2
		db 0C3h
		db    6
		db  80h
		db    2
		db 0F9h
		db  80h
		db    8
		db 0F0h
		db  12h
		db    2
		db    3
		db    4
		db 0E6h
		db  0Ch
		db 0F6h
		db    4
		db  5Ah ; Z
		db 0EFh
		db  0Ch
		db 0F8h
		db  20h
		db  5Fh ; _
		db 0F8h
		db  20h
		db  5Fh ; _
		db 0F8h
		db 0C2h
		db  5Fh ; _
		db 0F8h
		db 0C2h
		db  5Fh ; _
		db 0F8h
		db  56h ; V
		db  5Fh ; _
		db 0F8h
		db  8Ch
		db  5Fh ; _
		db 0EFh
		db    5
		db 0C1h
		db    8
		db 0C3h
		db    8
		db 0C5h
		db    8
		db 0C6h
		db    8
		db 0C8h
		db    8
		db 0C6h
		db    8
		db 0C5h
		db    8
		db 0C3h
		db    8
		db 0C1h
		db    8
		db 0C5h
		db    8
		db 0C8h
		db    8
		db 0C5h
		db    8
		db 0EFh
		db    7
		db 0F8h
		db  1Ch
		db  5Ch ; \
		db 0EFh
		db  0Ah
		db 0F8h
		db    3
		db  5Eh ; ^
		db 0F8h
		db    9
		db  5Eh ; ^
		db 0F8h
		db  0Fh
		db  5Eh ; ^
		db 0F8h
		db  15h
		db  5Eh ; ^
		db 0F7h
		db    0
		db    2
		db 0FCh
		db  5Ch ; \
		db 0EFh
		db    6
		db 0F8h
		db  99h
		db  5Eh ; ^
		db 0EFh
		db  0Ah
		db 0F8h
		db  1Bh
		db  5Eh ; ^
		db 0F8h
		db  15h
		db  5Eh ; ^
		db  80h
		db  40h ; @
		db 0EFh
		db  0Ah
		db 0F8h
		db  25h ; %
		db  5Eh ; ^
		db 0F8h
		db  83h
		db  5Ch ; \
		db 0F7h
		db    0
		db    2
		db  1Eh
		db  5Dh ; ]
		db 0EFh
		db  0Ah
		db 0F8h
		db  25h ; %
		db  5Eh ; ^
		db 0F8h
		db  9Ch
		db  5Ch ; \
		db 0EFh
		db    7
		db 0F8h
		db  44h ; D
		db  5Ch ; \
		db  80h
		db  40h ; @
		db 0EFh
		db  0Ah
		db 0F8h
		db  25h ; %
		db  5Eh ; ^
		db 0F8h
		db  83h
		db  5Ch ; \
		db 0EFh
		db  0Ah
		db 0F8h
		db  47h ; G
		db  5Eh ; ^
		db 0F8h
		db  83h
		db  5Ch ; \
		db 0EFh
		db  0Ah
		db 0F8h
		db  69h ; i
		db  5Eh ; ^
		db  80h
		db    8
		db 0EFh
		db    4
		db 0C8h
		db    6
		db  80h
		db    2
		db  80h
		db    8
		db 0C8h
		db    6
		db  80h
		db    2
		db 0C8h
		db    6
		db  80h
		db    2
		db 0CAh
		db    6
		db  80h
		db    2
		db 0C5h
		db    6
		db  80h
		db  0Ah
		db 0C3h
		db    6
		db  80h
		db    2
		db 0C3h
		db    6
		db  80h
		db    2
		db 0C1h
		db    6
		db  80h
		db  3Ah ; :
		db 0EFh
		db    7
		db 0F8h
		db  2Eh ; .
		db  5Ch ; \
		db 0F6h
		db 0FCh
		db  5Ch ; \
		db 0EFh
		db  0Ch
		db 0F8h
		db  3Bh ; ;
		db  5Fh ; _
		db 0F8h
		db  3Bh ; ;
		db  5Fh ; _
		db 0F8h
		db 0DDh
		db  5Fh ; _
		db 0F8h
		db 0DDh
		db  5Fh ; _
		db 0F8h
		db  71h ; q
		db  5Fh ; _
		db 0F8h
		db 0A7h
		db  5Fh ; _
		db 0EFh
		db    9
		db 0F0h
		db    2
		db    2
		db  10h
		db    2
		db 0FBh
		db 0F4h
		db 0F8h
		db  6Ah ; j
		db  5Ch ; \
		db 0FBh
		db  0Ch
		db 0F0h
		db    0
		db    0
		db    0
		db    0
		db 0EFh
		db    7
		db 0F8h
		db  13h
		db  5Ch ; \
		db 0EFh
		db  0Ah
		db 0F8h
		db    6
		db  5Eh ; ^
		db 0F8h
		db  0Ch
		db  5Eh ; ^
		db 0F8h
		db  12h
		db  5Eh ; ^
		db 0F8h
		db  18h
		db  5Eh ; ^
		db 0F7h
		db    0
		db    2
		db 0A9h
		db  5Dh ; ]
		db 0EFh
		db    6
		db 0F8h
		db 0DBh
		db  5Eh ; ^
		db 0EFh
		db  0Ah
		db 0F8h
		db  20h
		db  5Eh ; ^
		db 0F8h
		db  18h
		db  5Eh ; ^
		db  80h
		db  40h ; @
		db 0EFh
		db  0Ah
		db 0F8h
		db  36h ; 6
		db  5Eh ; ^
		db  80h
		db  40h ; @
		db 0F7h
		db    0
		db    2
		db 0CBh
		db  5Dh ; ]
		db 0EFh
		db  0Ah
		db 0F8h
		db  36h ; 6
		db  5Eh ; ^
		db  80h
		db  40h ; @
		db    8
		db 0EFh
		db    7
		db 0F8h
		db  57h ; W
		db  5Ch ; \
		db  80h
		db  40h ; @
		db 0EFh
		db  0Ah
		db 0F8h
		db  36h ; 6
		db  5Eh ; ^
		db  80h
		db  40h ; @
		db 0F8h
		db  58h ; X
		db  5Eh ; ^
		db  80h
		db  40h ; @
		db 0F8h
		db  76h ; v
		db  5Eh ; ^
		db  80h
		db  10h
		db  80h
		db  40h ; @
		db  80h
		db  40h ; @
		db 0EFh
		db    7
		db 0F8h
		db  39h ; 9
		db  5Ch ; \
		db 0F6h
		db 0A9h
		db  5Dh ; ]
		db 0BCh
		db  40h ; @
		db 0F9h
		db 0C5h
		db  40h ; @
		db 0F9h
		db 0C1h
		db  40h ; @
		db 0F9h
		db 0C5h
		db  40h ; @
		db 0F9h
		db 0BEh
		db  40h ; @
		db 0F9h
		db 0C1h
		db  40h ; @
		db 0F9h
		db 0C0h
		db  40h ; @
		db 0F9h
		db 0C3h
		db  40h ; @
		db 0F9h
		db 0C1h
		db  40h ; @
		db 0E7h
		db  40h ; @
		db 0F9h
		db 0C5h
		db  40h ; @
		db 0E7h
		db  40h ; @
		db 0F9h
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0C3h
		db    8
		db 0C1h
		db    8
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0C3h
		db    8
		db 0C1h
		db    8
		db 0F9h
		db 0C5h
		db  0Ch
		db  80h
		db    4
		db 0C6h
		db    8
		db 0C5h
		db    8
		db 0C5h
		db  0Ch
		db  80h
		db    4
		db 0C6h
		db    8
		db 0C5h
		db    8
		db 0F9h
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0C3h
		db    8
		db 0C1h
		db    8
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0C3h
		db    8
		db 0C1h
		db    8
		db 0F9h
		db 0C5h
		db  0Ch
		db  80h
		db    4
		db 0C6h
		db    8
		db 0C5h
		db    8
		db 0C5h
		db  0Ch
		db  80h
		db    4
		db 0C6h
		db    8
		db 0C5h
		db    8
		db 0F9h
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0BEh
		db    8
		db 0C0h
		db    8
		db 0C1h
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db 0C6h
		db  0Ch
		db  80h
		db    4
		db 0C3h
		db    8
		db 0C5h
		db    8
		db 0C6h
		db  0Ch
		db  80h
		db    4
		db 0F9h
		db 0C1h
		db  20h
		db 0CAh
		db    8
		db 0CCh
		db    8
		db  80h
		db    8
		db 0CAh
		db    8
		db 0F9h
		db 0C5h
		db  20h
		db 0CDh
		db    8
		db 0CFh
		db    8
		db  80h
		db    8
		db 0CDh
		db    8
		db 0F9h
		db 0CAh
		db    4
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CCh
		db 0CCh
		db 0CCh
		db 0CCh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0D1h
		db 0F9h
		db  80h
		db    2
		db 0C6h
		db    4
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C6h
		db 0C8h
		db 0C8h
		db 0C8h
		db 0C8h
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CAh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db 0CDh
		db    2
		db 0F9h
		db 0C8h
		db    4
		db  80h
		db    4
		db 0C8h
		db    4
		db  80h
		db  0Ch
		db 0C8h
		db    4
		db  80h
		db    8
		db 0C8h
		db    4
		db  80h
		db    4
		db 0C8h
		db    4
		db 0C8h
		db    4
		db  80h
		db    4
		db 0C8h
		db    4
		db  80h
		db    4
		db 0F9h
		db 0D1h
		db    4
		db  80h
		db    4
		db 0D1h
		db    4
		db  80h
		db  0Ch
		db 0D1h
		db    4
		db  80h
		db    8
		db 0D1h
		db    4
		db  80h
		db    4
		db 0D1h
		db    4
		db 0D1h
		db    4
		db  80h
		db    4
		db 0D1h
		db    4
		db  80h
		db    4
		db 0F9h
		db 0CDh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db  80h
		db  0Ch
		db 0CDh
		db    4
		db  80h
		db    8
		db 0CDh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db 0CDh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db  80h
		db    4
		db 0F9h
		db 0D4h
		db    4
		db  80h
		db    4
		db 0D4h
		db    4
		db  80h
		db  0Ch
		db 0D4h
		db    4
		db  80h
		db    8
		db 0D4h
		db    4
		db  80h
		db    4
		db 0D4h
		db    4
		db 0D4h
		db    4
		db  80h
		db    4
		db 0D4h
		db    4
		db  80h
		db    4
		db 0F9h
		db 0CCh
		db    4
		db  80h
		db    4
		db 0CCh
		db    4
		db  80h
		db  0Ch
		db 0CCh
		db    4
		db  80h
		db    8
		db 0CCh
		db    4
		db  80h
		db    4
		db 0CCh
		db    4
		db 0CCh
		db    4
		db  80h
		db    4
		db 0CCh
		db    4
		db  80h
		db    4
		db 0F9h
		db 0CFh
		db    4
		db  80h
		db    4
		db 0CFh
		db    4
		db  80h
		db  0Ch
		db 0CFh
		db    4
		db  80h
		db    8
		db 0CFh
		db    4
		db  80h
		db    4
		db 0CFh
		db    4
		db 0CFh
		db    4
		db  80h
		db    4
		db 0CFh
		db    4
		db  80h
		db    4
		db 0F9h
		db 0CDh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db  80h
		db  0Ch
		db 0CDh
		db    4
		db  80h
		db    8
		db 0CDh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db 0CDh
		db    4
		db  80h
		db    4
		db 0CDh
		db    4
		db  80h
		db    4
		db 0F9h
		db 0D1h
		db    4
		db  80h
		db    4
		db 0D1h
		db    4
		db  80h
		db  0Ch
		db 0D1h
		db    4
		db  80h
		db    8
		db 0D1h
		db    4
		db  80h
		db    4
		db 0D1h
		db    4
		db 0D1h
		db    4
		db  80h
		db    4
		db 0D1h
		db    4
		db  80h
		db    4
		db 0F9h
		db  80h
		db    8
		db 0BCh
		db    4
		db 0BCh
		db    4
		db  80h
		db    8
		db 0BCh
		db    4
		db 0BCh
		db    4
		db  80h
		db    8
		db 0BCh
		db    4
		db 0BCh
		db    4
		db  80h
		db    8
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0F9h
		db  80h
		db    8
		db 0C5h
		db    4
		db 0C5h
		db    4
		db  80h
		db    8
		db 0C5h
		db    4
		db 0C5h
		db    4
		db  80h
		db    8
		db 0C5h
		db    4
		db 0C5h
		db    4
		db  80h
		db    8
		db 0C5h
		db    4
		db 0C5h
		db    4
		db 0F9h
		db 0EFh
		db    3
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0DAh
		db  60h ; `
		db 0F8h
		db 0FBh
		db  60h ; `
		db  80h
		db  40h ; @
		db  80h
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0DAh
		db  60h ; `
		db 0F8h
		db 0FBh
		db  60h ; `
		db 0F7h
		db    0
		db    2
		db  41h ; A
		db  60h ; `
		db 0F8h
		db 0DAh
		db  60h ; `
		db 0F8h
		db 0DAh
		db  60h ; `
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0FBh
		db  60h ; `
		db  80h
		db  40h ; @
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0DAh
		db  60h ; `
		db 0F8h
		db  1Ch
		db  61h ; a
		db 0F8h
		db  3Dh ; =
		db  61h ; a
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db  98h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0B9h
		db  60h ; `
		db 0F8h
		db 0DAh
		db  60h ; `
		db 0F8h
		db 0FBh
		db  60h ; `
		db 0F8h
		db  98h
		db  60h ; `
		db  80h
		db  40h ; @
		db 0F6h
		db  41h ; A
		db  60h ; `
		db 0B5h
		db    4
		db  80h
		db    4
		db 0C1h
		db    4
		db 0C1h
		db    4
		db 0B5h
		db    4
		db  80h
		db    4
		db 0C1h
		db    4
		db 0C1h
		db    4
		db 0B5h
		db    4
		db  80h
		db    4
		db 0C1h
		db    4
		db 0C1h
		db    4
		db 0B5h
		db    4
		db  80h
		db    4
		db 0C1h
		db    4
		db 0C1h
		db    4
		db 0F9h
		db 0B2h
		db    4
		db  80h
		db    4
		db 0BEh
		db    4
		db 0BEh
		db    4
		db 0B2h
		db    4
		db  80h
		db    4
		db 0BEh
		db    4
		db 0BEh
		db    4
		db 0B2h
		db    4
		db  80h
		db    4
		db 0BEh
		db    4
		db 0BEh
		db    4
		db 0B2h
		db    4
		db  80h
		db    4
		db 0BEh
		db    4
		db 0BEh
		db    4
		db 0F9h
		db 0AEh
		db    4
		db  80h
		db    4
		db 0BAh
		db    4
		db 0BAh
		db    4
		db 0AEh
		db    4
		db  80h
		db    4
		db 0BAh
		db    4
		db 0BAh
		db    4
		db 0AEh
		db    4
		db  80h
		db    4
		db 0BAh
		db    4
		db 0BAh
		db    4
		db 0AEh
		db    4
		db  80h
		db    4
		db 0BAh
		db    4
		db 0BAh
		db    4
		db 0F9h
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0F9h
		db 0B7h
		db    4
		db  80h
		db    4
		db 0C3h
		db    4
		db 0C3h
		db    4
		db 0B7h
		db    4
		db  80h
		db    4
		db 0C3h
		db    4
		db 0C3h
		db    4
		db 0B7h
		db    4
		db  80h
		db    4
		db 0C3h
		db    4
		db 0C3h
		db    4
		db 0B7h
		db    4
		db  80h
		db    4
		db 0C3h
		db    4
		db 0C3h
		db    4
		db 0F9h
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0B0h
		db    4
		db  80h
		db    4
		db 0BCh
		db    4
		db 0BCh
		db    4
		db 0B0h
		db  10h
		db  80h
		db  30h ; 0
		db 0F9h
		db  3Bh ; ;
		db  45h ; E
		db  63h ; c
		db  61h ; a
		db  31h ; 1
		db  16h
		db  8Fh
		db  98h
		db  12h
		db    8
		db    2
		db    4
		db  0Ch
		db    8
		db    6
		db    2
		db    6
		db  16h
		db  14h
		db  14h
		db  16h
		db  1Ch
		db  22h ; "
		db  32h ; 2
		db  89h
		db  3Ch ; <
		db  47h ; G
		db  62h ; b
		db  60h ; `
		db  31h ; 1
		db  16h
		db  8Fh
		db  98h
		db  10h
		db    8
		db    4
		db    4
		db    4
		db    4
		db    6
		db    0
		db    4
		db  16h
		db  18h
		db  14h
		db  17h
		db  22h ; "
		db  92h
		db  12h
		db  92h
		db  3Bh ; ;
		db  73h ; s
		db  30h ; 0
		db  10h
		db    1
		db  1Fh
		db  18h
		db  18h
		db  12h
		db    7
		db  1Fh
		db    7
		db  1Fh
		db  0Ah
		db  0Ah
		db    9
		db  0Ah
		db  17h
		db  17h
		db  19h
		db  1Fh
		db  1Eh
		db  1Ah
		db  15h
		db  8Ah
		db 0F8h
		db    1
		db    1
		db    1
		db    1
		db  14h
		db  14h
		db  19h
		db  5Fh ; _
		db  0Eh
		db  0Ch
		db    9
		db  10h
		db    0
		db    0
		db    0
		db    4
		db  5Dh ; ]
		db  5Bh ; [
		db  4Bh ; K
		db  0Ch
		db  28h ; (
		db  18h
		db  13h
		db  94h
		db  24h ; $
		db  31h ; 1
		db  31h ; 1
		db  65h ; e
		db  61h ; a
		db  1Fh
		db  18h
		db  1Fh
		db  1Fh
		db  13h
		db  11h
		db  0Eh
		db  11h
		db  0Eh
		db    8
		db  0Ch
		db    8
		db    4
		db  16h
		db    4
		db  16h
		db  16h
		db  90h
		db  12h
		db  90h
		db  24h ; $
		db  33h ; 3
		db  31h ; 1
		db  63h ; c
		db  61h ; a
		db  1Fh
		db  18h
		db  1Fh
		db  1Ch
		db  13h
		db  0Ch
		db  0Eh
		db  0Ch
		db  0Eh
		db    4
		db  0Ch
		db    6
		db    4
		db  18h
		db    4
		db  18h
		db  14h
		db  9Ch
		db  18h
		db  9Ch
		db  24h ; $
		db  31h ; 1
		db  31h ; 1
		db  63h ; c
		db  61h ; a
		db  1Fh
		db  18h
		db  1Fh
		db  1Ch
		db  13h
		db  0Ch
		db  0Eh
		db  0Ch
		db  0Eh
		db    4
		db  0Ch
		db    6
		db    4
		db  18h
		db    4
		db  18h
		db  14h
		db  9Ah
		db  1Ch
		db  9Ah
		db  3Ah ; :
		db  61h ; a
		db    1
		db    2
		db  31h ; 1
		db  1Ch
		db  16h
		db  14h
		db  18h
		db    8
		db    8
		db    8
		db    4
		db  14h
		db  0Eh
		db  0Eh
		db    6
		db  37h ; 7
		db  37h ; 7
		db  37h ; 7
		db  5Ch ; \
		db  14h
		db  38h ; 8
		db  38h ; 8
		db  88h
		db  3Ah ; :
		db  61h ; a
		db    1
		db    2
		db  31h ; 1
		db  11h
		db  18h
		db  18h
		db  12h
		db    8
		db    8
		db    8
		db    4
		db  0Ch
		db  0Eh
		db  0Eh
		db    6
		db  37h ; 7
		db  37h ; 7
		db  37h ; 7
		db  5Ch ; \
		db  20h
		db  38h ; 8
		db  38h ; 8
		db  8Ch
		db  3Ah ; :
		db  61h ; a
		db    1
		db    1
		db  31h ; 1
		db  11h
		db  18h
		db  18h
		db  1Ch
		db    8
		db    8
		db    8
		db    6
		db  0Ch
		db  0Eh
		db  0Eh
		db  0Eh
		db  3Fh ; ?
		db  3Fh ; ?
		db  3Fh ; ?
		db  5Fh ; _
		db  22h ; "
		db  38h ; 8
		db  2Ah ; *
		db  8Ah
		db  3Ah ; :
		db  61h ; a
		db    1
		db    1
		db  31h ; 1
		db  11h
		db  18h
		db  18h
		db  12h
		db    8
		db    8
		db    8
		db    6
		db  0Ch
		db  0Eh
		db  0Eh
		db  0Eh
		db  3Fh ; ?
		db  3Fh ; ?
		db  3Fh ; ?
		db  5Fh ; _
		db  22h ; "
		db  38h ; 8
		db  2Ah ; *
		db  90h
		db  3Bh ; ;
		db  20h
		db  74h ; t
		db  32h ; 2
		db  71h ; q
		db  16h
		db  11h
		db  8Ch
		db  4Fh ; O
		db  0Dh
		db  10h
		db    4
		db    4
		db    9
		db    2
		db    4
		db    9
		db  1Ch
		db  1Fh
		db  1Fh
		db  1Fh
		db    8
		db  38h ; 8
		db  22h ; "
		db  8Eh
		db  24h ; $
		db  33h ; 3
		db  31h ; 1
		db  63h ; c
		db  61h ; a
		db  1Fh
		db  18h
		db  1Fh
		db  1Ch
		db  13h
		db  0Ch
		db  0Eh
		db  0Ch
		db  0Eh
		db    4
		db  0Ch
		db    6
		db    4
		db  18h
		db    4
		db  18h
		db  1Ch
		db  9Ah
		db  38h ; 8
		db  9Ah
		db  24h ; $
		db  67h ; g
		db    6
		db    0
		db    2
		db    2
		db    0
		db  66h ; f
		db    0
		db    0
		db 0C5h
		db  62h ; b
		db 0E8h
		db  15h
		db  8Dh
		db  64h ; d
		db 0E8h
		db  0Eh
		db 0D6h
		db  62h ; b
		db 0E8h
		db  15h
		db 0EAh
		db  62h ; b
		db 0E8h
		db  17h
		db 0B8h
		db  63h ; c
		db 0E8h
		db  17h
		db 0EFh
		db    0
		db  80h
		db  0Ch
		db  80h
		db  18h
		db 0C6h
		db    6
		db 0C8h
		db 0C9h
		db 0CDh
		db 0F8h
		db  13h
		db  66h ; f
		db 0F6h
		db 0D0h
		db  62h ; b
		db 0EFh
		db    0
		db 0E1h
		db    2
		db  80h
		db  0Ch
		db  80h
		db  18h
		db 0C6h
		db    6
		db 0C8h
		db 0C9h
		db 0CDh
		db 0F8h
		db  13h
		db  66h ; f
		db 0F6h
		db 0E3h
		db  62h ; b
		db 0F2h
		db 0EFh
		db    3
		db 0E6h
		db 0F7h
		db  80h
		db    6
		db 0C1h
		db    3
		db 0C1h
		db 0C1h
		db    6
		db  80h
		db 0B5h
		db  1Eh
		db 0EFh
		db    2
		db 0E6h
		db    9
		db 0D4h
		db    6
		db 0E7h
		db    3
		db  80h
		db 0D4h
		db  80h
		db 0D5h
		db    6
		db  80h
		db 0D4h
		db  0Ch
		db  80h
		db    6
		db 0D4h
		db 0E7h
		db    3
		db  80h
		db 0D4h
		db  80h
		db 0D5h
		db    6
		db  80h
		db 0D4h
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0D5h
		db    3
		db  80h
		db  0Fh
		db 0D5h
		db    3
		db  80h
		db  0Fh
		db  80h
		db  0Ch
		db 0D5h
		db    3
		db  80h
		db  0Fh
		db 0D5h
		db    3
		db  80h
		db    9
		db 0D2h
		db    6
		db 0E7h
		db    3
		db  80h
		db 0D2h
		db  80h
		db 0D4h
		db    6
		db  80h
		db 0D2h
		db  0Ch
		db  80h
		db    6
		db 0D2h
		db 0E7h
		db    3
		db  80h
		db    3
		db 0D2h
		db  80h
		db 0D4h
		db    6
		db  80h
		db 0D2h
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0D0h
		db    3
		db  80h
		db  0Fh
		db 0D0h
		db    3
		db  80h
		db  0Fh
		db  80h
		db  2Ah ; *
		db 0D4h
		db    6
		db 0E7h
		db    3
		db  80h
		db 0D4h
		db  80h
		db 0D5h
		db    6
		db  80h
		db 0D4h
		db  0Ch
		db  80h
		db    6
		db 0D4h
		db 0E7h
		db    3
		db  80h
		db 0D4h
		db  80h
		db 0D5h
		db    6
		db  80h
		db 0D4h
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0D5h
		db    3
		db  80h
		db  0Fh
		db 0D5h
		db    3
		db  80h
		db  0Fh
		db  80h
		db  0Ch
		db 0D5h
		db    3
		db  80h
		db  0Fh
		db 0D5h
		db    3
		db  80h
		db    9
		db 0CEh
		db    6
		db 0E7h
		db    3
		db  80h
		db 0CEh
		db  80h
		db 0D2h
		db    6
		db  80h
		db 0CEh
		db  0Ch
		db  80h
		db    6
		db 0D1h
		db 0E7h
		db    3
		db  80h
		db 0D1h
		db  80h
		db 0D4h
		db    6
		db  80h
		db 0D1h
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0D5h
		db    3
		db  80h
		db  0Fh
		db 0D5h
		db    3
		db  80h
		db    9
		db 0D9h
		db    6
		db 0E7h
		db    3
		db  80h
		db 0D9h
		db  80h
		db 0D7h
		db    6
		db  80h
		db 0D5h
		db    3
		db  80h
		db 0D4h
		db  12h
		db 0F8h
		db 0E7h
		db  66h ; f
		db 0F6h
		db 0FEh
		db  62h ; b
		db 0EFh
		db    4
		db 0E6h
		db 0FCh
		db 0FBh
		db  24h ; $
		db  80h
		db    6
		db 0B5h
		db    3
		db 0B5h
		db 0B5h
		db    6
		db  80h
		db 0A9h
		db  1Eh
		db 0FBh
		db 0DCh
		db 0E6h
		db    4
		db 0EFh
		db    2
		db 0D0h
		db    6
		db 0E7h
		db    3
		db  80h
		db 0D0h
		db  80h
		db 0D2h
		db    6
		db  80h
		db 0D0h
		db  0Ch
		db  80h
		db    6
		db 0D0h
		db 0E7h
		db    3
		db  80h
		db 0D0h
		db  80h
		db 0D2h
		db    6
		db  80h
		db 0D0h
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0D2h
		db    3
		db  80h
		db  0Fh
		db 0D2h
		db    3
		db  80h
		db  0Fh
		db  80h
		db  0Ch
		db 0D2h
		db    3
		db  80h
		db  0Fh
		db 0D2h
		db    3
		db  80h
		db    9
		db 0CEh
		db    6
		db 0E7h
		db    3
		db  80h
		db 0CEh
		db  80h
		db 0D0h
		db    6
		db  80h
		db 0CEh
		db  0Ch
		db  80h
		db    6
		db 0CEh
		db 0E7h
		db    3
		db  80h
		db 0CEh
		db  80h
		db 0D0h
		db    6
		db  80h
		db 0CEh
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0CDh
		db    3
		db  80h
		db  0Fh
		db 0CDh
		db    3
		db  80h
		db  0Fh
		db  80h
		db  2Ah ; *
		db 0D0h
		db    6
		db 0E7h
		db    3
		db  80h
		db 0D0h
		db  80h
		db 0D2h
		db    6
		db  80h
		db 0D0h
		db  0Ch
		db  80h
		db    6
		db 0D0h
		db 0E7h
		db    3
		db  80h
		db 0D0h
		db  80h
		db 0D2h
		db    6
		db  80h
		db 0D0h
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0D2h
		db    3
		db  80h
		db  0Fh
		db 0D2h
		db    3
		db  80h
		db  0Fh
		db  80h
		db  0Ch
		db 0D2h
		db    3
		db  80h
		db  0Fh
		db 0D2h
		db    3
		db  80h
		db    9
		db 0CBh
		db    6
		db 0E7h
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0CEh
		db    6
		db  80h
		db 0CBh
		db  0Ch
		db  80h
		db    6
		db 0CDh
		db 0E7h
		db    3
		db  80h
		db 0CDh
		db  80h
		db 0D1h
		db    6
		db  80h
		db 0CDh
		db  0Ch
		db  80h
		db  80h
		db  0Ch
		db 0D2h
		db    3
		db  80h
		db  0Fh
		db 0D2h
		db    3
		db  80h
		db    9
		db 0D5h
		db    6
		db 0E7h
		db    3
		db  80h
		db 0D5h
		db  80h
		db 0D4h
		db    6
		db  80h
		db 0D2h
		db    3
		db  80h
		db 0D1h
		db  12h
		db 0E1h
		db    3
		db 0F8h
		db 0E7h
		db  66h ; f
		db 0E1h
		db    0
		db 0F6h
		db 0D0h
		db  63h ; c
		db 0EFh
		db    1
		db  80h
		db    6
		db 0B5h
		db    3
		db 0B5h
		db 0E2h
		db    1
		db 0B5h
		db    6
		db  80h
		db 0A9h
		db  24h ; $
		db 0AEh
		db    3
		db  80h
		db 0AEh
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0AEh
		db    3
		db  80h
		db 0AEh
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0B6h
		db    3
		db  80h
		db 0B6h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0B6h
		db    3
		db  80h
		db 0B6h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0ACh
		db    3
		db  80h
		db 0ACh
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B0h
		db    3
		db  80h
		db 0B0h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0ACh
		db    3
		db  80h
		db 0ACh
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B0h
		db    3
		db  80h
		db 0B0h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B1h
		db    3
		db  80h
		db 0B1h
		db    6
		db 0B8h
		db    3
		db  80h
		db 0B8h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B8h
		db    3
		db  80h
		db 0B8h
		db    6
		db 0B0h
		db    3
		db  80h
		db 0B0h
		db    6
		db 0B6h
		db    3
		db  80h
		db 0B6h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B0h
		db    3
		db  80h
		db 0B0h
		db    6
		db 0AEh
		db    3
		db  80h
		db 0AEh
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0AEh
		db    3
		db  80h
		db 0AEh
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0B6h
		db    3
		db  80h
		db 0B6h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0B6h
		db    3
		db  80h
		db 0B6h
		db    6
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db    6
		db 0B0h
		db    3
		db  80h
		db 0B0h
		db    6
		db 0B6h
		db    3
		db  80h
		db 0B6h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B6h
		db    3
		db  80h
		db 0B6h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0BCh
		db    3
		db  80h
		db 0BCh
		db    6
		db 0B9h
		db    3
		db  80h
		db 0B9h
		db    6
		db 0BCh
		db    3
		db  80h
		db 0BCh
		db    6
		db 0AEh
		db    3
		db  80h
		db 0AEh
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B1h
		db    3
		db  80h
		db 0B1h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0AEh
		db    3
		db  80h
		db 0AEh
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0B3h
		db    3
		db  80h
		db 0B3h
		db    6
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db    6
		db 0AEh
		db  12h
		db 0AEh
		db    6
		db 0ACh
		db  12h
		db 0ACh
		db    6
		db 0AAh
		db  12h
		db 0AAh
		db    6
		db 0ACh
		db  12h
		db 0ACh
		db    6
		db 0AEh
		db  12h
		db 0AEh
		db    6
		db 0ACh
		db  12h
		db 0ACh
		db    6
		db 0AAh
		db  12h
		db 0AAh
		db    6
		db 0ACh
		db  12h
		db 0ACh
		db    6
		db 0E2h
		db    1
		db 0F6h
		db  9Bh
		db  64h ; d
		db  80h
		db    6
		db  82h
		db    3
		db  82h
		db    3
		db  82h
		db  0Ch
		db  81h
		db  81h
		db  81h
		db  81h
		db  0Ch
		db  81h
		db  81h
		db  81h
		db 0F6h
		db  0Bh
		db  66h ; f
		db 0D4h
		db    9
		db  80h
		db    3
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db    9
		db  80h
		db    3
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db    9
		db  80h
		db    3
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0CDh
		db    6
		db 0C9h
		db    6
		db 0D0h
		db  0Ch
		db 0D2h
		db    6
		db 0E7h
		db 0CEh
		db    6
		db 0E7h
		db  18h
		db 0E7h
		db  2Fh ; /
		db  80h
		db    1
		db 0D2h
		db    9
		db  80h
		db    3
		db 0D2h
		db    6
		db 0D0h
		db    6
		db 0D2h
		db    9
		db  80h
		db    3
		db 0D2h
		db    6
		db 0D0h
		db    6
		db 0D2h
		db    9
		db  80h
		db    3
		db 0D2h
		db    6
		db 0D0h
		db    6
		db 0D2h
		db  0Ch
		db 0D4h
		db  0Ch
		db 0CEh
		db  12h
		db 0CDh
		db    6
		db 0E7h
		db  18h
		db 0E7h
		db  17h
		db  80h
		db    1
		db 0C6h
		db    6
		db 0C8h
		db    6
		db 0C9h
		db    6
		db 0CDh
		db    6
		db 0D4h
		db    9
		db  80h
		db    3
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db    9
		db  80h
		db    3
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db    9
		db  80h
		db    3
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db    6
		db 0D2h
		db    6
		db 0CDh
		db    6
		db 0C9h
		db    6
		db 0D0h
		db  0Ch
		db 0D2h
		db    6
		db 0E7h
		db 0CEh
		db    6
		db 0E7h
		db  18h
		db 0E7h
		db  2Fh ; /
		db  80h
		db    1
		db 0D2h
		db  24h ; $
		db 0D4h
		db  0Ch
		db 0D1h
		db  24h ; $
		db 0D4h
		db    9
		db  80h
		db    3
		db 0D4h
		db  12h
		db 0D2h
		db    6
		db 0E7h
		db  18h
		db 0E7h
		db  2Fh ; /
		db  80h
		db    1
		db 0D2h
		db    6
		db 0D5h
		db    3
		db 0D2h
		db 0D5h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db 0D0h
		db 0CBh
		db 0D4h
		db 0CEh
		db    6
		db 0D2h
		db    3
		db 0CEh
		db    3
		db 0D2h
		db    6
		db 0CEh
		db    6
		db 0D0h
		db 0D2h
		db 0D4h
		db 0D0h
		db 0D2h
		db    6
		db 0D5h
		db    3
		db 0D2h
		db    3
		db 0D5h
		db    6
		db 0D2h
		db    6
		db 0D4h
		db 0D0h
		db 0CBh
		db 0D4h
		db 0CEh
		db    6
		db 0D2h
		db    3
		db 0CEh
		db    3
		db 0D2h
		db    6
		db 0CEh
		db    6
		db 0D0h
		db 0D2h
		db 0D4h
		db 0D0h
		db 0F9h
		db 0E8h
		db    6
		db  80h
		db    6
		db 0D9h
		db    6
		db 0D5h
		db    6
		db 0D2h
		db  0Ch
		db 0D7h
		db    6
		db 0D4h
		db    6
		db 0D0h
		db    6
		db  80h
		db    6
		db 0D5h
		db    6
		db 0D2h
		db    6
		db 0CEh
		db  0Ch
		db 0D7h
		db    6
		db 0D4h
		db    6
		db 0D0h
		db    6
		db  80h
		db    6
		db 0D9h
		db    6
		db 0D5h
		db    6
		db 0D2h
		db  0Ch
		db 0D7h
		db    6
		db 0D4h
		db    6
		db 0D0h
		db    6
		db  80h
		db    6
		db 0D5h
		db    6
		db 0D2h
		db    6
		db 0CEh
		db  0Ch
		db 0D7h
		db    6
		db 0D4h
		db    6
		db 0D4h
		db    6
		db 0E8h
		db    0
		db 0F9h
		db  22h ; "
		db  0Ah
		db  13h
		db    5
		db  11h
		db    3
		db  12h
		db  12h
		db  11h
		db    0
		db  13h
		db  13h
		db    0
		db    3
		db    2
		db    2
		db    1
		db  1Fh
		db  1Fh
		db  0Fh
		db  0Fh
		db  1Eh
		db  18h
		db  26h ; &
		db  81h
		db  3Ah ; :
		db  61h ; a
		db  3Ch ; <
		db  14h
		db  31h ; 1
		db  9Ch
		db 0DBh
		db  9Ch
		db 0DAh
		db    4
		db    9
		db    4
		db    3
		db    3
		db    1
		db    3
		db    0
		db  1Fh
		db  0Fh
		db  0Fh
		db 0AFh
		db  21h ; !
		db  47h ; G
		db  31h ; 1
		db  80h
		db  3Ah ; :
		db    1
		db    7
		db    1
		db    1
		db  8Eh
		db  8Eh
		db  8Dh
		db  53h ; S
		db  0Eh
		db  0Eh
		db  0Eh
		db    3
		db    0
		db    0
		db    0
		db    0
		db  1Fh
		db 0FFh
		db  1Fh
		db  0Fh
		db  18h
		db  28h ; (
		db  27h ; '
		db  80h
		db  23h ; #
		db  7Ch ; |
		db  32h ; 2
		db    0
		db    0
		db  5Fh ; _
		db  58h ; X
		db 0DCh
		db 0DFh
		db    4
		db  0Bh
		db    4
		db    4
		db    6
		db  0Ch
		db    8
		db    8
		db  1Fh
		db  1Fh
		db 0BFh
		db 0BFh
		db  24h ; $
		db  26h ; &
		db  16h
		db  80h
		db    2
		db  3Ch ; <
		db  32h ; 2
		db  55h ; U
		db  51h ; Q
		db  1Fh
		db  98h
		db  1Fh
		db  9Fh
		db  0Fh
		db  11h
		db  0Eh
		db  11h
		db  0Eh
		db    5
		db    8
		db    5
		db  5Fh ; _
		db  0Fh
		db  6Fh ; o
		db  0Fh
		db  2Dh ; -
		db  2Dh ; -
		db  2Fh ; /
		db  80h
		db 0A8h
		db  6Dh ; m
		db    6
		db    0
		db    2
		db    2
		db  9Eh
		db  6Dh ; m
		db    0
		db    0
		db 0BFh
		db  67h ; g
		db 0E8h
		db    0
		db  35h ; 5
		db  68h ; h
		db 0E8h
		db    6
		db    1
		db  6Ah ; j
		db 0DCh
		db  1Ah
		db  1Dh
		db  6Bh ; k
		db 0DCh
		db  1Ah
		db  37h ; 7
		db  6Ch ; l
		db 0F4h
		db  20h
		db 0EFh
		db    0
		db  80h
		db  0Ch
		db 0C4h
		db 0C6h
		db 0D0h
		db 0F8h
		db 0E1h
		db  67h ; g
		db 0CDh
		db  1Eh
		db 0D9h
		db    6
		db 0D5h
		db  3Ch ; <
		db  80h
		db  1Eh
		db 0F7h
		db    0
		db    3
		db 0CBh
		db  67h ; g
		db 0D9h
		db    6
		db 0D5h
		db  18h
		db 0C4h
		db  0Ch
		db 0C6h
		db 0D0h
		db 0F6h
		db 0C6h
		db  67h ; g
		db 0CDh
		db  2Ah ; *
		db 0CDh
		db    3
		db 0CEh
		db 0D0h
		db    9
		db 0D2h
		db 0D3h
		db    6
		db 0D2h
		db  0Ch
		db 0D0h
		db 0CEh
		db  1Eh
		db 0CEh
		db    6
		db 0CDh
		db 0CEh
		db  1Eh
		db 0CBh
		db  0Ch
		db 0CDh
		db 0CEh
		db  2Ah ; *
		db 0CBh
		db    3
		db 0CDh
		db 0CEh
		db    9
		db 0D0h
		db 0D1h
		db    6
		db 0D0h
		db  0Ch
		db 0CEh
		db 0CDh
		db  1Eh
		db 0CEh
		db    6
		db 0CDh
		db 0CBh
		db  12h
		db 0C4h
		db  0Ch
		db 0C6h
		db 0D0h
		db 0CDh
		db  2Ah ; *
		db 0CDh
		db    3
		db 0CEh
		db 0D0h
		db    9
		db 0D2h
		db 0D3h
		db    6
		db 0D2h
		db  0Ch
		db 0D0h
		db 0CEh
		db  1Eh
		db 0CEh
		db    6
		db 0CDh
		db 0CEh
		db  1Eh
		db 0CBh
		db  0Ch
		db 0CDh
		db 0CEh
		db  2Ah ; *
		db 0CBh
		db    3
		db 0CDh
		db 0CEh
		db    9
		db 0D0h
		db 0D1h
		db    6
		db 0D0h
		db  0Ch
		db 0CEh
		db 0F9h
		db 0EFh
		db    1
		db  80h
		db  30h ; 0
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db  80h
		db    6
		db 0B1h
		db  12h
		db  80h
		db    6
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B1h
		db    2
		db  80h
		db    1
		db 0AFh
		db    6
		db  80h
		db    3
		db 0AFh
		db    3
		db  80h
		db    6
		db 0AEh
		db  12h
		db  80h
		db    6
		db 0AEh
		db    2
		db  80h
		db    1
		db 0AEh
		db    2
		db  80h
		db    1
		db 0B3h
		db    6
		db  80h
		db    3
		db 0B3h
		db    6
		db  80h
		db    3
		db 0B3h
		db    2
		db  80h
		db    1
		db 0B3h
		db    2
		db  80h
		db    1
		db 0B2h
		db    6
		db  80h
		db    3
		db 0B2h
		db    6
		db  80h
		db    3
		db 0B2h
		db    2
		db  80h
		db    1
		db 0B2h
		db    2
		db  80h
		db    1
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B0h
		db    6
		db  80h
		db    3
		db 0B0h
		db    6
		db  80h
		db    3
		db 0B0h
		db    2
		db  80h
		db    1
		db 0B0h
		db    2
		db  80h
		db    1
		db 0ACh
		db    6
		db  80h
		db    3
		db 0ACh
		db  80h
		db    6
		db 0ACh
		db  12h
		db  80h
		db    6
		db 0ACh
		db    2
		db  80h
		db    1
		db 0ACh
		db    2
		db  80h
		db    1
		db 0B0h
		db    6
		db  80h
		db    3
		db 0B0h
		db  80h
		db    6
		db 0B0h
		db  12h
		db  80h
		db    6
		db 0B0h
		db    2
		db  80h
		db    1
		db 0B0h
		db    2
		db  80h
		db    1
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db  80h
		db    6
		db 0B1h
		db  12h
		db  80h
		db    6
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B3h
		db    6
		db  80h
		db    3
		db 0B3h
		db  80h
		db    6
		db 0ACh
		db  12h
		db 0B3h
		db    6
		db 0ACh
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db  80h
		db    6
		db 0B1h
		db  12h
		db  80h
		db    6
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B1h
		db    2
		db  80h
		db    1
		db 0AFh
		db    6
		db  80h
		db    3
		db 0AFh
		db    3
		db  80h
		db    6
		db 0AEh
		db  12h
		db  80h
		db    6
		db 0AEh
		db    2
		db  80h
		db    1
		db 0AEh
		db    2
		db  80h
		db    1
		db 0B3h
		db    6
		db  80h
		db    3
		db 0B3h
		db    6
		db  80h
		db    3
		db 0B3h
		db    2
		db  80h
		db    1
		db 0B3h
		db    2
		db  80h
		db    1
		db 0B2h
		db    6
		db  80h
		db    3
		db 0B2h
		db    6
		db  80h
		db    3
		db 0B2h
		db    2
		db  80h
		db    1
		db 0B2h
		db    2
		db  80h
		db    1
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B0h
		db    6
		db  80h
		db    3
		db 0B0h
		db    6
		db  80h
		db    3
		db 0B0h
		db    2
		db  80h
		db    1
		db 0B0h
		db    2
		db  80h
		db    1
		db 0ACh
		db    6
		db  80h
		db    3
		db 0ACh
		db  80h
		db    6
		db 0ACh
		db  12h
		db  80h
		db    6
		db 0ACh
		db    2
		db  80h
		db    1
		db 0ACh
		db    2
		db  80h
		db    1
		db 0B0h
		db    6
		db  80h
		db    3
		db 0B0h
		db  80h
		db    6
		db 0B0h
		db  12h
		db  80h
		db    6
		db 0B3h
		db    2
		db  80h
		db    1
		db 0B0h
		db    2
		db  80h
		db    1
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db  80h
		db    6
		db 0B1h
		db  12h
		db  80h
		db    6
		db 0ACh
		db    2
		db  80h
		db    1
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B3h
		db    6
		db  80h
		db    3
		db 0B3h
		db  80h
		db    6
		db 0B3h
		db  12h
		db  80h
		db    6
		db 0AEh
		db    2
		db  80h
		db    1
		db 0B3h
		db    2
		db  80h
		db    1
		db 0B5h
		db    6
		db  80h
		db    3
		db 0B5h
		db  80h
		db    6
		db 0B5h
		db  12h
		db  80h
		db    6
		db 0B0h
		db    2
		db  80h
		db    1
		db 0B5h
		db    2
		db  80h
		db    1
		db 0B6h
		db    6
		db  80h
		db    3
		db 0B6h
		db  80h
		db    6
		db 0B6h
		db  12h
		db  80h
		db    6
		db 0B8h
		db    2
		db  80h
		db    1
		db 0B6h
		db    2
		db  80h
		db    1
		db 0B1h
		db    6
		db  80h
		db    3
		db 0B1h
		db  80h
		db    6
		db 0B1h
		db  12h
		db  80h
		db    6
		db 0ACh
		db    2
		db  80h
		db    1
		db 0B1h
		db    2
		db  80h
		db    1
		db 0B3h
		db    6
		db  80h
		db    3
		db 0B3h
		db  80h
		db    6
		db 0B3h
		db  12h
		db  80h
		db    6
		db 0AEh
		db    2
		db  80h
		db    1
		db 0B3h
		db    2
		db  80h
		db    1
		db 0B5h
		db    6
		db  80h
		db    3
		db 0B5h
		db  80h
		db    6
		db 0B5h
		db  12h
		db  80h
		db    6
		db 0B5h
		db    2
		db  80h
		db    1
		db 0B6h
		db    2
		db  80h
		db    1
		db 0B8h
		db    6
		db  80h
		db 0ACh
		db  24h ; $
		db 0E2h
		db    1
		db 0F6h
		db  39h ; 9
		db  68h ; h
		db 0EFh
		db    2
		db  80h
		db  30h ; 0
		db 0D0h
		db    6
		db  80h
		db    3
		db 0D0h
		db  80h
		db    6
		db 0D0h
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db    6
		db 0CDh
		db  18h
		db  80h
		db    6
		db 0D2h
		db    6
		db  80h
		db    3
		db 0D0h
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db 0D2h
		db    6
		db  80h
		db    3
		db 0D0h
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db 0D2h
		db    6
		db  80h
		db    3
		db 0D0h
		db    6
		db  80h
		db    3
		db 0CEh
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db    6
		db 0CEh
		db  18h
		db  80h
		db    6
		db 0D1h
		db    6
		db  80h
		db    3
		db 0D1h
		db  80h
		db    6
		db 0D1h
		db  18h
		db  80h
		db    6
		db 0D0h
		db    6
		db  80h
		db    3
		db 0D0h
		db  80h
		db    6
		db 0D0h
		db  12h
		db  80h
		db    6
		db 0D4h
		db 0E7h
		db    3
		db  80h
		db    3
		db 0D4h
		db  80h
		db 0D2h
		db    9
		db  80h
		db    3
		db 0D0h
		db    3
		db  80h
		db 0CEh
		db  0Ch
		db  80h
		db    6
		db 0D0h
		db    6
		db  80h
		db    3
		db 0D0h
		db  80h
		db    6
		db 0D0h
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db    6
		db 0CDh
		db  18h
		db  80h
		db    6
		db 0D2h
		db    6
		db  80h
		db    3
		db 0D0h
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db 0D2h
		db    6
		db  80h
		db    3
		db 0D0h
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db 0D2h
		db    6
		db  80h
		db    3
		db 0D0h
		db    6
		db  80h
		db    3
		db 0CEh
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db    6
		db 0CEh
		db  18h
		db  80h
		db    6
		db 0D1h
		db    6
		db  80h
		db    3
		db 0D1h
		db  80h
		db    6
		db 0D1h
		db  18h
		db  80h
		db    6
		db  80h
		db    6
		db 0E8h
		db    8
		db 0D4h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D5h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D7h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D9h
		db    9
		db    9
		db    9
		db 0D7h
		db    9
		db 0D5h
		db    6
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D4h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D5h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D7h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    0
		db  80h
		db  0Ch
		db 0D2h
		db  24h ; $
		db 0F6h
		db    5
		db  6Ah ; j
		db 0EFh
		db    2
		db  80h
		db  30h ; 0
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CDh
		db  80h
		db    6
		db 0CDh
		db  18h
		db  80h
		db    6
		db 0CBh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db    6
		db 0CAh
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CBh
		db  18h
		db  80h
		db    6
		db 0CBh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db    6
		db 0CBh
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db    6
		db 0CEh
		db  18h
		db  80h
		db    6
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CDh
		db  80h
		db    6
		db 0CDh
		db  12h
		db  80h
		db    6
		db 0D0h
		db 0E7h
		db    3
		db  80h
		db 0D0h
		db  80h
		db 0CEh
		db    9
		db  80h
		db    3
		db 0CDh
		db  80h
		db 0CBh
		db  0Ch
		db  80h
		db    6
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CDh
		db  80h
		db    6
		db 0CDh
		db  18h
		db  80h
		db    6
		db 0CBh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db    6
		db 0CAh
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CDh
		db    6
		db  80h
		db    3
		db 0CBh
		db  18h
		db  80h
		db    6
		db 0CBh
		db    6
		db  80h
		db    3
		db 0CBh
		db  80h
		db    6
		db 0CBh
		db  18h
		db  80h
		db    6
		db 0CEh
		db    6
		db  80h
		db    3
		db 0CEh
		db  80h
		db    6
		db 0CEh
		db  18h
		db  80h
		db    6
		db  80h
		db    6
		db 0E8h
		db    8
		db 0D0h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D2h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D4h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D5h
		db    9
		db    9
		db    9
		db 0D4h
		db    9
		db 0D2h
		db    6
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D0h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D2h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    8
		db  80h
		db    6
		db 0D4h
		db    9
		db    9
		db    9
		db    9
		db 0E8h
		db    5
		db    3
		db    3
		db 0E8h
		db    0
		db  80h
		db  0Ch
		db 0CEh
		db  24h ; $
		db 0F6h
		db  21h ; !
		db  6Bh ; k
		db 0EFh
		db    4
		db  80h
		db  0Ch
		db 0C4h
		db 0C6h
		db 0D0h
		db 0EFh
		db    4
		db 0F8h
		db 0E1h
		db  67h ; g
		db 0CDh
		db    6
		db 0EFh
		db    3
		db 0E6h
		db 0ECh
		db 0E1h
		db  14h
		db 0C4h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db    2
		db 0C6h
		db    3
		db 0E8h
		db    5
		db 0C9h
		db    3
		db 0C9h
		db    6
		db 0C6h
		db    3
		db 0C9h
		db    3
		db 0E8h
		db    0
		db 0C9h
		db    3
		db  80h
		db 0E6h
		db 0FCh
		db 0FBh
		db  33h ; 3
		db 0EFh
		db    5
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0EFh
		db    3
		db 0E6h
		db 0E8h
		db 0FBh
		db 0CDh
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0CDh
		db    1
		db 0E7h
		db 0E1h
		db    0
		db    5
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0C9h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db    5
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0C6h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db 0C6h
		db    5
		db 0C9h
		db    6
		db 0C6h
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0C4h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db    2
		db 0C6h
		db    3
		db 0E8h
		db    5
		db 0C9h
		db    3
		db 0C9h
		db    6
		db 0C6h
		db    3
		db 0C9h
		db    3
		db 0E8h
		db    0
		db 0C9h
		db    3
		db  80h
		db 0E6h
		db 0FCh
		db 0FBh
		db  33h ; 3
		db 0EFh
		db    5
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0EFh
		db    3
		db 0E6h
		db 0E8h
		db 0FBh
		db 0CDh
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0CDh
		db    1
		db 0E7h
		db 0E1h
		db    0
		db 0CDh
		db    5
		db 0CEh
		db    6
		db 0CDh
		db 0CEh
		db 0D0h
		db  80h
		db 0C9h
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0C4h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db    2
		db 0C6h
		db    3
		db 0E8h
		db    5
		db 0C9h
		db    3
		db 0C9h
		db    6
		db 0C6h
		db    3
		db 0C9h
		db    3
		db 0E8h
		db    0
		db 0C9h
		db    3
		db  80h
		db 0E6h
		db 0FCh
		db 0FBh
		db  33h ; 3
		db 0EFh
		db    5
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0EFh
		db    3
		db 0E6h
		db 0E8h
		db 0FBh
		db 0CDh
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0CDh
		db    1
		db 0E7h
		db 0E1h
		db    0
		db 0CDh
		db    5
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0C9h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db 0C9h
		db    5
		db  80h
		db    6
		db 0E8h
		db    5
		db 0C6h
		db    3
		db    3
		db 0E8h
		db    0
		db 0C9h
		db    6
		db 0C6h
		db  80h
		db    6
		db 0E1h
		db  14h
		db 0C4h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db    2
		db 0C6h
		db    3
		db 0E8h
		db    5
		db 0C9h
		db    3
		db 0C9h
		db    6
		db 0C6h
		db    3
		db 0C9h
		db    3
		db 0E8h
		db    0
		db 0C9h
		db    3
		db 0E6h
		db 0FCh
		db 0FBh
		db  33h ; 3
		db 0EFh
		db    5
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0B4h
		db    3
		db 0E6h
		db    7
		db 0EFh
		db    3
		db 0E6h
		db 0E8h
		db 0FBh
		db 0CDh
		db 0CDh
		db    3
		db 0CEh
		db    3
		db 0D0h
		db    3
		db  80h
		db    9
		db 0E1h
		db 0ECh
		db 0D5h
		db    1
		db 0E7h
		db 0E1h
		db    0
		db 0F0h
		db  2Ch ; ,
		db    1
		db    4
		db    4
		db 0D5h
		db  23h ; #
		db 0F0h
		db    0
		db    0
		db    0
		db    0
		db 0E6h
		db  14h
		db 0F6h
		db  3Eh ; >
		db  6Ch ; l
		db  80h
		db  30h ; 0
		db  81h
		db  0Ch
		db  81h
		db  81h
		db  81h
		db 0F6h
		db 0A0h
		db  6Dh ; m
		db  34h ; 4
		db  33h ; 3
		db  41h ; A
		db  7Eh ; ~
		db  74h ; t
		db  5Bh ; [
		db  9Fh
		db  5Fh ; _
		db  1Fh
		db    4
		db    7
		db    7
		db    8
		db    0
		db    0
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0EFh
		db 0FFh
		db  23h ; #
		db  90h
		db  29h ; )
		db  97h
		db  3Ah ; :
		db  61h ; a
		db  3Ch ; <
		db  14h
		db  31h ; 1
		db  9Ch
		db 0DBh
		db  9Ch
		db 0DAh
		db    4
		db    9
		db    4
		db    3
		db    3
		db    1
		db    3
		db    0
		db  1Fh
		db  0Fh
		db  0Fh
		db 0AFh
		db  21h ; !
		db  47h ; G
		db  31h ; 1
		db  80h
		db    4
		db  72h ; r
		db  42h ; B
		db  32h ; 2
		db  32h ; 2
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    7
		db    0
		db    7
		db  23h ; #
		db  80h
		db  23h ; #
		db  80h
		db  3Ah ; :
		db    1
		db    7
		db    1
		db    1
		db  8Eh
		db  8Eh
		db  8Dh
		db  53h ; S
		db  0Eh
		db  0Eh
		db  0Eh
		db    3
		db    0
		db    0
		db    0
		db    0
		db  1Fh
		db 0FFh
		db  1Fh
		db  0Fh
		db  18h
		db  28h ; (
		db  27h ; '
		db  80h
		db  3Ch ; <
		db  38h ; 8
		db  74h ; t
		db  76h ; v
		db  33h ; 3
		db  10h
		db  10h
		db  10h
		db  10h
		db    2
		db    7
		db    4
		db    7
		db    3
		db    9
		db    3
		db    9
		db  2Fh ; /
		db  2Fh ; /
		db  2Fh ; /
		db  2Fh ; /
		db  1Eh
		db  80h
		db  1Eh
		db  80h
		db 0F4h
		db    6
		db    4
		db  0Fh
		db  0Eh
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db    0
		db  0Bh
		db  0Bh
		db    0
		db    0
		db    5
		db    8
		db  0Fh
		db  0Fh
		db 0FFh
		db 0FFh
		db  15h
		db  85h
		db    2
		db  8Ah
		db    7
		db  74h ; t
		db    6
		db    0
		db    4
		db  0Ah
		db  87h
		db  73h ; s
		db    0
		db    0
		db  5Ch ; \
		db  6Eh ; n
		db 0F4h
		db  11h
		db  65h ; e
		db  6Fh ; o
		db 0E8h
		db  0Bh
		db  94h
		db  70h ; p
		db 0F4h
		db  14h
		db  77h ; w
		db  71h ; q
		db 0F4h
		db  18h
		db  81h
		db  72h ; r
		db 0F4h
		db  18h
		db 0EFh
		db    0
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E7h
		db  0Ah
		db 0CDh
		db    2
		db 0F0h
		db    8
		db    1
		db    6
		db    4
		db  80h
		db    4
		db 0CDh
		db    8
		db 0C9h
		db    2
		db  80h
		db    4
		db 0C6h
		db    2
		db  80h
		db    4
		db 0CDh
		db  0Ah
		db 0C9h
		db    2
		db  80h
		db  0Ch
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E7h
		db  0Ah
		db 0CFh
		db    2
		db  80h
		db    4
		db 0CFh
		db    8
		db 0CBh
		db    2
		db  80h
		db    4
		db 0C8h
		db    2
		db  80h
		db    4
		db 0CFh
		db  0Ch
		db 0CBh
		db  0Ah
		db 0CEh
		db  1Ah
		db 0E7h
		db  12h
		db  80h
		db    4
		db 0CDh
		db    2
		db  80h
		db    4
		db 0CDh
		db    8
		db 0C9h
		db    2
		db  80h
		db    4
		db 0C6h
		db    2
		db  80h
		db    4
		db 0CDh
		db  0Ah
		db 0C9h
		db    2
		db  80h
		db  0Ch
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E7h
		db  0Ah
		db 0CFh
		db    2
		db  80h
		db    4
		db 0CFh
		db    8
		db 0CBh
		db    2
		db  80h
		db    4
		db 0C8h
		db    2
		db  80h
		db    4
		db 0CFh
		db  0Ch
		db 0CBh
		db 0CEh
		db    2
		db  80h
		db    4
		db 0CEh
		db    2
		db  80h
		db    4
		db 0D0h
		db    4
		db 0CEh
		db    2
		db 0D0h
		db    4
		db  80h
		db    2
		db 0D2h
		db    6
		db  80h
		db  12h
		db 0EFh
		db    4
		db 0F0h
		db    0
		db    0
		db    0
		db    0
		db 0E6h
		db    8
		db  80h
		db    4
		db 0CEh
		db    8
		db 0CDh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db    4
		db 0C6h
		db  80h
		db    2
		db 0C7h
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C9h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db    4
		db 0C7h
		db  80h
		db    2
		db 0C9h
		db  0Eh
		db  80h
		db    4
		db 0CEh
		db    8
		db 0CDh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db    4
		db 0C6h
		db    8
		db 0C9h
		db  0Ch
		db 0D0h
		db  0Ah
		db 0D2h
		db    2
		db  80h
		db    4
		db 0D2h
		db    2
		db 0D0h
		db    3
		db  80h
		db 0CEh
		db  0Ch
		db  80h
		db    4
		db 0CEh
		db    8
		db 0CDh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db    4
		db 0C6h
		db  80h
		db    2
		db 0C7h
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C9h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db    4
		db 0C7h
		db  80h
		db    2
		db 0C9h
		db  0Eh
		db  80h
		db    6
		db 0CDh
		db    2
		db  80h
		db    4
		db 0CDh
		db  0Ch
		db 0CEh
		db 0CDh
		db  0Ah
		db 0CBh
		db    2
		db  80h
		db  18h
		db 0E7h
		db  12h
		db 0E6h
		db 0F8h
		db 0EFh
		db    0
		db  80h
		db    4
		db 0CDh
		db    2
		db 0F6h
		db  66h ; f
		db  6Eh ; n
		db 0EFh
		db    1
		db 0E6h
		db 0FEh
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db  80h
		db 0B8h
		db  80h
		db 0B8h
		db  80h
		db 0B6h
		db  80h
		db 0B6h
		db  80h
		db 0B5h
		db  80h
		db 0B5h
		db    2
		db  80h
		db 0B3h
		db 0E6h
		db    2
		db  80h
		db    4
		db 0B3h
		db    8
		db 0B5h
		db    3
		db  80h
		db 0B3h
		db  80h
		db 0B5h
		db  80h
		db 0B3h
		db  80h
		db 0B6h
		db    4
		db 0BAh
		db  80h
		db    2
		db 0BAh
		db  80h
		db    4
		db 0C1h
		db    8
		db 0BDh
		db    3
		db  80h
		db 0BDh
		db  80h
		db 0BAh
		db  80h
		db 0BAh
		db  80h
		db 0B6h
		db  0Ah
		db 0B5h
		db    2
		db  80h
		db    4
		db 0B5h
		db    8
		db 0B7h
		db    3
		db  80h
		db 0B5h
		db  80h
		db 0B7h
		db  80h
		db 0B5h
		db  80h
		db 0B8h
		db    4
		db 0BBh
		db  80h
		db    2
		db 0BAh
		db  80h
		db    4
		db 0BAh
		db    8
		db 0B8h
		db    3
		db  80h
		db 0B8h
		db  80h
		db 0B6h
		db  80h
		db 0B6h
		db  80h
		db 0B5h
		db  0Ah
		db 0B3h
		db    2
		db  80h
		db    4
		db 0B3h
		db    8
		db 0B5h
		db    3
		db  80h
		db 0B3h
		db  80h
		db 0B5h
		db  80h
		db 0B3h
		db  80h
		db 0B6h
		db    4
		db 0BAh
		db  80h
		db    2
		db 0BAh
		db  80h
		db    4
		db 0C1h
		db    8
		db 0BDh
		db    3
		db  80h
		db 0BDh
		db  80h
		db 0BAh
		db  80h
		db 0BAh
		db  80h
		db 0B6h
		db  0Ah
		db 0B5h
		db    2
		db  80h
		db    4
		db 0B5h
		db    8
		db 0B7h
		db    3
		db  80h
		db 0B5h
		db  80h
		db 0B7h
		db  80h
		db 0B5h
		db  80h
		db 0B8h
		db    4
		db 0BBh
		db    8
		db 0BAh
		db    3
		db  80h
		db 0BAh
		db  80h
		db 0BAh
		db  80h
		db 0BAh
		db  80h
		db 0BAh
		db  80h
		db  13h
		db 0BBh
		db    2
		db  80h
		db    4
		db 0BBh
		db    8
		db 0BDh
		db    3
		db  80h
		db 0BBh
		db  80h
		db 0BAh
		db    6
		db  80h
		db 0BBh
		db    4
		db 0BAh
		db  80h
		db    2
		db 0B8h
		db  80h
		db    4
		db 0B8h
		db    8
		db 0BAh
		db    3
		db  80h
		db 0B8h
		db  80h
		db 0B6h
		db  80h
		db 0B6h
		db  80h
		db 0B8h
		db    4
		db 0BAh
		db  80h
		db    2
		db 0BBh
		db  80h
		db    4
		db 0BBh
		db    8
		db 0BDh
		db    3
		db  80h
		db 0BBh
		db  80h
		db 0BAh
		db    6
		db  80h
		db 0BBh
		db    4
		db 0BAh
		db  80h
		db    2
		db 0B8h
		db  80h
		db    4
		db 0B8h
		db    8
		db 0BAh
		db    3
		db  80h
		db 0B8h
		db  80h
		db 0B6h
		db  80h
		db 0B6h
		db  80h
		db 0B8h
		db    4
		db 0BAh
		db  80h
		db    2
		db 0BBh
		db  80h
		db    4
		db 0BBh
		db    8
		db 0BDh
		db    3
		db  80h
		db 0BBh
		db  80h
		db 0BAh
		db    6
		db  80h
		db 0BBh
		db    4
		db 0BAh
		db  80h
		db    2
		db 0B8h
		db  80h
		db    4
		db 0B8h
		db    8
		db 0BAh
		db    3
		db  80h
		db 0B8h
		db  80h
		db 0B6h
		db  80h
		db 0B6h
		db  80h
		db 0B8h
		db    4
		db 0B6h
		db  80h
		db    2
		db 0B5h
		db  80h
		db    4
		db 0B5h
		db    8
		db 0B5h
		db    3
		db  80h
		db 0B5h
		db  80h
		db 0BAh
		db    9
		db  80h
		db    3
		db 0BAh
		db  0Ah
		db 0B3h
		db    2
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E7h
		db  0Ah
		db 0B3h
		db    2
		db 0F6h
		db  7Eh ; ~
		db  6Fh ; o
		db  80h
		db  18h
		db  80h
		db  18h
		db 0EFh
		db    5
		db  80h
		db  18h
		db  80h
		db  18h
		db  80h
		db    6
		db 0C6h
		db    4
		db 0C9h
		db    2
		db 0CBh
		db    4
		db 0CEh
		db    2
		db  80h
		db    6
		db 0C6h
		db    4
		db 0C9h
		db    2
		db 0CBh
		db    4
		db 0CEh
		db    2
		db  80h
		db  0Ch
		db  80h
		db  18h
		db  80h
		db  18h
		db  80h
		db    6
		db 0D2h
		db    2
		db  80h
		db  0Ah
		db 0D0h
		db    2
		db  80h
		db  0Ah
		db 0CEh
		db    2
		db  80h
		db    4
		db 0CDh
		db    2
		db  80h
		db 0CEh
		db 0CDh
		db  80h
		db    4
		db  80h
		db  18h
		db  80h
		db  18h
		db  80h
		db    6
		db 0C6h
		db    4
		db 0C9h
		db    2
		db 0CBh
		db    4
		db 0CEh
		db    2
		db  80h
		db    6
		db 0C6h
		db    4
		db 0C9h
		db    2
		db 0CBh
		db    4
		db 0CEh
		db    2
		db  80h
		db  0Ch
		db  80h
		db  18h
		db  80h
		db  18h
		db 0C6h
		db    2
		db  80h
		db 0C6h
		db 0CAh
		db  80h
		db 0CAh
		db 0CDh
		db  80h
		db 0CDh
		db 0D0h
		db  80h
		db 0D0h
		db 0D2h
		db  80h
		db  10h
		db  80h
		db    4
		db 0C2h
		db    2
		db  80h
		db    4
		db 0C2h
		db    8
		db 0C2h
		db    3
		db  80h
		db 0C2h
		db  80h
		db 0C1h
		db    3
		db  80h
		db  13h
		db 0BFh
		db    2
		db  80h
		db    4
		db 0BFh
		db    8
		db 0BFh
		db    3
		db  80h
		db 0BFh
		db  80h
		db 0BDh
		db    3
		db  80h
		db  13h
		db 0C2h
		db    2
		db  80h
		db    4
		db 0C2h
		db    8
		db 0C2h
		db    3
		db  80h
		db 0C2h
		db  80h
		db 0C1h
		db    3
		db  80h
		db  13h
		db 0BFh
		db    2
		db  80h
		db    4
		db 0BFh
		db    8
		db 0BFh
		db    3
		db  80h
		db 0BFh
		db  80h
		db 0BDh
		db  80h
		db 0BDh
		db  80h
		db 0BFh
		db    4
		db 0C1h
		db  80h
		db    2
		db 0C2h
		db  80h
		db    4
		db 0C2h
		db    8
		db 0C2h
		db    3
		db  80h
		db 0C2h
		db  80h
		db 0C1h
		db    3
		db  80h
		db  13h
		db 0BFh
		db    2
		db  80h
		db    4
		db 0BFh
		db    8
		db 0BFh
		db    3
		db  80h
		db 0BFh
		db  80h
		db 0BDh
		db    3
		db  80h
		db  15h
		db  80h
		db    4
		db 0D2h
		db    8
		db 0D0h
		db    3
		db  80h
		db 0D0h
		db  80h
		db 0CEh
		db  80h
		db 0CEh
		db  80h
		db 0CDh
		db    4
		db 0CEh
		db    2
		db 0CDh
		db    4
		db 0CBh
		db    2
		db  80h
		db  18h
		db  80h
		db  18h
		db 0F6h
		db  98h
		db  70h ; p
		db 0EFh
		db    3
		db 0FAh
		db    2
		db 0E6h
		db 0FEh
		db 0E1h
		db    3
		db 0AFh
		db    1
		db 0E7h
		db 0AEh
		db    4
		db  80h
		db    7
		db 0AFh
		db    1
		db 0E7h
		db 0AEh
		db    4
		db  80h
		db    7
		db 0B1h
		db    1
		db 0E7h
		db 0B0h
		db    4
		db  80h
		db    7
		db 0B1h
		db    1
		db 0E7h
		db 0B0h
		db    4
		db  80h
		db    7
		db 0B2h
		db    1
		db 0E7h
		db 0B1h
		db    4
		db  80h
		db    7
		db 0B2h
		db    1
		db 0E7h
		db 0B1h
		db    4
		db  80h
		db    7
		db 0B3h
		db    1
		db 0E7h
		db 0B2h
		db    4
		db  80h
		db    7
		db 0B3h
		db    1
		db 0E7h
		db 0B2h
		db    4
		db  80h
		db    7
		db 0FAh
		db    4
		db 0E6h
		db    2
		db 0E1h
		db    0
		db 0E6h
		db    4
		db 0EFh
		db    2
		db 0F0h
		db    8
		db    1
		db    6
		db    4
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0C9h
		db    6
		db 0CBh
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0D2h
		db  18h
		db 0E7h
		db  18h
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0C9h
		db    6
		db 0CBh
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0D6h
		db    3
		db  80h
		db 0D6h
		db  80h
		db 0D6h
		db  80h
		db 0D6h
		db  80h
		db 0D6h
		db    3
		db  80h
		db  13h
		db 0E6h
		db 0FCh
		db 0CBh
		db    2
		db  80h
		db    4
		db 0CBh
		db    8
		db 0CBh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0D2h
		db  80h
		db 0CEh
		db  80h
		db    7
		db 0C7h
		db    2
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C7h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db  80h
		db  13h
		db 0CBh
		db    2
		db  80h
		db    4
		db 0CBh
		db    8
		db 0CBh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0D2h
		db  80h
		db 0CEh
		db  80h
		db    7
		db 0C7h
		db    2
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C7h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db  80h
		db 0C6h
		db  80h
		db 0C7h
		db    4
		db 0C9h
		db  80h
		db    2
		db 0CBh
		db  80h
		db    4
		db 0CBh
		db    8
		db 0CBh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0D2h
		db  80h
		db 0CEh
		db  80h
		db    7
		db 0C7h
		db    2
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C7h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db    3
		db  80h
		db  13h
		db 0C6h
		db  0Eh
		db 0CAh
		db  0Ch
		db 0CDh
		db 0D6h
		db  0Ah
		db 0D7h
		db    2
		db 0E6h
		db    4
		db  80h
		db  18h
		db  80h
		db  18h
		db 0F6h
		db 0BFh
		db  71h ; q
		db 0EFh
		db    3
		db 0FAh
		db    2
		db 0E6h
		db 0FEh
		db 0AFh
		db    1
		db 0E7h
		db 0AEh
		db    4
		db  80h
		db    7
		db 0AFh
		db    1
		db 0E7h
		db 0AEh
		db    4
		db  80h
		db    7
		db 0B1h
		db    1
		db 0E7h
		db 0B0h
		db    4
		db  80h
		db    7
		db 0B1h
		db    1
		db 0E7h
		db 0B0h
		db    4
		db  80h
		db    7
		db 0B2h
		db    1
		db 0E7h
		db 0B1h
		db    4
		db  80h
		db    7
		db 0B2h
		db    1
		db 0E7h
		db 0B1h
		db    4
		db  80h
		db    7
		db 0B3h
		db    1
		db 0E7h
		db 0B2h
		db    4
		db  80h
		db    7
		db 0B3h
		db    1
		db 0E7h
		db 0B2h
		db    4
		db  80h
		db    7
		db 0FAh
		db    4
		db 0E6h
		db    6
		db 0EFh
		db    2
		db 0F0h
		db    2
		db    1
		db    2
		db    4
		db 0E1h
		db    2
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0C9h
		db    6
		db 0CBh
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0D2h
		db  18h
		db 0E7h
		db  18h
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0C9h
		db    6
		db 0CBh
		db    6
		db 0CDh
		db  18h
		db 0E7h
		db  0Ch
		db 0CEh
		db    6
		db 0D0h
		db    6
		db 0D6h
		db    3
		db  80h
		db 0D6h
		db  80h
		db 0D6h
		db  80h
		db 0D6h
		db  80h
		db 0D6h
		db    3
		db  80h
		db  13h
		db 0E6h
		db 0FCh
		db 0CBh
		db    2
		db  80h
		db    4
		db 0CBh
		db    8
		db 0CBh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0D2h
		db  80h
		db 0CEh
		db  80h
		db    7
		db 0C7h
		db    2
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C7h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db  80h
		db  13h
		db 0CBh
		db    2
		db  80h
		db    4
		db 0CBh
		db    8
		db 0CBh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0D2h
		db  80h
		db 0CEh
		db  80h
		db    7
		db 0C7h
		db    2
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C7h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db  80h
		db 0C6h
		db  80h
		db 0C7h
		db    4
		db 0C9h
		db  80h
		db    2
		db 0CBh
		db  80h
		db    4
		db 0CBh
		db    8
		db 0CBh
		db    3
		db  80h
		db 0CBh
		db  80h
		db 0C9h
		db  80h
		db 0D2h
		db  80h
		db 0CEh
		db  80h
		db    7
		db 0C7h
		db    2
		db  80h
		db    4
		db 0C7h
		db    8
		db 0C7h
		db    3
		db  80h
		db 0C7h
		db  80h
		db 0C6h
		db    3
		db  80h
		db  13h
		db 0C6h
		db  0Eh
		db 0CAh
		db  0Ch
		db 0CDh
		db 0D6h
		db  0Ah
		db 0D7h
		db    2
		db 0E6h
		db    4
		db  80h
		db  18h
		db  80h
		db  18h
		db 0F6h
		db 0C3h
		db  72h ; r
		db  82h
		db    6
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db    4
		db    2
		db    4
		db  81h
		db    2
		db 0F8h
		db 0F9h
		db  73h ; s
		db 0F7h
		db    0
		db    3
		db  94h
		db  73h ; s
		db  80h
		db    4
		db  81h
		db    8
		db  82h
		db    6
		db  81h
		db  81h
		db    6
		db  82h
		db  82h
		db  82h
		db    4
		db  81h
		db    2
		db 0F8h
		db 0F9h
		db  73h ; s
		db 0F7h
		db    0
		db    2
		db 0ABh
		db  73h ; s
		db  80h
		db    4
		db  81h
		db    8
		db  82h
		db    6
		db  81h
		db  81h
		db  0Ch
		db  82h
		db  0Ch
		db  82h
		db    6
		db  82h
		db  82h
		db  82h
		db  82h
		db  10h
		db    2
		db    4
		db  81h
		db    2
		db 0F8h
		db 0F9h
		db  73h ; s
		db 0F7h
		db    0
		db    3
		db 0C9h
		db  73h ; s
		db  80h
		db    4
		db  81h
		db    8
		db  82h
		db    6
		db  81h
		db  81h
		db    6
		db  82h
		db  82h
		db  82h
		db    4
		db  81h
		db    2
		db 0F8h
		db 0F9h
		db  73h ; s
		db 0F7h
		db    0
		db    3
		db 0E0h
		db  73h ; s
		db  80h
		db  0Ch
		db  82h
		db  0Ah
		db  81h
		db    2
		db  82h
		db    6
		db  82h
		db  82h
		db    6
		db    4
		db  81h
		db    2
		db 0F6h
		db  94h
		db  73h ; s
		db  80h
		db    4
		db  81h
		db    8
		db  82h
		db    6
		db  81h
		db  81h
		db  0Ch
		db  82h
		db  0Ah
		db  81h
		db    2
		db 0F9h
		db  3Ch ; <
		db  31h ; 1
		db  52h ; R
		db  50h ; P
		db  30h ; 0
		db  52h ; R
		db  53h ; S
		db  52h ; R
		db  53h ; S
		db    8
		db    0
		db    8
		db    0
		db    4
		db    0
		db    4
		db    0
		db  10h
		db    7
		db  10h
		db    7
		db  1Ah
		db  80h
		db  16h
		db  80h
		db  18h
		db  37h ; 7
		db  30h ; 0
		db  30h ; 0
		db  31h ; 1
		db  9Eh
		db 0DCh
		db  1Ch
		db  9Ch
		db  0Dh
		db    6
		db    4
		db    1
		db    8
		db  0Ah
		db    3
		db    5
		db 0BFh
		db 0BFh
		db  3Fh ; ?
		db  2Fh ; /
		db  32h ; 2
		db  22h ; "
		db  14h
		db  80h
		db  3Dh ; =
		db    1
		db    2
		db    2
		db    2
		db  1Fh
		db  10h
		db  10h
		db  10h
		db    7
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db    0
		db    0
		db    0
		db  1Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db  17h
		db  8Dh
		db  8Ch
		db  8Ch
		db  2Ch ; ,
		db  74h ; t
		db  74h ; t
		db  34h ; 4
		db  34h ; 4
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db    0
		db    1
		db  0Fh
		db  3Fh ; ?
		db  0Fh
		db  3Fh ; ?
		db  16h
		db  80h
		db  17h
		db  80h
		db    4
		db  37h ; 7
		db  72h ; r
		db  77h ; w
		db  49h ; I
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db    7
		db  0Ah
		db    7
		db  0Dh
		db    0
		db    0
		db    0
		db    0
		db  10h
		db    7
		db  10h
		db    7
		db  23h ; #
		db  80h
		db  23h ; #
		db  80h
		db  3Ah ; :
		db    1
		db    1
		db    1
		db    2
		db  8Dh
		db    7
		db    7
		db  52h ; R
		db    9
		db    0
		db    0
		db    3
		db    1
		db    2
		db    2
		db    0
		db  5Fh ; _
		db  0Fh
		db  0Fh
		db  2Fh ; /
		db  18h
		db  22h ; "
		db  18h
		db  80h
		db    0
		db  7Ah ; z
		db    6
		db    0
		db    3
		db    3
		db  5Bh ; [
		db  78h ; x
		db    0
		db    0
		db 0BBh
		db  74h ; t
		db 0F4h
		db  0Dh
		db  0Fh
		db  75h ; u
		db 0F4h
		db  0Dh
		db  46h ; F
		db  76h ; v
		db 0F4h
		db  13h
		db  83h
		db  76h ; v
		db 0F4h
		db  17h
		db 0D1h
		db  77h ; w
		db 0F4h
		db  17h
		db 0EFh
		db    2
		db 0E6h
		db    8
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0CDh
		db    3
		db 0CBh
		db 0C9h
		db 0C8h
		db 0CEh
		db    3
		db 0CDh
		db 0CBh
		db 0C9h
		db 0D0h
		db 0CEh
		db 0CDh
		db 0CBh
		db 0D2h
		db    3
		db 0D0h
		db 0CEh
		db 0CDh
		db 0D4h
		db 0D2h
		db 0D0h
		db 0CEh
		db 0E6h
		db 0F8h
		db 0EFh
		db    3
		db 0F0h
		db  0Dh
		db    1
		db    8
		db    5
		db 0F8h
		db  80h
		db  79h ; y
		db 0F7h
		db    0
		db    2
		db 0E3h
		db  74h ; t
		db 0EFh
		db    5
		db 0E1h
		db 0FEh
		db 0E6h
		db    3
		db 0FBh
		db 0F4h
		db 0F8h
		db 0E0h
		db  79h ; y
		db 0FBh
		db  0Ch
		db 0E6h
		db 0FDh
		db 0E0h
		db 0C0h
		db 0E6h
		db 0FEh
		db 0E1h
		db    0
		db 0EFh
		db    3
		db 0F8h
		db 0A7h
		db  79h ; y
		db 0F7h
		db    0
		db    2
		db    2
		db  75h ; u
		db 0E6h
		db    2
		db 0F6h
		db 0BBh
		db  74h ; t
		db 0EFh
		db    0
		db 0E6h
		db 0FDh
		db 0E8h
		db    6
		db 0AEh
		db    3
		db 0B0h
		db  80h
		db 0B1h
		db  80h
		db 0B3h
		db 0B5h
		db 0E8h
		db    0
		db 0B8h
		db    9
		db 0ACh
		db    6
		db 0B8h
		db 0ACh
		db 0B8h
		db    6
		db 0ACh
		db 0B8h
		db 0ACh
		db 0B8h
		db 0ACh
		db 0B8h
		db 0ACh
		db 0E6h
		db    3
		db 0E8h
		db    6
		db 0BAh
		db    3
		db    3
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0BAh
		db 0BAh
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0BAh
		db 0BAh
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0BAh
		db 0BAh
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B6h
		db 0B6h
		db 0B3h
		db 0B3h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B6h
		db 0B6h
		db 0B3h
		db 0B3h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B6h
		db 0B6h
		db 0B3h
		db 0B3h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B6h
		db 0B6h
		db 0B3h
		db 0B3h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B4h
		db 0B4h
		db 0B1h
		db 0B1h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B4h
		db 0B4h
		db 0B1h
		db 0B1h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B4h
		db 0B4h
		db 0B1h
		db 0B1h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B4h
		db 0B4h
		db 0B1h
		db 0B1h
		db 0BAh
		db 0BAh
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0BAh
		db 0BAh
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0BAh
		db 0BAh
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0BAh
		db 0BAh
		db 0B5h
		db 0B5h
		db 0B8h
		db 0B8h
		db 0B5h
		db 0B5h
		db 0F7h
		db    0
		db    2
		db  32h ; 2
		db  75h ; u
		db 0F8h
		db 0E0h
		db  79h ; y
		db 0B1h
		db    3
		db    3
		db 0ACh
		db 0ACh
		db 0AEh
		db 0AEh
		db 0ACh
		db 0ACh
		db 0B1h
		db 0B1h
		db 0ACh
		db 0ACh
		db 0AEh
		db 0AEh
		db 0ACh
		db 0ACh
		db 0B7h
		db 0B7h
		db 0B2h
		db 0B2h
		db 0B4h
		db 0B4h
		db 0B2h
		db 0B2h
		db 0B7h
		db 0B7h
		db 0B2h
		db 0B2h
		db 0B4h
		db 0B4h
		db 0B2h
		db 0B2h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B3h
		db 0B3h
		db 0B1h
		db 0B1h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B3h
		db 0B3h
		db 0B1h
		db 0B1h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B5h
		db 0B5h
		db 0B3h
		db 0B3h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B5h
		db 0B5h
		db 0B3h
		db 0B3h
		db 0B1h
		db 0B1h
		db 0ACh
		db 0ACh
		db 0AEh
		db 0AEh
		db 0ACh
		db 0ACh
		db 0B1h
		db 0B1h
		db 0ACh
		db 0ACh
		db 0AEh
		db 0AEh
		db 0ACh
		db 0ACh
		db 0B7h
		db 0B7h
		db 0B2h
		db 0B2h
		db 0B4h
		db 0B4h
		db 0B2h
		db 0B2h
		db 0B7h
		db 0B7h
		db 0B2h
		db 0B2h
		db 0B4h
		db 0B4h
		db 0B2h
		db 0B2h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B3h
		db 0B3h
		db 0B1h
		db 0B1h
		db 0B6h
		db 0B6h
		db 0B1h
		db 0B1h
		db 0B3h
		db 0B3h
		db 0B1h
		db 0B1h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B5h
		db 0B5h
		db 0B3h
		db 0B3h
		db 0B8h
		db 0B8h
		db 0B3h
		db 0B3h
		db 0B5h
		db 0B5h
		db 0B3h
		db 0B3h
		db 0F7h
		db    0
		db    2
		db 0BBh
		db  75h ; u
		db 0E8h
		db    0
		db 0F6h
		db  0Fh
		db  75h ; u
		db 0EFh
		db    1
		db 0E8h
		db    6
		db 0BAh
		db    3
		db 0BCh
		db  80h
		db 0BDh
		db  80h
		db 0BFh
		db 0C1h
		db 0E8h
		db    0
		db 0C4h
		db    3
		db 0E7h
		db  18h
		db 0E7h
		db  18h
		db  18h
		db 0EFh
		db    3
		db 0E1h
		db    3
		db 0E6h
		db 0FAh
		db 0F8h
		db  80h
		db  79h ; y
		db 0F7h
		db    0
		db    2
		db  61h ; a
		db  76h ; v
		db 0EFh
		db    0
		db 0E8h
		db    6
		db 0F8h
		db 0E0h
		db  79h ; y
		db 0EFh
		db    3
		db 0E8h
		db    0
		db 0E6h
		db 0FEh
		db 0F8h
		db 0A7h
		db  79h ; y
		db 0F7h
		db    0
		db    2
		db  76h ; v
		db  76h ; v
		db 0E6h
		db    8
		db 0F6h
		db  46h ; F
		db  76h ; v
		db 0EFh
		db    4
		db 0F0h
		db  5Ch ; \
		db    1
		db    5
		db    4
		db 0E8h
		db    6
		db 0C1h
		db    3
		db 0C1h
		db  80h
		db 0C1h
		db  80h
		db 0C1h
		db 0C1h
		db 0E8h
		db    0
		db 0BFh
		db    3
		db 0E7h
		db  18h
		db 0E7h
		db  18h
		db 0E7h
		db  18h
		db 0EFh
		db    2
		db 0F0h
		db    8
		db    1
		db    8
		db    4
		db 0E1h
		db    4
		db 0E6h
		db  0Ch
		db 0E6h
		db 0FAh
		db 0EFh
		db    4
		db 0E8h
		db    3
		db 0D2h
		db    3
		db 0D2h
		db 0D9h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0D2h
		db 0D2h
		db 0D9h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0D2h
		db 0D2h
		db 0D9h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0D2h
		db 0D2h
		db 0D9h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0D0h
		db 0D0h
		db 0D7h
		db 0D0h
		db 0D5h
		db 0D0h
		db 0D4h
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D7h
		db 0D0h
		db 0D5h
		db 0D0h
		db 0D4h
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D7h
		db 0D0h
		db 0D5h
		db 0D0h
		db 0D4h
		db 0D0h
		db 0D0h
		db 0D0h
		db 0D7h
		db 0D0h
		db 0D5h
		db 0D0h
		db 0D4h
		db 0D0h
		db 0D2h
		db 0D2h
		db 0D8h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0D2h
		db 0D2h
		db 0D8h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0D2h
		db 0D2h
		db 0D8h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0D2h
		db 0D2h
		db 0D8h
		db 0D2h
		db 0D7h
		db 0D2h
		db 0D5h
		db 0D2h
		db 0CDh
		db  18h
		db 0CFh
		db 0D0h
		db 0D1h
		db 0F7h
		db    0
		db    2
		db 0ABh
		db  76h ; v
		db 0E6h
		db    6
		db 0EFh
		db    5
		db 0E1h
		db    2
		db 0E6h
		db 0EDh
		db 0FBh
		db 0F4h
		db 0F8h
		db 0E0h
		db  79h ; y
		db 0E6h
		db  13h
		db 0FBh
		db  0Ch
		db 0E6h
		db 0F3h
		db 0EFh
		db    4
		db 0F0h
		db    0
		db    0
		db    0
		db    0
		db 0E6h
		db 0FAh
		db 0F0h
		db    0
		db    0
		db    0
		db    0
		db  80h
		db  0Ch
		db 0E1h
		db 0ECh
		db 0C4h
		db    2
		db 0E1h
		db    0
		db 0E7h
		db    6
		db  80h
		db    1
		db 0C4h
		db    3
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E1h
		db 0ECh
		db 0CAh
		db    2
		db 0E1h
		db    0
		db 0E7h
		db    6
		db  80h
		db    1
		db 0CAh
		db    3
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E1h
		db 0ECh
		db 0C9h
		db    2
		db 0E1h
		db    0
		db 0E7h
		db    6
		db  80h
		db    1
		db 0C9h
		db    3
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E1h
		db 0ECh
		db 0C6h
		db    2
		db 0E1h
		db    0
		db 0E7h
		db  0Ah
		db  80h
		db    3
		db 0C6h
		db  80h
		db  80h
		db 0C6h
		db  80h
		db    9
		db  80h
		db  0Ch
		db 0E1h
		db 0ECh
		db 0C4h
		db    2
		db 0E1h
		db    0
		db 0E7h
		db    6
		db  80h
		db    1
		db 0C4h
		db    3
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E1h
		db 0ECh
		db 0CAh
		db    2
		db 0E1h
		db    0
		db 0E7h
		db    6
		db  80h
		db    1
		db 0CAh
		db    3
		db  80h
		db  18h
		db  80h
		db  0Ch
		db 0E1h
		db 0ECh
		db 0C9h
		db    2
		db 0E1h
		db    0
		db 0E7h
		db    6
		db  80h
		db    1
		db 0C9h
		db    3
		db  80h
		db  18h
		db 0E1h
		db 0ECh
		db 0C6h
		db    2
		db 0E1h
		db    0
		db  0Ah
		db  80h
		db    6
		db 0F0h
		db  18h
		db    1
		db    7
		db    4
		db 0E1h
		db 0E2h
		db 0C6h
		db    2
		db 0E7h
		db 0E1h
		db    0
		db    6
		db 0E7h
		db  16h
		db 0F7h
		db    0
		db    2
		db  36h ; 6
		db  77h ; w
		db 0E6h
		db    6
		db 0E6h
		db    1
		db 0F6h
		db  83h
		db  76h ; v
		db 0EFh
		db    4
		db 0F0h
		db  5Ch ; \
		db    1
		db    5
		db    4
		db 0E8h
		db    6
		db 0BDh
		db    3
		db 0BDh
		db  80h
		db 0BDh
		db  80h
		db 0BDh
		db 0BDh
		db 0E8h
		db    0
		db 0BCh
		db    3
		db 0E7h
		db  18h
		db 0E7h
		db  18h
		db 0E7h
		db  18h
		db 0E6h
		db  0Ch
		db 0EFh
		db    2
		db 0F0h
		db    8
		db    1
		db    8
		db    4
		db 0E6h
		db 0FAh
		db  80h
		db  30h ; 0
		db  80h
		db  80h
		db  80h
		db  80h
		db  30h ; 0
		db  80h
		db 0CDh
		db  18h
		db 0CFh
		db 0D0h
		db 0D1h
		db 0F7h
		db    0
		db    2
		db 0F7h
		db  77h ; w
		db 0E6h
		db    6
		db  80h
		db  18h
		db  80h
		db  80h
		db  80h
		db 0F7h
		db    0
		db    1
		db  0Bh
		db  78h ; x
		db 0EFh
		db    6
		db 0E6h
		db 0EBh
		db 0FBh
		db  0Ch
		db 0F8h
		db  33h ; 3
		db  78h ; x
		db 0CDh
		db 0CEh
		db 0D0h
		db 0F8h
		db  33h ; 3
		db  78h ; x
		db 0D0h
		db 0CEh
		db 0CDh
		db 0F7h
		db    0
		db    2
		db  1Bh
		db  78h ; x
		db 0E6h
		db    9
		db 0FBh
		db 0F4h
		db 0F6h
		db 0D1h
		db  77h ; w
		db  80h
		db    3
		db 0CDh
		db 0C9h
		db    6
		db    6
		db 0C4h
		db 0C9h
		db    9
		db 0CDh
		db    9
		db  80h
		db    6
		db  80h
		db    3
		db 0CEh
		db 0CAh
		db    6
		db    6
		db 0C7h
		db 0CAh
		db    9
		db 0CEh
		db    9
		db  80h
		db    6
		db  80h
		db    3
		db 0CDh
		db 0C9h
		db    6
		db    6
		db 0C6h
		db 0C9h
		db    9
		db 0CDh
		db  0Fh
		db 0CBh
		db  0Ch
		db 0F9h
		db  82h
		db    3
		db    6
		db    6
		db    3
		db    3
		db  0Fh
		db  81h
		db  0Ch
		db  80h
		db  0Ch
		db  81h
		db  81h
		db    6
		db  82h
		db  82h
		db  82h
		db    3
		db    3
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db  81h
		db  0Ch
		db  82h
		db    1
		db  86h
		db    5
		db  84h
		db    6
		db  81h
		db    1
		db  86h
		db    5
		db  84h
		db    6
		db  82h
		db    1
		db  86h
		db    5
		db  84h
		db    6
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db  81h
		db  0Ch
		db  82h
		db    1
		db  86h
		db    5
		db  84h
		db    6
		db  81h
		db    1
		db  86h
		db    5
		db  84h
		db    6
		db  82h
		db    1
		db  86h
		db    5
		db  84h
		db    6
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db    6
		db  84h
		db    3
		db  84h
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db  81h
		db    6
		db  84h
		db  82h
		db    1
		db  86h
		db    5
		db  84h
		db    6
		db  81h
		db    1
		db  86h
		db    5
		db  82h
		db    1
		db  84h
		db    5
		db  82h
		db    1
		db  86h
		db    5
		db  82h
		db    3
		db    3
		db 0F7h
		db    0
		db    2
		db  6Eh ; n
		db  78h ; x
		db  82h
		db    3
		db  82h
		db  81h
		db  81h
		db  81h
		db  81h
		db  82h
		db  82h
		db  81h
		db  81h
		db  81h
		db  81h
		db  82h
		db  82h
		db  82h
		db  82h
		db 0F7h
		db    0
		db    2
		db 0D0h
		db  78h ; x
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db    3
		db  81h
		db    1
		db  84h
		db    2
		db  86h
		db    3
		db  82h
		db    1
		db  84h
		db  0Bh
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db    3
		db  81h
		db    1
		db  84h
		db    2
		db  86h
		db    3
		db  82h
		db    1
		db  84h
		db  0Bh
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db    3
		db  81h
		db    1
		db  84h
		db    2
		db  86h
		db    3
		db  82h
		db    1
		db  84h
		db  0Bh
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db  82h
		db    1
		db  84h
		db    2
		db  81h
		db    1
		db  86h
		db    5
		db  82h
		db    1
		db  84h
		db    5
		db  86h
		db    6
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db    3
		db  81h
		db    1
		db  84h
		db    2
		db  86h
		db    3
		db  82h
		db    1
		db  84h
		db  0Bh
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db    3
		db  81h
		db    1
		db  84h
		db    2
		db  86h
		db    3
		db  82h
		db    1
		db  84h
		db  0Bh
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db    3
		db  81h
		db    1
		db  84h
		db    2
		db  86h
		db    3
		db  82h
		db    1
		db  84h
		db  0Bh
		db  81h
		db  0Ch
		db  82h
		db    9
		db  81h
		db    6
		db  82h
		db    1
		db  86h
		db    2
		db  82h
		db    1
		db  84h
		db    5
		db  82h
		db    1
		db  86h
		db    5
		db  82h
		db    1
		db  84h
		db    2
		db  82h
		db    3
		db 0F7h
		db    0
		db    2
		db 0E6h
		db  78h ; x
		db 0F6h
		db  5Bh ; [
		db  78h ; x
		db 0D2h
		db  1Eh
		db 0D0h
		db    6
		db 0CEh
		db 0D0h
		db 0CDh
		db  18h
		db 0E7h
		db  18h
		db 0D0h
		db  1Eh
		db 0CEh
		db    6
		db 0CDh
		db 0CEh
		db 0CBh
		db  18h
		db 0E7h
		db  18h
		db 0CEh
		db  1Eh
		db 0CCh
		db    6
		db 0CBh
		db 0CCh
		db 0C9h
		db  18h
		db 0CBh
		db 0CDh
		db    3
		db 0CEh
		db 0CDh
		db  12h
		db 0E7h
		db  18h
		db 0E7h
		db  30h ; 0
		db 0F9h
		db 0D0h
		db  1Eh
		db 0CDh
		db    6
		db 0C9h
		db 0D5h
		db 0D3h
		db  0Ch
		db 0D5h
		db    6
		db 0D3h
		db  0Ch
		db 0D0h
		db    6
		db 0D3h
		db 0D2h
		db  24h ; $
		db 0CDh
		db    6
		db 0CEh
		db 0D0h
		db  12h
		db 0D2h
		db    6
		db 0D0h
		db  12h
		db 0CDh
		db  0Ch
		db 0D0h
		db  1Eh
		db 0CDh
		db    6
		db 0C9h
		db 0D5h
		db 0D3h
		db  0Ch
		db 0D5h
		db    6
		db 0D3h
		db  0Ch
		db 0D0h
		db    6
		db 0D3h
		db 0D2h
		db  18h
		db 0E7h
		db  0Ch
		db 0CDh
		db    6
		db 0CEh
		db 0D0h
		db  18h
		db 0E7h
		db  18h
		db  80h
		db    6
		db 0F9h
		db 0BAh
		db    3
		db    3
		db 0B9h
		db 0B9h
		db 0B8h
		db 0B8h
		db 0BAh
		db 0BAh
		db 0B9h
		db 0B9h
		db 0B8h
		db 0B8h
		db 0B8h
		db 0B8h
		db    9
		db 0BAh
		db    3
		db    3
		db 0B9h
		db 0B9h
		db 0B8h
		db 0B8h
		db 0BAh
		db 0BAh
		db 0B9h
		db 0B9h
		db 0B8h
		db 0B8h
		db  80h
		db  0Ch
		db 0F9h
		db    8
		db  0Ah
		db  70h ; p
		db  30h ; 0
		db    0
		db  1Fh
		db  1Fh
		db  5Fh ; _
		db  5Fh ; _
		db  12h
		db  0Eh
		db  0Ah
		db  0Ah
		db    0
		db    4
		db    4
		db    3
		db  2Fh ; /
		db  2Fh ; /
		db  2Fh ; /
		db  2Fh ; /
		db  24h ; $
		db  2Dh ; -
		db  13h
		db  80h
		db  2Ch ; ,
		db  74h ; t
		db  74h ; t
		db  34h ; 4
		db  34h ; 4
		db  1Fh
		db  12h
		db  1Fh
		db  1Fh
		db    0
		db    4
		db    0
		db    4
		db    0
		db    9
		db    0
		db    9
		db    0
		db    8
		db    0
		db    8
		db  16h
		db  80h
		db  17h
		db  80h
		db  3Dh ; =
		db    1
		db    2
		db    2
		db    2
		db  14h
		db  0Eh
		db  8Ch
		db  0Eh
		db    8
		db    5
		db    2
		db    5
		db    0
		db    8
		db    8
		db    8
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Ah
		db  92h
		db 0A7h
		db  80h
		db  29h ; )
		db  36h ; 6
		db  74h ; t
		db  71h ; q
		db  31h ; 1
		db    4
		db    4
		db    5
		db  1Dh
		db  12h
		db  0Eh
		db  1Fh
		db  1Fh
		db    4
		db    6
		db    3
		db    1
		db  5Fh ; _
		db  6Fh ; o
		db  0Fh
		db  0Fh
		db  27h ; '
		db  27h ; '
		db  2Eh ; .
		db  80h
		db  3Dh ; =
		db    1
		db    1
		db    1
		db    1
		db  8Eh
		db  52h ; R
		db  14h
		db  4Ch ; L
		db    8
		db    8
		db  0Eh
		db    3
		db    0
		db    0
		db    0
		db    0
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Bh
		db  80h
		db  80h
		db  9Bh
		db  30h ; 0
		db  30h ; 0
		db  30h ; 0
		db  30h ; 0
		db  30h ; 0
		db  9Eh
		db 0D8h
		db 0DCh
		db 0DCh
		db  0Eh
		db  0Ah
		db    4
		db    5
		db    8
		db    8
		db    8
		db    8
		db 0BFh
		db 0BFh
		db 0BFh
		db 0BFh
		db  14h
		db  3Ch ; <
		db  14h
		db  80h
		db  3Dh ; =
		db    1
		db    2
		db    0
		db    1
		db  1Fh
		db  0Eh
		db  0Eh
		db  0Eh
		db    7
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db    0
		db    0
		db    0
		db  1Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db  17h
		db  8Dh
		db  8Ch
		db  8Ch
		db 0F2h
		db  7Ch ; |
		db    6
		db    0
		db    2
		db    8
		db 0A4h
		db  7Ch ; |
		db    0
		db    0
		db 0CDh
		db  7Ah ; z
		db 0F4h
		db  11h
		db  38h ; 8
		db  7Bh ; {
		db 0F4h
		db    7
		db  9Fh
		db  7Bh ; {
		db 0E8h
		db  0Fh
		db 0E7h
		db  7Bh ; {
		db 0E8h
		db  0Fh
		db  37h ; 7
		db  7Ch ; |
		db 0F4h
		db  11h
		db 0EFh
		db    0
		db  80h
		db  30h ; 0
		db  80h
		db  0Ch
		db 0CAh
		db  15h
		db  80h
		db    3
		db 0CAh
		db    6
		db  80h
		db 0CBh
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C4h
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db  80h
		db  0Ch
		db 0CAh
		db  15h
		db  80h
		db    3
		db 0CAh
		db    6
		db  80h
		db 0CBh
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C4h
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db 0E6h
		db 0FDh
		db  80h
		db  30h ; 0
		db  80h
		db 0C6h
		db    4
		db 0C8h
		db 0CAh
		db 0CBh
		db 0CDh
		db 0CFh
		db 0C8h
		db 0CAh
		db 0CCh
		db 0CDh
		db 0CFh
		db 0D1h
		db 0CAh
		db 0CCh
		db 0CEh
		db 0CFh
		db 0D1h
		db 0D3h
		db 0CEh
		db 0CFh
		db 0D1h
		db 0D3h
		db 0D5h
		db 0D6h
		db 0E6h
		db    3
		db 0F6h
		db 0D1h
		db  7Ah ; z
		db 0EFh
		db    1
		db  80h
		db  30h ; 0
		db 0AEh
		db    6
		db  80h
		db 0AEh
		db  80h
		db 0A9h
		db  80h
		db 0A9h
		db  80h
		db 0ACh
		db  12h
		db 0ABh
		db  0Ch
		db 0ACh
		db    6
		db 0ABh
		db  0Ch
		db 0AEh
		db    6
		db  80h
		db 0AEh
		db  80h
		db 0A9h
		db  80h
		db 0A9h
		db  80h
		db 0B3h
		db  12h
		db 0B2h
		db  0Ch
		db 0B3h
		db    6
		db 0B2h
		db  0Ch
		db 0AEh
		db    6
		db  80h
		db 0AEh
		db  80h
		db 0A9h
		db  80h
		db 0A9h
		db  80h
		db 0ACh
		db  12h
		db 0ABh
		db  0Ch
		db 0ACh
		db    6
		db 0ABh
		db  0Ch
		db 0AEh
		db    6
		db  80h
		db 0AEh
		db  80h
		db 0A9h
		db  80h
		db 0A9h
		db  80h
		db 0B3h
		db  12h
		db 0B2h
		db  0Ch
		db 0B3h
		db    6
		db 0B2h
		db  0Ch
		db 0A4h
		db    6
		db 0A0h
		db  12h
		db 0A2h
		db    6
		db  80h
		db 0A4h
		db  80h
		db 0F7h
		db    0
		db    2
		db  80h
		db  7Bh ; {
		db 0A2h
		db  0Ch
		db 0A4h
		db 0A6h
		db 0A8h
		db 0A4h
		db    6
		db 0A6h
		db 0A8h
		db 0AAh
		db 0A6h
		db 0A8h
		db 0AAh
		db 0ABh
		db 0F6h
		db  3Ch ; <
		db  7Bh ; {
		db 0EFh
		db    0
		db  80h
		db  30h ; 0
		db 0CDh
		db    6
		db  80h
		db 0CDh
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0CBh
		db  12h
		db 0CBh
		db  1Eh
		db 0CDh
		db    6
		db  80h
		db 0CDh
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0D0h
		db  12h
		db 0D0h
		db  1Eh
		db 0CDh
		db    6
		db  80h
		db 0CDh
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0CBh
		db  12h
		db 0CBh
		db  1Eh
		db 0CDh
		db    6
		db  80h
		db 0CDh
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0D0h
		db  12h
		db 0D0h
		db  1Eh
		db  80h
		db    6
		db 0C4h
		db  12h
		db 0C6h
		db    6
		db  80h
		db  12h
		db 0F7h
		db    0
		db    4
		db 0D7h
		db  7Bh ; {
		db 0F6h
		db 0A3h
		db  7Bh ; {
		db 0EFh
		db    0
		db  80h
		db  30h ; 0
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C6h
		db  80h
		db 0C8h
		db  12h
		db 0C8h
		db    6
		db 0E7h
		db  18h
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C6h
		db  80h
		db 0CBh
		db  12h
		db 0CBh
		db    6
		db 0E7h
		db  18h
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C6h
		db  80h
		db 0C8h
		db  12h
		db 0C8h
		db    6
		db 0E7h
		db  18h
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C6h
		db  80h
		db 0CBh
		db  12h
		db 0CBh
		db    6
		db 0E7h
		db  18h
		db  80h
		db    6
		db 0C8h
		db  12h
		db 0CAh
		db    6
		db  80h
		db  12h
		db 0F7h
		db    0
		db    4
		db  27h ; '
		db  7Ch ; |
		db 0F6h
		db 0EBh
		db  7Bh ; {
		db 0EFh
		db    0
		db 0E1h
		db    3
		db  80h
		db  30h ; 0
		db  80h
		db  0Ch
		db 0CAh
		db  15h
		db  80h
		db    3
		db 0CAh
		db    6
		db  80h
		db 0CBh
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C4h
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db  80h
		db  0Ch
		db 0CAh
		db  15h
		db  80h
		db    3
		db 0CAh
		db    6
		db  80h
		db 0CBh
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db 0CAh
		db    6
		db  80h
		db 0CAh
		db  80h
		db 0CAh
		db  80h
		db 0C6h
		db  80h
		db 0C4h
		db  0Fh
		db  80h
		db    3
		db 0C8h
		db  18h
		db  80h
		db    6
		db 0E6h
		db 0FDh
		db  80h
		db  30h ; 0
		db  80h
		db 0C6h
		db    4
		db 0C8h
		db 0CAh
		db 0CBh
		db 0CDh
		db 0CFh
		db 0C8h
		db 0CAh
		db 0CCh
		db 0CDh
		db 0CFh
		db 0D1h
		db 0CAh
		db 0CCh
		db 0CEh
		db 0CFh
		db 0D1h
		db 0D3h
		db 0CEh
		db 0CFh
		db 0D1h
		db 0D3h
		db 0D5h
		db 0D6h
		db 0E6h
		db    3
		db 0F6h
		db  3Dh ; =
		db  7Ch ; |
		db  82h
		db    6
		db  82h
		db  82h
		db  82h
		db  82h
		db    2
		db  82h
		db    4
		db  81h
		db  12h
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db  81h
		db  0Ch
		db  82h
		db  81h
		db  82h
		db  81h
		db  0Ch
		db  82h
		db  81h
		db    4
		db  80h
		db  82h
		db  82h
		db  0Ch
		db 0F7h
		db    0
		db    2
		db 0AFh
		db  7Ch ; |
		db  81h
		db    6
		db  82h
		db  12h
		db  81h
		db  0Ch
		db  82h
		db  82h
		db    6
		db  81h
		db  12h
		db  81h
		db  0Ch
		db  82h
		db  82h
		db    6
		db  81h
		db  12h
		db  81h
		db  0Ch
		db  82h
		db  82h
		db    4
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db  82h
		db 0F6h
		db 0AFh
		db  7Ch ; |
		db 0F2h
		db  3Ah ; :
		db    1
		db    7
		db    1
		db    1
		db  8Eh
		db  8Eh
		db  8Dh
		db  53h ; S
		db  0Eh
		db  0Eh
		db  0Eh
		db    3
		db    0
		db    0
		db    0
		db    0
		db  1Fh
		db 0FFh
		db  1Fh
		db  0Fh
		db  18h
		db  28h ; (
		db  27h ; '
		db  80h
		db  3Ah ; :
		db  61h ; a
		db  3Ch ; <
		db  14h
		db  31h ; 1
		db  9Ch
		db 0DBh
		db  9Ch
		db 0DAh
		db    4
		db    9
		db    4
		db    3
		db    3
		db    1
		db    3
		db    0
		db  1Fh
		db  0Fh
		db  0Fh
		db 0AFh
		db  21h ; !
		db  47h ; G
		db  31h ; 1
		db  80h
		db  84h
		db  7Dh ; }
		db 0A2h
		db  7Dh ; }
		db 0C1h
		db  7Dh ; }
		db 0D4h
		db  7Dh ; }
		db 0FCh
		db  7Dh ; }
		db  33h ; 3
		db  7Eh ; ~
		db  6Ah ; j
		db  7Eh ; ~
		db  85h
		db  7Eh ; ~
		db 0A5h
		db  7Eh ; ~
		db 0C8h
		db  7Eh ; ~
		db  5Ch ; \
		db  7Fh ; 
		db  12h
		db  80h
		db 0A2h
		db  80h
		db 0C2h
		db  80h
		db 0ECh
		db  80h
		db  0Dh
		db  81h
		db  1Ch
		db  81h
		db  2Fh ; /
		db  81h
		db  42h ; B
		db  81h
		db  55h ; U
		db  81h
		db  6Ah ; j
		db  81h
		db  75h ; u
		db  81h
		db  89h
		db  81h
		db  98h
		db  81h
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db  84h
		db  7Dh ; }
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db  8Eh
		db  7Dh ; }
		db  10h
		db    6
		db 0EFh
		db    0
		db  99h
		db    2
		db  9Bh
		db  9Dh
		db  9Eh
		db 0A0h
		db 0A2h
		db 0A4h
		db 0A5h
		db 0A5h
		db 0A7h
		db 0A9h
		db 0AAh
		db 0ACh
		db 0AEh
		db 0B0h
		db 0B1h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db 0ACh
		db  7Dh ; }
		db    0
		db    8
		db 0EFh
		db    1
		db  90h
		db  10h
		db 0E7h
		db 0F0h
		db    1
		db    1
		db  55h ; U
		db  30h ; 0
		db  99h
		db  20h
		db 0F0h
		db    1
		db    1
		db  80h
		db    3
		db 0E7h
		db 0B0h
		db  20h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db 0CBh
		db  7Dh ; }
		db    9
		db    0
		db 0EFh
		db    0
		db 0B8h
		db  20h
		db 0B4h
		db  35h ; 5
		db  80h
		db    8
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db 0DEh
		db  7Dh ; }
		db  0Ch
		db    0
		db 0EFh
		db    2
		db 0FAh
		db    1
		db 0B1h
		db    6
		db 0F7h
		db    0
		db    8
		db 0E2h
		db  7Dh ; }
		db 0FAh
		db    2
		db 0B1h
		db    6
		db 0F7h
		db    0
		db  10h
		db 0EBh
		db  7Dh ; }
		db 0FAh
		db    3
		db 0B1h
		db    6
		db 0F7h
		db    0
		db    8
		db 0F4h
		db  7Dh ; }
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db    6
		db  7Eh ; ~
		db 0F4h
		db    8
		db 0EFh
		db    3
		db  90h
		db    8
		db  91h
		db  92h
		db  93h
		db  94h
		db  95h
		db  96h
		db  97h
		db  98h
		db  99h
		db  9Ah
		db  9Bh
		db  9Ch
		db  9Dh
		db  9Eh
		db  9Fh
		db 0A0h
		db 0A1h
		db 0A2h
		db 0A3h
		db 0A4h
		db 0A5h
		db 0A6h
		db 0A7h
		db 0A8h
		db 0A9h
		db 0AAh
		db 0ABh
		db 0ACh
		db 0ADh
		db 0AEh
		db 0AFh
		db 0B0h
		db 0B1h
		db 0B2h
		db 0B3h
		db 0B4h
		db 0B5h
		db 0B6h
		db 0B7h
		db 0B8h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db  3Dh ; =
		db  7Eh ; ~
		db 0F4h
		db    8
		db 0EFh
		db    4
		db  90h
		db    8
		db  91h
		db  92h
		db  93h
		db  94h
		db  95h
		db  96h
		db  97h
		db  98h
		db  99h
		db  9Ah
		db  9Bh
		db  9Ch
		db  9Dh
		db  9Eh
		db  9Fh
		db 0A0h
		db 0A1h
		db 0A2h
		db 0A3h
		db 0A4h
		db 0A5h
		db 0A6h
		db 0A7h
		db 0A8h
		db 0A9h
		db 0AAh
		db 0ABh
		db 0ACh
		db 0ADh
		db 0AEh
		db 0AFh
		db 0B0h
		db 0B1h
		db 0B2h
		db 0B3h
		db 0B4h
		db 0B5h
		db 0B6h
		db 0B7h
		db 0B8h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    2
		db  88h
		db    5
		db  7Ah ; z
		db  7Eh ; ~
		db    0
		db    8
		db  88h
		db    6
		db  7Ah ; z
		db  7Eh ; ~
		db    5
		db    8
		db 0EFh
		db    5
		db 0B1h
		db    2
		db  80h
		db    2
		db 0BDh
		db    4
		db  80h
		db  18h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    2
		db  88h
		db    5
		db  95h
		db  7Eh ; ~
		db    0
		db    8
		db  88h
		db    6
		db  95h
		db  7Eh ; ~
		db    5
		db    8
		db 0EFh
		db    6
		db 0F0h
		db    1
		db    1
		db  20h
		db    1
		db 0B1h
		db    2
		db  80h
		db    2
		db 0BDh
		db    8
		db  80h
		db  18h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    2
		db  88h
		db    5
		db 0B9h
		db  7Eh ; ~
		db  0Bh
		db    8
		db  88h
		db    6
		db 0B5h
		db  7Eh ; ~
		db    0
		db    8
		db 0EFh
		db    7
		db  80h
		db    2
		db 0EFh
		db    7
		db 0F0h
		db    1
		db    1
		db  70h ; p
		db    7
		db 0A0h
		db    4
		db 0A4h
		db 0A6h
		db 0A0h
		db 0A4h
		db 0A6h
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    6
		db  88h
		db    0
		db  44h ; D
		db  7Fh ; 
		db 0F4h
		db    8
		db  88h
		db    1
		db  0Eh
		db  7Fh ; 
		db 0F4h
		db    8
		db  88h
		db    4
		db  25h ; %
		db  7Fh ; 
		db    0
		db  10h
		db  88h
		db    5
		db  44h ; D
		db  7Fh ; 
		db    0
		db    0
		db  88h
		db    6
		db  0Eh
		db  7Fh ; 
		db    0
		db    0
		db  88h
		db    2
		db 0F0h
		db  7Eh ; ~
		db    0
		db  10h
		db 0EFh
		db    8
		db 0F0h
		db  12h
		db    2
		db    3
		db    4
		db  80h
		db  0Ah
		db 0B6h
		db    5
		db  80h
		db 0B6h
		db 0B6h
		db 0B6h
		db  14h
		db  80h
		db  0Ah
		db 0BAh
		db    5
		db  80h
		db 0B6h
		db  80h
		db 0BAh
		db  80h
		db 0BDh
		db  50h ; P
		db  80h
		db  0Ah
		db 0F2h
		db 0EFh
		db    8
		db 0B6h
		db    5
		db  80h
		db 0B6h
		db 0B6h
		db 0B6h
		db  14h
		db  80h
		db  0Ah
		db 0BAh
		db    5
		db  80h
		db 0B6h
		db  80h
		db 0BAh
		db  80h
		db 0BDh
		db  50h ; P
		db  80h
		db  14h
		db 0F2h
		db 0EFh
		db    8
		db 0F0h
		db  12h
		db    2
		db    3
		db    4
		db  80h
		db  0Ah
		db  80h
		db  32h ; 2
		db 0BDh
		db    5
		db  80h
		db 0BAh
		db  80h
		db 0BDh
		db  80h
		db 0BDh
		db  80h
		db 0C1h
		db  80h
		db 0BDh
		db  80h
		db 0C1h
		db  80h
		db 0C4h
		db  28h ; (
		db  80h
		db  0Ah
		db 0F2h
		db 0EFh
		db    8
		db  80h
		db  32h ; 2
		db 0BDh
		db    5
		db  80h
		db 0BAh
		db  80h
		db 0BDh
		db  80h
		db 0BDh
		db  80h
		db 0C1h
		db  80h
		db 0BDh
		db  80h
		db 0C1h
		db  80h
		db 0C4h
		db  28h ; (
		db  80h
		db  14h
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    6
		db  88h
		db    0
		db  84h
		db  7Fh ; 
		db    0
		db    2
		db  88h
		db    1
		db  8Ch
		db  7Fh ; 
		db    0
		db    5
		db  88h
		db    4
		db  94h
		db  7Fh ; 
		db    0
		db    5
		db  88h
		db    5
		db 0AEh
		db  7Fh ; 
		db    0
		db    6
		db  88h
		db    6
		db 0C8h
		db  7Fh ; 
		db    0
		db  12h
		db  88h
		db    2
		db 0D7h
		db  7Fh ; 
		db    0
		db  14h
		db 0EFh
		db    8
		db 0F8h
		db 0E6h
		db  7Fh ; 
		db  80h
		db  14h
		db 0F2h
		db 0EFh
		db    8
		db 0F8h
		db 0FCh
		db  7Fh ; 
		db  80h
		db  14h
		db 0F2h
		db 0EFh
		db    8
		db 0B5h
		db    5
		db  80h
		db 0B5h
		db  80h
		db 0B5h
		db  0Fh
		db 0B5h
		db 0B5h
		db    5
		db  80h
		db 0B5h
		db  0Fh
		db 0B5h
		db 0B5h
		db    5
		db  80h
		db 0B5h
		db  3Ch ; <
		db  80h
		db  14h
		db  80h
		db  14h
		db 0F2h
		db 0EFh
		db  10h
		db 0A9h
		db    5
		db  80h
		db 0AEh
		db  80h
		db 0AEh
		db  0Fh
		db 0B2h
		db 0AEh
		db    5
		db  80h
		db 0AEh
		db  0Fh
		db 0B2h
		db 0AEh
		db    5
		db  80h
		db 0B2h
		db  3Ch ; <
		db  80h
		db  14h
		db  80h
		db  14h
		db 0F2h
		db 0EFh
		db    8
		db 0F0h
		db    8
		db    2
		db    3
		db    4
		db  80h
		db  0Ah
		db 0F8h
		db 0E6h
		db  7Fh ; 
		db  80h
		db  0Ah
		db 0F2h
		db 0EFh
		db    8
		db 0F0h
		db    8
		db    2
		db    3
		db    4
		db  80h
		db  0Ah
		db 0F8h
		db 0FCh
		db  7Fh ; 
		db  80h
		db  0Ah
		db 0F2h
		db 0BCh
		db    5
		db  80h
		db 0BEh
		db  80h
		db 0BFh
		db  0Fh
		db 0B2h
		db 0BCh
		db    5
		db  80h
		db 0BFh
		db  0Fh
		db 0B2h
		db 0BCh
		db    5
		db  80h
		db 0C1h
		db  3Ch ; <
		db  80h
		db  14h
		db 0F9h
		db 0BAh
		db    5
		db  80h
		db 0BAh
		db  80h
		db 0BAh
		db  0Fh
		db 0BAh
		db 0BAh
		db    5
		db  80h
		db 0BAh
		db  0Fh
		db 0BAh
		db 0BAh
		db    5
		db  80h
		db 0BAh
		db  3Ch ; <
		db  80h
		db  14h
		db 0F9h
		db 0CFh
		db  81h
		db    2
		db    6
		db  88h
		db    0
		db  3Ah ; :
		db  80h
		db    0
		db    2
		db  88h
		db    1
		db  42h ; B
		db  80h
		db    0
		db    4
		db  88h
		db    4
		db  4Ah ; J
		db  80h
		db    0
		db  12h
		db  88h
		db    5
		db  59h ; Y
		db  80h
		db    0
		db  14h
		db  88h
		db    6
		db  3Ah ; :
		db  80h
		db 0F4h
		db  0Ah
		db  88h
		db    2
		db  42h ; B
		db  80h
		db 0F4h
		db  0Ch
		db 0EFh
		db    8
		db 0F8h
		db  68h ; h
		db  80h
		db  80h
		db  14h
		db 0F2h
		db 0EFh
		db    8
		db 0F8h
		db  89h
		db  80h
		db  80h
		db  14h
		db 0F2h
		db 0EFh
		db    8
		db 0F0h
		db    8
		db    2
		db    3
		db    4
		db  80h
		db  0Ah
		db 0F8h
		db  68h ; h
		db  80h
		db  80h
		db  0Ah
		db 0F2h
		db 0EFh
		db    8
		db 0F0h
		db    8
		db    2
		db    3
		db    4
		db  80h
		db  0Ah
		db 0F8h
		db  89h
		db  80h
		db  80h
		db  0Ah
		db 0F2h
		db 0B1h
		db    5
		db  80h
		db  0Ah
		db 0B1h
		db    5
		db 0B1h
		db    6
		db 0B6h
		db    7
		db 0BAh
		db 0B8h
		db    5
		db  80h
		db  0Ah
		db 0B6h
		db    5
		db 0E7h
		db 0BDh
		db  14h
		db 0E7h
		db 0BDh
		db  14h
		db 0E7h
		db 0BDh
		db  14h
		db 0E7h
		db 0BDh
		db  14h
		db 0E7h
		db 0BDh
		db  14h
		db 0F9h
		db  80h
		db  14h
		db  80h
		db  80h
		db 0B1h
		db    6
		db 0B6h
		db    7
		db 0BAh
		db 0B8h
		db    5
		db  80h
		db  0Ah
		db 0B6h
		db    5
		db 0E7h
		db 0BDh
		db  14h
		db 0E7h
		db 0BDh
		db  14h
		db 0E7h
		db 0BDh
		db  14h
		db 0F9h
		db 0CFh
		db  81h
		db    2
		db    2
		db  88h
		db    5
		db 0B2h
		db  80h
		db    7
		db    6
		db  88h
		db    6
		db 0B2h
		db  80h
		db    0
		db    0
		db 0EFh
		db  0Ah
		db 0B1h
		db  10h
		db 0B1h
		db    8
		db 0B5h
		db    8
		db 0B1h
		db 0B5h
		db 0B8h
		db 0B5h
		db 0B8h
		db 0BDh
		db  30h ; 0
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    2
		db  88h
		db    5
		db 0D2h
		db  80h
		db    7
		db    2
		db  88h
		db    6
		db 0D2h
		db  80h
		db    0
		db    2
		db 0EFh
		db    9
		db 0B3h
		db  0Ch
		db 0B3h
		db    6
		db 0B3h
		db    6
		db 0B3h
		db  30h ; 0
		db 0B1h
		db  0Ah
		db 0B3h
		db 0B5h
		db 0B1h
		db 0B3h
		db 0B5h
		db 0B3h
		db  0Ch
		db 0B3h
		db    6
		db 0B3h
		db    6
		db 0B3h
		db  30h ; 0
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    2
		db  88h
		db    5
		db 0FCh
		db  80h
		db    7
		db    2
		db  88h
		db    6
		db 0FCh
		db  80h
		db    0
		db    2
		db 0EFh
		db    9
		db 0B6h
		db  10h
		db 0B6h
		db    8
		db 0B6h
		db 0B6h
		db 0B8h
		db  10h
		db 0B8h
		db    8
		db 0B8h
		db 0B8h
		db 0BAh
		db  30h ; 0
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db  17h
		db  81h
		db    0
		db    8
		db 0EFh
		db  0Ch
		db 0C0h
		db  30h ; 0
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    1
		db  88h
		db    5
		db  26h ; &
		db  81h
		db  20h
		db    8
		db 0EFh
		db  0Bh
		db 0A6h
		db  0Ah
		db 0A0h
		db 0F6h
		db  28h ; (
		db  81h
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    1
		db  88h
		db    5
		db  39h ; 9
		db  81h
		db    0
		db    8
		db 0EFh
		db  0Bh
		db 0A0h
		db  30h ; 0
		db 0E7h
		db 0F6h
		db  3Bh ; ;
		db  81h
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    1
		db  88h
		db    5
		db  4Ch ; L
		db  81h
		db    0
		db    8
		db 0EFh
		db  0Bh
		db 0B0h
		db  30h ; 0
		db 0E7h
		db 0F6h
		db  4Eh ; N
		db  81h
		db 0F2h
		db 0CFh
		db  81h
		db    2
		db    1
		db  88h
		db    5
		db  5Fh ; _
		db  81h
		db  13h
		db    8
		db 0EFh
		db  0Ch
		db 0A6h
		db  10h
		db 0A4h
		db    3
		db 0A5h
		db    3
		db 0F6h
		db  61h ; a
		db  81h
		db 0CFh
		db  81h
		db    2
		db    1
		db  88h
		db    5
		db  74h ; t
		db  81h
		db    0
		db    0
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db  7Fh ; 
		db  81h
		db    0
		db    8
		db 0EFh
		db  0Dh
		db 0F0h
		db    1
		db    1
		db  30h ; 0
		db  40h ; @
		db 0AEh
		db  20h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db  93h
		db  81h
		db  10h
		db    6
		db 0EFh
		db  0Eh
		db  99h
		db  18h
		db 0F2h
		db 0CFh
		db  81h
		db    1
		db    1
		db  88h
		db    5
		db 0A2h
		db  81h
		db    0
		db    8
		db 0EFh
		db  0Fh
		db  90h
		db    8
		db  91h
		db  92h
		db  93h
		db  94h
		db  95h
		db  96h
		db  97h
		db  98h
		db  99h
		db  9Ah
		db  9Bh
		db  9Ch
		db  9Dh
		db  9Eh
		db  9Fh
		db 0A0h
		db 0A1h
		db 0A2h
		db 0A3h
		db 0A4h
		db 0A5h
		db 0A6h
		db 0A7h
		db 0A8h
		db 0A9h
		db 0AAh
		db 0ABh
		db 0ACh
		db 0ADh
		db 0AEh
		db 0AFh
		db 0B0h
		db 0B1h
		db 0B2h
		db 0B3h
		db 0B4h
		db 0B5h
		db 0B6h
		db 0B7h
		db 0B8h
		db 0F2h
		db    7
		db  71h ; q
		db  74h ; t
		db  7Eh ; ~
		db  11h
		db  1Fh
		db  1Fh
		db  5Fh ; _
		db  1Fh
		db  14h
		db  14h
		db  10h
		db  14h
		db    7
		db  0Bh
		db  15h
		db    7
		db  27h ; '
		db  27h ; '
		db 0F6h
		db  27h ; '
		db  8Bh
		db  8Bh
		db  80h
		db  8Bh
		db  3Ch ; <
		db    2
		db    0
		db    2
		db    0
		db  18h
		db  18h
		db  0Dh
		db  14h
		db  10h
		db  18h
		db  0Ah
		db  0Dh
		db    0
		db    9
		db    0
		db    4
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db  16h
		db  80h
		db    2
		db  80h
		db  38h ; 8
		db  4Fh ; O
		db  4Bh ; K
		db  4Fh ; O
		db  30h ; 0
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db    0
		db    0
		db  0Fh
		db    0
		db    8
		db    8
		db  10h
		db  2Fh ; /
		db  1Fh
		db  2Fh ; /
		db  1Fh
		db  10h
		db    0
		db  1Ah
		db  80h
		db  3Ch ; <
		db    2
		db    0
		db    2
		db    0
		db  18h
		db  18h
		db  0Dh
		db  14h
		db  10h
		db  18h
		db  0Ah
		db  0Dh
		db    0
		db    9
		db    0
		db    4
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db  16h
		db  80h
		db    2
		db  80h
		db  3Ch ; <
		db    6
		db    8
		db    3
		db    2
		db  1Fh
		db  1Fh
		db    9
		db  1Fh
		db    0
		db    0
		db  0Ah
		db  0Dh
		db    0
		db    9
		db    0
		db    4
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Eh
		db  80h
		db    2
		db  80h
		db  3Bh ; ;
		db    3
		db    5
		db    3
		db    4
		db  18h
		db  18h
		db  18h
		db  18h
		db    8
		db    8
		db    8
		db  10h
		db    4
		db    4
		db    4
		db  4Ah ; J
		db  12h
		db  12h
		db  12h
		db  17h
		db  2Ch ; ,
		db  24h ; $
		db  28h ; (
		db  80h
		db  3Bh ; ;
		db    3
		db    5
		db    3
		db  0Fh
		db  18h
		db  18h
		db  18h
		db  18h
		db    8
		db    8
		db    8
		db  10h
		db    4
		db    4
		db    4
		db  4Ah ; J
		db  12h
		db  12h
		db  12h
		db  17h
		db    1
		db  24h ; $
		db  28h ; (
		db  80h
		db  24h ; $
		db  14h
		db  1Ch
		db  16h
		db  18h
		db  1Fh
		db  10h
		db  1Fh
		db  10h
		db    0
		db    0
		db    0
		db    0
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    1
		db  84h
		db  10h
		db  80h
		db  3Ah ; :
		db    1
		db    2
		db    1
		db    1
		db  51h ; Q
		db  0Eh
		db  0Eh
		db  55h ; U
		db    8
		db  16h
		db  0Ch
		db  12h
		db    0
		db    3
		db  0Ah
		db    3
		db  58h ; X
		db  0Ah
		db  48h ; H
		db  19h
		db  19h
		db  3Ch ; <
		db  2Dh ; -
		db  80h
		db  3Ah ; :
		db    1
		db    2
		db    0
		db    1
		db  51h ; Q
		db  0Eh
		db  0Eh
		db  51h ; Q
		db    8
		db  16h
		db  0Ch
		db  12h
		db    0
		db    3
		db  0Ah
		db    3
		db  58h ; X
		db  0Ah
		db  48h ; H
		db  19h
		db  19h
		db  3Ch ; <
		db  30h ; 0
		db  80h
		db  3Ah ; :
		db    1
		db    2
		db    1
		db    1
		db  51h ; Q
		db  0Eh
		db  0Eh
		db  55h ; U
		db    8
		db  16h
		db  0Ch
		db  12h
		db    0
		db    3
		db  0Ah
		db    3
		db  58h ; X
		db  0Ah
		db  48h ; H
		db  19h
		db  19h
		db  3Ch ; <
		db  2Dh ; -
		db  80h
		db    0
		db    4
		db  0Fh
		db    2
		db    1
		db  1Fh
		db  1Fh
		db  1Fh
		db  14h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db  20h
		db  26h ; &
		db  1Ch
		db  80h
		db  38h ; 8
		db    3
		db    3
		db    2
		db    6
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db    0
		db    0
		db    0
		db    2
		db    0
		db    0
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db  2Fh ; /
		db  20h
		db  18h
		db  80h
		db    4
		db  0Ah
		db    3
		db    2
		db    4
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db  0Ah
		db  10h
		db  0Ch
		db  0Dh
		db    0
		db  1Fh
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db  0Dh
		db  80h
		db  0Bh
		db  80h
		db    4
		db  0Bh
		db    6
		db    9
		db  0Eh
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db  0Ch
		db  10h
		db  0Ch
		db  10h
		db    0
		db    0
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db  2Fh ; /
		db  20h
		db  18h
		db  80h
		db    4
		db  0Ah
		db    4
		db  0Ah
		db  0Ah
		db  1Fh
		db  1Fh
		db  1Fh
		db  1Fh
		db  0Ah
		db  12h
		db  0Ch
		db  12h
		db    0
		db  1Fh
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db  0Dh
		db  82h
		db  0Bh
		db  82h
		db  3Ah ; :
		db    1
		db    2
		db    1
		db    1
		db  51h ; Q
		db  0Eh
		db  0Eh
		db  55h ; U
		db    8
		db  16h
		db  0Ch
		db  12h
		db    0
		db    3
		db  0Ah
		db    3
		db  58h ; X
		db  0Ah
		db  48h ; H
		db  19h
		db  20h
		db  3Ch ; <
		db  2Dh ; -
		db  80h
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E000:      db 0FFh		 ; DATA XREF: sub_526+2D↑w
byte_E001:      db 0FFh		 ; DATA XREF: sub_0+1B4↑w
				        ; sub_4D3+4F↑w ...
byte_E002:      db 0FFh		 ; DATA XREF: sub_0+1B7↑w
				        ; sub_582+5F↑r ...
byte_E003:      db 0FFh		 ; DATA XREF: sub_0+1BA↑w
				        ; sub_582+EA↑r ...
		db 0FFh
		db 0FFh
byte_E006:      db 0FFh		 ; DATA XREF: sub_0+1AF↑w
				        ; sub_829+9A↑r ...
		db 0FFh
byte_E008:      db 0FFh		 ; DATA XREF: sub_0+6E↑r
				        ; sub_0+8B↑r ...
		db 0FFh
		db 0FFh
byte_E00B:      db 0FFh		 ; DATA XREF: sub_3F9+87↑r
				        ; sub_3F9+8E↑w ...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E014:      db 0FFh		 ; DATA XREF: sub_4B2↑r
				        ; sub_4B2+5↑w ...
byte_E015:      db 0FFh		 ; DATA XREF: sub_1A83+4↑w
				        ; sub_1A83+14↑r ...
byte_E016:      db 0FFh		 ; DATA XREF: sub_0+1A7↑w
				        ; sub_0+1D1↑r ...
word_E017:      dw 0FFFFh               ; DATA XREF: sub_0+262↑w
				        ; sub_0+2AC↑w ...
word_E019:      dw 0FFFFh               ; DATA XREF: sub_0+268↑w
				        ; sub_0+2B2↑w ...
word_E01B:      dw 0FFFFh               ; DATA XREF: sub_0+26E↑w
				        ; sub_0+2B8↑w ...
word_E01D:      dw 0FFFFh               ; DATA XREF: sub_0+274↑w
				        ; sub_0+2BE↑w ...
word_E01F:      dw 0FFFFh               ; DATA XREF: sub_0+27A↑w
				        ; sub_0+2C4↑w ...
byte_E021:      db 0FFh		 ; DATA XREF: sub_1A83+D↑w
				        ; sub_1AEE↑r
byte_E022:      db 0FFh		 ; DATA XREF: sub_1A83+1E↑w
				        ; sub_1AFA:loc_1B03↑r
byte_E023:      db 0FFh		 ; DATA XREF: sub_1A83+11↑w
				        ; sub_1AEE+4↑r
byte_E024:      db 0FFh		 ; DATA XREF: sub_1A83+22↑w
				        ; sub_1AFA+D↑r
byte_E025:      db 0FFh		 ; DATA XREF: sub_1A83+32↑w
				        ; sub_1AFA↑r
byte_E026:      db 0FFh		 ; DATA XREF: sub_2FF+2C↑w
byte_E027:      db 0FFh		 ; DATA XREF: sub_2FF+2F↑w
byte_E028:      db 0FFh		 ; DATA XREF: sub_2FF+98↑w
byte_E029:      db 0FFh		 ; DATA XREF: sub_2FF+9B↑w
byte_E02A:      db 0FFh		 ; DATA XREF: sub_E6B+1↑w
				        ; sub_EC8+29↑w ...
byte_E02B:      db 0FFh		 ; DATA XREF: sub_2FF+65↑w
				        ; sub_2FF+CD↑w ...
byte_E02C:      db 0FFh		 ; DATA XREF: sub_4D3+2A↑w
				        ; sub_BAB↑r ...
word_E02D:      dw 0FFFFh               ; DATA XREF: sub_1B32+1↑r
				        ; sub_1B32+1A↑w
word_E02F:      dw 0FFFFh               ; DATA XREF: sub_0+1E1↑w
				        ; sub_179E+19D↑r ...
		db 0FFh
		db 0FFh
byte_E033:      db 0FFh		 ; DATA XREF: sub_0+21D↑w
				        ; sub_0:loc_249↑r ...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E038:      db 0FFh		 ; DATA XREF: sub_1F6+B↑w
				        ; sub_6AA+F↑r
byte_E039:      db 0FFh		 ; DATA XREF: sub_0+22D↑w
				        ; sub_0+23A↑w ...
byte_E03A:      db 0FFh		 ; DATA XREF: sub_1F6↑r
byte_E03B:      db 0FFh		 ; DATA XREF: sub_1F6+4↑r
byte_E03C:      db 0FFh		 ; DATA XREF: sub_3F9:loc_456↑r
				        ; sub_3F9+66↑w ...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E050:      db 0FFh		 ; DATA XREF: sub_0+220↑w
				        ; sub_0+253↑w ...
		db 0FFh
byte_E052:      db 0FFh		 ; DATA XREF: sub_C74+B↑r
byte_E053:      db 0FFh		 ; DATA XREF: sub_2FF+32↑r
				        ; sub_2FF+41↑w ...
		db 0FFh
		db 0FFh
byte_E056:      db 0FFh		 ; DATA XREF: sub_2FF+D↑r
				        ; sub_2FF+54↑w ...
byte_E057:      db 0FFh		 ; DATA XREF: sub_0+1BF↑w
				        ; sub_2FF+3B↑w ...
byte_E058:      db 0FFh		 ; DATA XREF: sub_829+23↑w
byte_E059:      db 0FFh		 ; DATA XREF: sub_2FF+11↑r
				        ; sub_2FF+57↑w ...
byte_E05A:      db 0FFh		 ; DATA XREF: sub_2FF+20↑r
				        ; sub_2FF+5D↑w
		db 0FFh
byte_E05C:      db 0FFh		 ; DATA XREF: sub_2FF+3E↑w
				        ; sub_2FF+60↑w
byte_E05D:      db 0FFh		 ; DATA XREF: sub_F89+AB9↑w
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E080:      db 0FFh		 ; DATA XREF: sub_0+223↑w
				        ; sub_0+256↑w ...
		db 0FFh
byte_E082:      db 0FFh		 ; DATA XREF: sub_C74+27↑r
byte_E083:      db 0FFh		 ; DATA XREF: sub_2FF+9E↑r
				        ; sub_2FF+AB↑w ...
		db 0FFh
		db 0FFh
byte_E086:      db 0FFh		 ; DATA XREF: sub_2FF+7D↑r
				        ; sub_2FF+BC↑w ...
byte_E087:      db 0FFh		 ; DATA XREF: sub_0+1C4↑w
				        ; sub_2FF+A5↑w ...
byte_E088:      db 0FFh		 ; DATA XREF: sub_829+6C↑w
byte_E089:      db 0FFh		 ; DATA XREF: sub_2FF+81↑r
				        ; sub_2FF+BF↑w ...
byte_E08A:      db 0FFh		 ; DATA XREF: sub_2FF+8E↑r
				        ; sub_2FF+C5↑w
		db 0FFh
byte_E08C:      db 0FFh		 ; DATA XREF: sub_2FF+A8↑w
				        ; sub_2FF+C8↑w
byte_E08D:      db 0FFh		 ; DATA XREF: sub_F89+ABC↑w
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E129:      db 0FFh		 ; DATA XREF: sub_2FF↑r
				        ; sub_2FF+A↑w
		db 0FFh
byte_E12B:      db 0FFh		 ; DATA XREF: sub_582+13↑r
				        ; sub_582+47↑r ...
		db 0FFh
byte_E12D:      db 0FFh		 ; DATA XREF: sub_582+17↑r
				        ; sub_582+D2↑r
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E139:      db 0FFh		 ; DATA XREF: sub_2FF:loc_371↑r
				        ; sub_2FF+7A↑w
		db 0FFh
byte_E13B:      db 0FFh		 ; DATA XREF: sub_582+4B↑r
				        ; sub_582+A2↑r
		db 0FFh
byte_E13D:      db 0FFh		 ; DATA XREF: sub_582+A6↑r
				        ; sub_582+D6↑r ...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E203:      db 0FFh		 ; DATA XREF: sub_582+F↑r
				        ; sub_582:loc_5AE↑r
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E209:      db 0FFh		 ; DATA XREF: sub_582+9E↑r
				        ; sub_582:loc_63B↑r
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
word_E214:      dw 0FFFFh               ; DATA XREF: sub_3F9+6F↑w
				        ; sub_3F9:loc_46C↑r ...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E21C:      db 0FFh		 ; DATA XREF: sub_0:loc_23E↑r
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_E300:      db 0FFh		 ; DATA XREF: sub_3DA+18↑w
byte_E301:      db 0FFh		 ; DATA XREF: sub_3DA+14↑w
				        ; sub_179E+1BD↑r
byte_E302:      db 0FFh		 ; DATA XREF: sub_F3A+1C↑r
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
word_F002:      dw 0FFFFh               ; DATA XREF: sub_4003+1D8↑r
				        ; sub_4003+3FE↑r ...
word_F004:      dw 0FFFFh               ; DATA XREF: sub_458F↑r
				        ; ROM:4671↑r ...
byte_F006:      db 0FFh		 ; DATA XREF: sub_458F+F↑r
byte_F007:      db 0FFh		 ; DATA XREF: sub_4003+41A↑w
byte_F008:      db 0FFh		 ; DATA XREF: sub_4003+4D↑r
				        ; sub_4003+41D↑w
byte_F009:      db 0FFh		 ; DATA XREF: sub_44EA+2D↑w
				        ; sub_44EA+3A↑w
byte_F00A:      db 0FFh		 ; DATA XREF: sub_F3A↑r
				        ; sub_F3A+21↑w
		db 0FFh
		db 0FFh
byte_F00D:      db 0FFh		 ; DATA XREF: ROM:44D6↑w
byte_F00E:      db 0FFh		 ; DATA XREF: ROM:44DE↑w
byte_F00F:      db 0FFh		 ; DATA XREF: ROM:44DB↑w
		db 0FFh
byte_F011:      db 0FFh		 ; DATA XREF: ROM:loc_4682↑w
		db 0FFh
		db 0FFh
		db 0FFh
byte_F015:      db 0FFh		 ; DATA XREF: ROM:4713↑w
byte_F016:      db 0FFh		 ; DATA XREF: ROM:loc_46E6↑w
		db 0FFh
byte_F018:      db 0FFh		 ; DATA XREF: sub_4003+46A↑w
				        ; sub_44EA+20↑r ...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_F020:      db 0FFh		 ; DATA XREF: sub_4D3+2F↑r
				        ; sub_4003+2D2↑w ...
byte_F021:      db 0FFh		 ; DATA XREF: sub_4003+2BB↑r
				        ; sub_4003+2CA↑w ...
byte_F022:      db 0FFh		 ; DATA XREF: sub_4003:loc_401C↑r
				        ; sub_4003+36↑r ...
byte_F023:      db 0FFh		 ; DATA XREF: sub_4003+1D↑r
				        ; sub_4003+39↑w
byte_F024:      db 0FFh		 ; DATA XREF: sub_4003+24↑w
				        ; sub_4003+3BD↑w
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
word_F02A:      dw 0FFFFh               ; DATA XREF: ROM:47C2↑w
word_F02C:      dw 0FFFFh               ; DATA XREF: ROM:47C8↑w
word_F02E:      dw 0FFFFh               ; DATA XREF: ROM:47CE↑w
word_F030:      dw 0FFFFh               ; DATA XREF: ROM:47D4↑w
		db 0FFh
word_F033:      dw 0FFFFh               ; DATA XREF: sub_4003+420↑w
				        ; sub_4003+43A↑r ...
word_F035:      dw 0FFFFh               ; DATA XREF: sub_4003+426↑w
				        ; sub_4003+42E↑r ...
word_F037:      dw 0FFFFh               ; DATA XREF: sub_4003:loc_434F↑r
				        ; sub_4003+40D↑w
word_F039:      dw 0FFFFh               ; DATA XREF: sub_4003+47F↑w
				        ; sub_4003+4C3↑r
		db 0FFh
byte_F03C:      db 0FFh		 ; DATA XREF: ROM:46D4↑w
				        ; ROM:46DA↑w
		db 0FFh
		db 0FFh
byte_F03F:      db 0FFh		 ; DATA XREF: sub_4003:updatesmps↑r
				        ; sub_4003+2D↑w ...
byte_F040:      db 0FFh		 ; DATA XREF: ROM:44E2↑w
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
byte_F160:      db 0FFh		 ; DATA XREF: ROM:44E5↑w
				        ; sub_48E1+62↑r
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		align $8000
; end of 'ROM'


		end
