programa
{	
	inclua biblioteca Graficos-->g
	inclua biblioteca Util-->u
	inclua biblioteca Teclado-->t
	inclua biblioteca Matematica-->m
	inclua biblioteca Sons-->s
	inclua biblioteca Texto-->x
	inclua biblioteca Tipos-->p
	inclua biblioteca Arquivos-->a

	const real tam_caracter = 5.5

	inteiro fundo = g.carregar_imagem("./Graficos/fundo.png")
	inteiro fundoYp = 0
	real fundoXp = 0.0
	real fundospeed = 0.02
	
	inteiro per = g.carregar_imagem("./Graficos/per.png")
	inteiro perXp = 5, perYp = 268
	inteiro perL = 32, perA = 32
	inteiro perspeed = 1
	real perlaserdano
	real perbodydano
	real perblastdano
	
	inteiro metp = g.carregar_imagem("./Graficos/met.png")
	inteiro metm = g.carregar_imagem("./Graficos/met_medio.png")
	inteiro metg = g.carregar_imagem("./Graficos/met_grande.png")
	inteiro metYp = u.sorteia(-16, 584)
	inteiro met_tam = u.sorteia(1, 3)
	inteiro metYp2 = u.sorteia(-16, 584)
	inteiro met_tam2 = u.sorteia(1, 3)
	inteiro metYp3 = u.sorteia(-16, 584)
	inteiro met_tam3 = u.sorteia(1, 3)
	inteiro metYp4 = u.sorteia(-16, 584)
	inteiro met_tam4 = u.sorteia(1, 3)
	inteiro metYp5 = u.sorteia(-16, 584)
	inteiro met_tam5 = u.sorteia(1, 3)
	inteiro metL, metA, metL2, metA2, metL3, metA3, metL4, metA4, metL5, metA5
	real metlife = met_tam+0.0, metlife2 = met_tam2+0.0, metlife3 = met_tam3+0.0, metlife4 = met_tam4+0.0, metlife5 = met_tam5+0.0
	real metspeed = 0.5
	real metspeed2 = 0.75
	real metspeed3 = 0.5
	real metspeed4 = 1.25
	real metspeed5 = 1.0
	real metmodspeed = 0.00004
	real metmodspeed2 = 0.00004
	real metmodspeed3 = 0.00008
	real metmodspeed4 = 0.000008
	real metmodspeed5 = 0.00012
	real metXp = 800.0
	real metXp2 = 800.0
	real metXp3 = 800.0
	real metXp4 = 800.0
	real metXp5 = 800.0

	inteiro telafim = g.carregar_imagem("./Graficos/telafim.png")
	inteiro textopiscar = 400

	inteiro vida_cheia = g.carregar_imagem("./Graficos/full_heart.png")
	inteiro vida_vazia = g.carregar_imagem("./Graficos/empty_heart.png")
	inteiro vida = 3
	
	inteiro medkit = g.carregar_imagem("./Graficos/medkit.png")
	inteiro medkitYp = u.sorteia(-12, 588)
	inteiro medkitL, medkitA
	real medkitXp = 1600.0
	real medkitspeed = 0.6
	real medkitspeedmod = 0.000002

	inteiro escudo = g.carregar_imagem("./Graficos/shield.png")

	inteiro pontuacao_inteira = 0
	cadeia pontuacao
	real pontuacao_real = 0.0
	real dificuldade = 1.0 

	inteiro laser_per = g.carregar_imagem("./Graficos/laser.png")
	inteiro laser_perXp = -20, laser_perYp = -20
	inteiro laser_perL = 18, laser_perA = 18
	logico laser_per_on

	inteiro laser2_perXp = -20, laser2_perYp = -20
	inteiro laser2_perL = 18, laser2_perA = 18
	logico laser2_per_on

	inteiro laser3_perXp = -20, laser3_perYp = -20
	inteiro laser3_perL = 18, laser3_perA = 18
	logico laser3_per_on

	inteiro laser4_perXp = -20, laser4_perYp = -20
	inteiro laser4_perL = 18, laser4_perA = 18
	logico laser4_per_on

	inteiro laser5_perXp = -20, laser5_perYp = -20
	inteiro laser5_perL = 18, laser5_perA = 18
	logico laser5_per_on
	
	inteiro laser6_perXp = -20, laser6_perYp = -20
	inteiro laser6_perL = 18, laser6_perA = 18
	logico laser6_per_on

	inteiro laser_machineguncounter = 0
	inteiro laser_to_blastcounter = 0

	inteiro blast_per = g.carregar_imagem("./Graficos/blast.png")
	inteiro blast_perXp = -24, blast_perYp = -24
	inteiro blast_perL = 24, blast_perA = 24
	logico blast_per_on

	inteiro boss = g.carregar_imagem("./Graficos/boss.png")
	inteiro bossXinteiro
	inteiro bossYinteiro
	inteiro bossL = 128, bossA = 128
	inteiro boss_contador1 = 500, boss_contador2 = 750, boss_contador3 = 1000
	real bosslife = 30.0
	real bossXp = 850.0
	real bossYp = 236.0

	inteiro boss_lifebar = g.carregar_imagem("./Graficos/boss_lifebar.png")
	inteiro cor_bossvida1 = g.criar_cor(178, 0, 0)
	inteiro cor_bossvida2 = g.criar_cor(204, 0, 0)
	inteiro cor_bossvida3 = g.criar_cor(229, 0, 0)
	inteiro cor_bossvida4 = g.criar_cor(255, 0, 0)
	inteiro cor_bossvida5 = g.criar_cor(255, 15, 15)
	inteiro cor_bossvida6 = g.criar_cor(255, 30, 30)
	inteiro cor_bossvida7 = g.criar_cor(255, 45, 45)
	inteiro cor_bossvida_borda = g.criar_cor(135, 54, 0)
	inteiro cor_cinza = g.criar_cor(180, 180, 180)

	inteiro boss_laser_reto = g.carregar_imagem("./Graficos/boss-laser-reto.png")
	inteiro boss_laser_diagonal_up = g.carregar_imagem("./Graficos/boss-laser-diagonal-up.png")
	inteiro boss_laser_diagonal_down = g.carregar_imagem("./Graficos/boss-laser-diagonal-down.png")
	inteiro boss_ball = g.carregar_imagem("./Graficos/boss-ball.png")

	logico laserR1_on, laserR2_on, laserR3_on, laserR4_on
	inteiro boss_laser_retoL = 30, boss_laser_retoA = 8
	inteiro boss_laser_reto2L = 30, boss_laser_reto2A = 8
	inteiro boss_laser_reto3L = 30, boss_laser_reto3A = 8
	inteiro boss_laser_reto4L = 30, boss_laser_reto4A = 8
	real boss_laser_retoXp = -32.0, boss_laser_retoYp = -32.0
	real boss_laser_reto2Xp = -32.0, boss_laser_reto2Yp = -32.0
	real boss_laser_reto3Xp = -32.0, boss_laser_reto3Yp = -32.0
	real boss_laser_reto4Xp = -32.0, boss_laser_reto4Yp = -32.0
	real laser_retospeed = 1.5

	logico laserD1_on, laserD2_on
	inteiro boss_laser_diagonalL = 32, boss_laser_diagonalA = 32
	inteiro boss_laser_diagonal2L = 32, boss_laser_diagonal2A = 32
	real boss_laser_diagonalXp = -32.0, boss_laser_diagonalYp = -32.0
	real boss_laser_diagonal2Xp = -32.0, boss_laser_diagonal2Yp = -32.0
	real laser_diagonalspeed = 1.5

	logico ball_on
	inteiro boss_ballL = 64, boss_ballA = 64
	real boss_ballXp = -64.0, boss_ballYp = -64.0
	real ballspeed = 0.75

	inteiro dmgupgrade = g.carregar_imagem("./Graficos/dmgup.png")
	inteiro dmgupL = 24, dmgupA = 24
	inteiro dmgup_chance = u.sorteia(1, 60), dmgupYp = u.sorteia(0, 576)
	inteiro dmgupgradecounter = 0
	real dmgupspeed = 0.6
	real dmgupspeedmod = 0.000002
	real dmgupXp = 800.0

	inteiro speedupgrade = g.carregar_imagem("./Graficos/speedup.png")
	inteiro speedupL = 24, speedupA = 24
	inteiro speedup_chance = u.sorteia(1, 60), speedupYp = u.sorteia(0, 576)
	inteiro speedupgradecounter = 0
	real speedupspeed = 0.6
	real speedupspeedmod = 0.000002
	real speedupXp = 800.0

	inteiro lifeupgrade = g.carregar_imagem("./Graficos/lifeup.png")
	inteiro lifeupL = 24, lifeupA = 24
	inteiro lifeup_chance = u.sorteia(1, 60), lifeupYp = u.sorteia(0, 576)
	inteiro lifeupgradecounter = 0
	real lifeupspeed = 0.6
	real lifeupspeedmod = 0.000002
	real lifeupXp = 800.0

	inteiro enemy = g.carregar_imagem("./Graficos/enemy.png")
	inteiro enemy1L = 64, enemy1A = 64, enemy2L = 64, enemy2A = 64
	inteiro enemy1_contador1 = 1000, enemy1_contador2 = 1700, enemy2_contador1 = 1000, enemy2_contador2 = 1700
	real enemy1life = 9.0, enemy2life = 9.0
	real enemy1Xp = 850.0, enemy2Xp = 850.0
	real enemy1Yp = u.sorteia(0, 536) + 0.0, enemy2Yp = u.sorteia(0, 536) + 0.0
	real enemyspeed = 0.5

	inteiro enemy_laser_diagonal_up = g.carregar_imagem("./Graficos/enemy-laser-diagonal-up.png")
	inteiro enemy_laser_diagonal_down = g.carregar_imagem("./Graficos/enemy-laser-diagonal-down.png")
	inteiro enemylaserspeed = 2

	logico enemy1_laserreto1_on, enemy1_laserreto2_on, enemy1_laserdiagonal1_on, enemy1_laserdiagonal2_on
	inteiro enemy1_laserreto1Xp = -32, enemy1_laserreto1Yp = -32, enemy1_laserreto1L = 30, enemy1_laserreto1A = 8
	inteiro enemy1_laserreto2Xp = -32, enemy1_laserreto2Yp = -32, enemy1_laserreto2L = 30, enemy1_laserreto2A = 8
	inteiro enemy1_laserdiagonal1Xp = -32, enemy1_laserdiagonal1Yp = -32, enemy1_laserdiagonal1L = 32, enemy1_laserdiagonal1A = 16
	inteiro enemy1_laserdiagonal2Xp = -32, enemy1_laserdiagonal2Yp = -32, enemy1_laserdiagonal2L = 32, enemy1_laserdiagonal2A = 16

	logico enemy2_laserreto1_on, enemy2_laserreto2_on, enemy2_laserdiagonal1_on, enemy2_laserdiagonal2_on
	inteiro enemy2_laserreto1Xp = -32, enemy2_laserreto1Yp = -32, enemy2_laserreto1L = 30, enemy2_laserreto1A = 8
	inteiro enemy2_laserreto2Xp = -32, enemy2_laserreto2Yp = -32, enemy2_laserreto2L = 30, enemy2_laserreto2A = 8
	inteiro enemy2_laserdiagonal1Xp = -32, enemy2_laserdiagonal1Yp = -32, enemy2_laserdiagonal1L = 32, enemy2_laserdiagonal1A = 16
	inteiro enemy2_laserdiagonal2Xp = -32, enemy2_laserdiagonal2Yp = -32, enemy2_laserdiagonal2L = 32, enemy2_laserdiagonal2A = 16

	inteiro lootcounter = 0

	inteiro machinegun = g.carregar_imagem("./Graficos/machinegun.png")
	inteiro machinegunL = 36, machinegunA = 36
	inteiro machinegun_chance = u.sorteia(1, 120)
	inteiro machinegunXfinal
	logico machinegun_text_on = falso
	real machinegunYfinal
	real machinegunXp = 800.0, machinegunYp = u.sorteia(0, 564)+0.0
	real machinegunspeed = 0.6
	
	caracter arma = 'b'
	caracter armas_atuais[] = {'b','b'}
	inteiro nome_armascontador = 0
	inteiro arma_atual = 0
	inteiro armacontador = 0
	logico arma_machinegun = falso

	logico god_mode_on = falso
	logico comecar = falso
	logico exitgame = falso
	inteiro contadormenu = 0
	
	logico exitoptions = verdadeiro
	inteiro contadoroptions = 0
	
	logico exitgameplayoptions = verdadeiro
	inteiro contadorgameplayoptions = 0
	
	logico exitaudiooptions = verdadeiro
	inteiro contadoraudiooptions = 0
	inteiro contadoraudiooptions2 = 0
	
	logico exitcontroloptions = verdadeiro
	inteiro contadorcontroloptions = 0
	inteiro contadorcontroloptions2 = 0
	
	inteiro seta_esquerda = g.carregar_imagem("./Graficos/seta_esquerda.png")
	inteiro seta_direita = g.carregar_imagem("./Graficos/seta_direita.png")

	cadeia delay = "off"

	inteiro move_up = t.TECLA_SETA_ACIMA
	inteiro move_down = t.TECLA_SETA_ABAIXO
	inteiro move_right = t.TECLA_SETA_DIREITA
	inteiro move_left = t.TECLA_SETA_ESQUERDA
	inteiro shoot = t.TECLA_ESPACO
	inteiro switch_weapon = t.TECLA_Q
	inteiro save_tecla = t.TECLA_S
	inteiro menu_tecla = t.TECLA_ESC

	inteiro progresso = 0, contadorprogresso = 0
	inteiro savestate1, savestate2, savestate3
	inteiro atualstate = 0
	inteiro contadordesenharsave = 200
	logico desenhar_save = falso

	inteiro savestate1vida, savestate1lifeupcounter, savestate1speedupcounter, savestate1dmgupcounter, savestate1progresso, savestate1score
	inteiro savestate2vida, savestate2lifeupcounter, savestate2speedupcounter, savestate2dmgupcounter, savestate2progresso, savestate2score
	inteiro savestate3vida, savestate3lifeupcounter, savestate3speedupcounter, savestate3dmgupcounter, savestate3progresso, savestate3score

	inteiro config

	inteiro newgamecontador = 0, loadgamecontador = 0
	logico exitnewgame = verdadeiro, exitloadgame = verdadeiro

	inteiro confirmacaocontador = 0
	logico exitconfirmacao = verdadeiro, resposta


	funcao god_mode() {
		se(t.tecla_pressionada(t.TECLA_C) ou god_mode_on == verdadeiro) {
			god_mode_on = verdadeiro
			texto(falso, "Power Green", "vermelho", 32.0, 400, -15, "GOD MODE ON", 0, 0, "")
		}
	}

	funcao salvar() {
		escolha(atualstate) {
			caso 1:
			savestate1 = a.abrir_arquivo("./savestate1.txt", a.MODO_ESCRITA)
			a.escrever_linha(p.inteiro_para_cadeia(vida, 10), savestate1)
			a.escrever_linha(p.inteiro_para_cadeia(lifeupgradecounter, 10), savestate1)
			a.escrever_linha(p.inteiro_para_cadeia(speedupgradecounter, 10), savestate1)
			a.escrever_linha(p.inteiro_para_cadeia(dmgupgradecounter, 10), savestate1)
			a.escrever_linha(p.inteiro_para_cadeia(progresso, 10), savestate1)
			a.escrever_linha(p.inteiro_para_cadeia(pontuacao_inteira, 10), savestate1)
			a.escrever_linha(p.caracter_para_cadeia(armas_atuais[0]), savestate1)
			a.escrever_linha(p.caracter_para_cadeia(armas_atuais[1]), savestate1)
			a.fechar_arquivo(savestate1)
			desenhar_save = verdadeiro
			pare
			caso 2:
			savestate2 = a.abrir_arquivo("./savestate2.txt", a.MODO_ESCRITA)
			a.escrever_linha(p.inteiro_para_cadeia(vida, 10), savestate2)
			a.escrever_linha(p.inteiro_para_cadeia(lifeupgradecounter, 10), savestate2)
			a.escrever_linha(p.inteiro_para_cadeia(speedupgradecounter, 10), savestate2)
			a.escrever_linha(p.inteiro_para_cadeia(dmgupgradecounter, 10), savestate2)
			a.escrever_linha(p.inteiro_para_cadeia(progresso, 10), savestate2)
			a.escrever_linha(p.inteiro_para_cadeia(pontuacao_inteira, 10), savestate2)
			a.escrever_linha(p.caracter_para_cadeia(armas_atuais[0]), savestate2)
			a.escrever_linha(p.caracter_para_cadeia(armas_atuais[1]), savestate2)
			a.fechar_arquivo(savestate2)
			desenhar_save = verdadeiro
			pare
			caso 3:
			savestate3 = a.abrir_arquivo("./savestate3.txt", a.MODO_ESCRITA)
			a.escrever_linha(p.inteiro_para_cadeia(vida, 10), savestate3)
			a.escrever_linha(p.inteiro_para_cadeia(lifeupgradecounter, 10), savestate3)
			a.escrever_linha(p.inteiro_para_cadeia(speedupgradecounter, 10), savestate3)
			a.escrever_linha(p.inteiro_para_cadeia(dmgupgradecounter, 10), savestate3)
			a.escrever_linha(p.inteiro_para_cadeia(progresso, 10), savestate3)
			a.escrever_linha(p.inteiro_para_cadeia(pontuacao_inteira, 10), savestate3)
			a.escrever_linha(p.caracter_para_cadeia(armas_atuais[0]), savestate3)
			a.escrever_linha(p.caracter_para_cadeia(armas_atuais[1]), savestate3)
			a.fechar_arquivo(savestate3)
			desenhar_save = verdadeiro
			pare
		}
	}

	funcao desenhar_jogosalvo() {
		se(desenhar_save == verdadeiro e contadordesenharsave >= 0) {
			texto(falso,"Power Green","branco",32.0,perXp - 60,perYp - 50, "Jogo salvo!",0,0,"")
			contadordesenharsave--
		} senao {
			contadordesenharsave = 200
			desenhar_save = falso
		}
	}

	funcao load() {
		escolha(atualstate) {
			caso 1 :
			savestate1 = a.abrir_arquivo("./savestate1.txt", a.MODO_LEITURA)
			vida = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			lifeupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			speedupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			dmgupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			progresso = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			pontuacao_real = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10) + 0.0
			armas_atuais[0] = p.cadeia_para_caracter(a.ler_linha(savestate1))
			armas_atuais[1] = p.cadeia_para_caracter(a.ler_linha(savestate1))
			pontuacao_inteira = pontuacao_real
			se(pontuacao_inteira >= 0 e pontuacao_inteira < 2000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 2000 e pontuacao_inteira < 4000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 4000 e pontuacao_inteira < 6000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 6000 e pontuacao_inteira < 8000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao {
				dificuldade = pontuacao_inteira/2000 + 1.0
			}
			a.fechar_arquivo(savestate1)
			pare
			caso 2 :
			savestate2 = a.abrir_arquivo("./savestate2.txt", a.MODO_LEITURA)
			vida = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			lifeupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			speedupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			dmgupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			progresso = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			pontuacao_real = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10) + 0.0
			armas_atuais[0] = p.cadeia_para_caracter(a.ler_linha(savestate1))
			armas_atuais[1] = p.cadeia_para_caracter(a.ler_linha(savestate1))
			pontuacao_inteira = pontuacao_real
			se(pontuacao_inteira >= 0 e pontuacao_inteira < 2000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 2000 e pontuacao_inteira < 4000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 4000 e pontuacao_inteira < 6000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 6000 e pontuacao_inteira < 8000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao {
				dificuldade = pontuacao_inteira/2000 + 1.0
			}
			a.fechar_arquivo(savestate2)
			pare
			caso 3 :
			savestate3 = a.abrir_arquivo("./savestate3.txt", a.MODO_LEITURA)
			vida = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			lifeupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			speedupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			dmgupgradecounter = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			progresso = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			pontuacao_real = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10) + 0.0
			armas_atuais[0] = p.cadeia_para_caracter(a.ler_linha(savestate1))
			armas_atuais[1] = p.cadeia_para_caracter(a.ler_linha(savestate1))
			pontuacao_inteira = pontuacao_real
			se(pontuacao_inteira >= 0 e pontuacao_inteira < 2000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 2000 e pontuacao_inteira < 4000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 4000 e pontuacao_inteira < 6000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao se(pontuacao_inteira >= 6000 e pontuacao_inteira < 8000) {
				dificuldade = pontuacao_inteira/2000 + 1.0
			} senao {
				dificuldade = pontuacao_inteira/2000 + 1.0
			}
			a.fechar_arquivo(savestate3)
			pare
		}
	}

	funcao save_config() {
		config = a.abrir_arquivo("./config.txt", a.MODO_ESCRITA)
		a.escrever_linha(delay, config)
		a.fechar_arquivo(config)
	}

	funcao load_config() {
		config = a.abrir_arquivo("./config.txt", a.MODO_LEITURA)
		delay = a.ler_linha(config)
		a.fechar_arquivo(config)
	}

	funcao escolha_arma() {
		se(arma_machinegun == verdadeiro) {
			armas_atuais[1] = 'm'
		}
		se(t.tecla_pressionada(switch_weapon)) {
			se(armacontador == 0) {
				arma_atual = arma_atual + 1
				se(arma_atual == 2) {
					arma_atual = 0
				}
			}
			armacontador++
		} senao {
			armacontador = 0
		}
		arma = armas_atuais[arma_atual]
		escolha(arma) {
			caso 'b':
			arma_Basic()
			pare
			caso 'm':
			arma_Machinegun()
			pare
		}
	}
	
	funcao dano_per() {
		escolha(arma) {
			caso 'b':
			perlaserdano = 1.0 + (dmgupgradecounter*0.25)
			perbodydano = 2.0 + (dmgupgradecounter*1)
			perblastdano = 3.0 + (dmgupgradecounter*0.75)
			pare
			caso 'm':
			perlaserdano = 0.3 + (dmgupgradecounter*0.075)
			perbodydano = 2.0 + (dmgupgradecounter*1)
			perblastdano = 0.0 + (dmgupgradecounter*0)
			pare
		}
	}

	funcao resetar(cadeia tipo) {
			se(tipo == "boss") {
				medkitXp = u.sorteia(2400, 4800) + 0.0
				dificuldade = 2.0
			}
			se(tipo == "normal" ou tipo == "total") {
				medkitXp = u.sorteia(1600, 3200) + 0.0
				dificuldade = 1.0
				bossXp = 850.0
			}
			se(tipo == "normal sem dificuldade") {
				medkitXp = u.sorteia(1600, 3200) + 0.0
				bossXp = 850.0
			}
			se(tipo == "total") {
				vida = 3
				lootcounter = 0
				arma = 'b'
				armas_atuais[0] = 'b'
				armas_atuais[1] = 'b'
				nome_armascontador = 0
				arma_atual = 0
				armacontador = 0
				dmgupgradecounter = 0
				speedupgradecounter = 0
				lifeupgradecounter = 0
				perspeed = 1
				perXp = 5
				perYp = 268
				pontuacao_real = 0.0
				pontuacao_inteira = 0
				god_mode_on = falso
			}
			laser_per_on = falso
			ball_on = falso
			laserD1_on = falso
			laserD2_on = falso
			laserR1_on = falso
			laserR2_on = falso
			laserR3_on = falso
			laserR4_on = falso
			boss_laser_retoXp = -32.0 
			boss_laser_retoYp = -32.0
			boss_laser_reto2Xp = -32.0 
			boss_laser_reto2Yp = -32.0
			boss_laser_reto3Xp = -32.0 
			boss_laser_reto3Yp = -32.0
			boss_laser_reto4Xp = -32.0 
			boss_laser_reto4Yp = -32.0
			boss_laser_diagonalXp = -32.0
			boss_laser_diagonalYp = -32.0
			boss_laser_diagonal2Xp = -32.0
			boss_laser_diagonal2Yp = -32.0
			boss_ballXp = -64.0
			boss_ballYp = -64.0
			textopiscar = 400
			metspeed = 0.5
			metspeed2 = 0.75
			metspeed3 = 0.5
			metspeed4 = 1.25
			metspeed5 = 1.0
			metXp = 800.0
			metXp2 = 800.0
			metXp3 = 800.0
			metXp4 = 800.0
			metXp5 = 800.0
			laser_retospeed = 1.5
			laser_diagonalspeed = 1.5
			ballspeed = 0.75
			medkitspeed = 0.6
			dmgupspeed = 0.6
			dmgupXp = 800.0
			speedupspeed = 0.6
			speedupXp = 800.0
			lootcounter = 0
	}
	
	funcao texto(logico setas, cadeia fonte_texto, cadeia cor_texto, real tam_texto, inteiro deslocamentoX1, inteiro deslocamentoY1, cadeia texto1, inteiro deslocamentoX2, inteiro deslocamentoY2, cadeia texto2) {
		inteiro numero_car = x.numero_caracteres(texto1)
		g.definir_fonte_texto(fonte_texto)
		g.definir_tamanho_texto(tam_texto)
		se(cor_texto == "vermelho") {
			g.definir_cor(g.COR_VERMELHO)
		}
		se(cor_texto == "azul") {
			g.definir_cor(g.COR_AZUL)
		}
		se(cor_texto == "branco") {
			g.definir_cor(g.COR_BRANCO)
		}
		se(cor_texto == "amarelo") {
			g.definir_cor(g.COR_AMARELO)
		}
		se(cor_texto == "cinza") {
			g.definir_cor(cor_cinza)
		}
		g.desenhar_texto(deslocamentoX1, deslocamentoY1, texto1)
		g.desenhar_texto(deslocamentoX2, deslocamentoY2, texto2)

		
		se(setas == verdadeiro) {
			g.desenhar_imagem(deslocamentoX1 - 25, deslocamentoY1 + (tam_texto/12)*9, seta_esquerda)
			g.desenhar_imagem(deslocamentoX1 + (tam_texto/12)*(numero_car*tam_caracter), deslocamentoY1 + (tam_texto/12)*9, seta_direita)
		}
	}

	funcao aviso(inteiro deslocamentoX1, inteiro deslocamentoY1, cadeia texto1, inteiro deslocamentoX2, inteiro deslocamentoY2, cadeia texto2) {
		se(textopiscar <= 200) {
			texto(falso, "Power Green", "vermelho",64.0, deslocamentoX1,deslocamentoY1,texto1, deslocamentoX2,deslocamentoY2,texto2)
			se(textopiscar == 0) {
				textopiscar = 400
			}
		}
	}

	funcao nome_armas(inteiro deslocamentoX, real deslocamentoY, cadeia nome) {
		se(nome_armascontador < 765) {
			texto(falso, "Power Green", "branco", 26.0, deslocamentoX, deslocamentoY, nome, 0, 0, "")
			nome_armascontador++
		}
	}

	funcao inicializar() {
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800, 600)
		g.definir_icone_janela(per)
		g.definir_titulo_janela("Starfinder")
		g.carregar_fonte("./pkmnem.ttf")
		load_config()
	}

	funcao desenhar_gridoptions() {
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(430, 50, 3, 500, falso, verdadeiro)
		g.desenhar_retangulo(595, 50, 3, 500, falso, verdadeiro)
		g.desenhar_retangulo(228, 95, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 140, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 185, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 230, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 275, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 320, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 365, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 410, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 455, 520, 3, falso, verdadeiro)
		g.desenhar_retangulo(228, 500, 520, 3, falso, verdadeiro)
		texto(falso,"Power Green","cinza",28.0,290,50,"Actions",0,0,"")
		texto(falso,"Power Green","cinza",28.0,470,50,"Player 1",0,0,"")
		texto(falso,"Power Green","cinza",28.0,635,50,"Player 2",0,0,"")
	}

	funcao desenhar_controloptions(inteiro valor_atual) {
		se(valor_atual == 0) {
			texto(falso,"Power Green","amarelo",32.0,248,90,"Move Up",0,0,"")	
			se(t.caracter_tecla(move_up) == '&') {
				texto(falso,"Power Green","amarelo",36.0,500,95,"^",0,0,"")
			} senao {
				texto(falso,"Power Green","amarelo",36.0,500,95,p.caracter_para_cadeia(t.caracter_tecla(move_up)),0,0,"")
			}
		} senao {
			texto(falso,"Power Green","branco",32.0,248,90,"Move Up",0,0,"")
			se(t.caracter_tecla(move_up) == '&') {
				texto(falso,"Power Green","branco",36.0,500,95,"^",0,0,"")
			} senao {
				texto(falso,"Power Green","branco",36.0,500,95,p.caracter_para_cadeia(t.caracter_tecla(move_up)),0,0,"")
			}
		}
		se(valor_atual == 1) {
			texto(falso,"Power Green","amarelo",32.0,248,135,"Move Down",0,0,"")
			se(t.caracter_tecla(move_down) == '(') {
				texto(falso,"Power Green","amarelo",32.0,500,135,"v",0,0,"")
			} senao {
				texto(falso,"Power Green","amarelo",32.0,500,135,p.caracter_para_cadeia(t.caracter_tecla(move_down)),0,0,"")
			}
		} senao {
			texto(falso,"Power Green","branco",32.0,248,135,"Move Down",0,0,"")
			se(t.caracter_tecla(move_down) == '(') {
				texto(falso,"Power Green","branco",32.0,500,135,"v",0,0,"")
			} senao {
				texto(falso,"Power Green","branco",32.0,500,135,p.caracter_para_cadeia(t.caracter_tecla(move_down)),0,0,"")
			}
		}
		se(valor_atual == 2) {
			texto(falso,"Power Green","amarelo",32.0,248,180,"Move Right",0,0,"")
			se(p.caracter_para_cadeia(t.caracter_tecla(move_right)) == "'") {
				texto(falso,"Power Green","amarelo",24.0,500,190,">",0,0,"")
			} senao {
				texto(falso,"Power Green","amarelo",32.0,500,180,p.caracter_para_cadeia(t.caracter_tecla(move_right)),0,0,"")
			}
		} senao {
			texto(falso,"Power Green","branco",32.0,248,180,"Move Right",0,0,"")
			se(p.caracter_para_cadeia(t.caracter_tecla(move_right)) == "'") {
				texto(falso,"Power Green","branco",24.0,500,190,">",0,0,"")
			} senao {
				texto(falso,"Power Green","branco",32.0,500,180,p.caracter_para_cadeia(t.caracter_tecla(move_right)),0,0,"")
			}
		}
		se(valor_atual == 3) {
			texto(falso,"Power Green","amarelo",32.0,248,225,"Move Left",0,0,"")
			se(t.caracter_tecla(move_left) == '%') {
				texto(falso,"Power Green","amarelo",24.0,500,235,"<",0,0,"")
			} senao {
				texto(falso,"Power Green","amarelo",32.0,500,225,p.caracter_para_cadeia(t.caracter_tecla(move_left)),0,0,"")
			}
		} senao {
			texto(falso,"Power Green","branco",32.0,248,225,"Move Left",0,0,"")
			se(t.caracter_tecla(move_left) == '%') {
				texto(falso,"Power Green","branco",24.0,500,235,"<",0,0,"")
			} senao {
				texto(falso,"Power Green","branco",32.0,500,225,p.caracter_para_cadeia(t.caracter_tecla(move_left)),0,0,"")
			}
		}
		se(valor_atual == 4) {
			texto(falso,"Power Green","amarelo",32.0,248,270,"Shoot",0,0,"")
			se(t.caracter_tecla(shoot) == ' ') {
				texto(falso,"Power Green","amarelo",32.0,480,270,"SPACE",0,0,"")
			} senao {
				texto(falso,"Power Green","amarelo",32.0,500,270,p.caracter_para_cadeia(t.caracter_tecla(shoot)),0,0,"")
			}
		} senao {
			texto(falso,"Power Green","branco",32.0,248,270,"Shoot",0,0,"")
			se(t.caracter_tecla(shoot) == ' ') {
				texto(falso,"Power Green","branco",32.0,480,270,"SPACE",0,0,"")
			} senao {
				texto(falso,"Power Green","branco",32.0,500,270,p.caracter_para_cadeia(t.caracter_tecla(shoot)),0,0,"")
			}
		}
		se(valor_atual == 5) {
			texto(falso,"Power Green","amarelo",32.0,248,315,"Switch Weapon",0,0,"")
			texto(falso,"Power Green","amarelo",32.0,500,315,p.caracter_para_cadeia(t.caracter_tecla(switch_weapon)),0,0,"")
		} senao {
			texto(falso,"Power Green","branco",32.0,248,315,"Switch Weapon",0,0,"")
			texto(falso,"Power Green","branco",32.0,500,315,p.caracter_para_cadeia(t.caracter_tecla(switch_weapon)),0,0,"")
		}
		se(valor_atual == 6) {
			texto(falso,"Power Green","amarelo",32.0,248,360,"Quick Save",0,0,"")
			texto(falso,"Power Green","amarelo",32.0,500,360,p.caracter_para_cadeia(t.caracter_tecla(save_tecla)),0,0,"")
		} senao {
			texto(falso,"Power Green","branco",32.0,248,360,"Quick Save",0,0,"")
			texto(falso,"Power Green","branco",32.0,500,360,p.caracter_para_cadeia(t.caracter_tecla(save_tecla)),0,0,"")
		}
		se(valor_atual == 7) {
			texto(falso,"Power Green","amarelo",32.0,248,405,"Menu",0,0,"")
			se(t.caracter_tecla(menu_tecla) == t.caracter_tecla(t.TECLA_ESC)) {
				texto(falso,"Power Green","amarelo",32.0,490,405,"ESC",0,0,"")
			} senao {
				texto(falso,"Power Green","amarelo",32.0,490,405,p.caracter_para_cadeia(t.caracter_tecla(menu_tecla)),0,0,"")
			}
		} senao {
			texto(falso,"Power Green","branco",32.0,248,405,"Menu",0,0,"")
			se(t.caracter_tecla(menu_tecla) == t.caracter_tecla(t.TECLA_ESC)) {
				texto(falso,"Power Green","branco",32.0,490,405,"ESC",0,0,"")
			} senao {
				texto(falso,"Power Green","branco",32.0,490,405,p.caracter_para_cadeia(t.caracter_tecla(menu_tecla)),0,0,"")
			}
		}	
	}

	funcao desenhar_fundo() {
		g.desenhar_imagem(fundoXp, fundoYp, fundo)

		se(fundoXp <= (-800)) {
			fundoXp = 0.0
		}
	}
	
	funcao desenhar_per() {
		dano_per()
		g.desenhar_imagem(perXp, perYp, per)
	}

	funcao desenhar_met(real metqtd) {
		inteiro metqtd_absoluto = metqtd
		escolha(metqtd_absoluto) {
			caso 1:
			metXp = metXp - metspeed
			metspeed = metspeed + metmodspeed
			escolha(met_tam) {
				caso 1:
				g.desenhar_imagem(metXp, metYp, metp)
				metL = 32
				metA = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp, metYp, metm)
				metL = 48
				metA = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp, metYp, metg)
				metL = 64
				metA = 64
				pare
			}
			pare
			
			caso 2:
			metXp = metXp - metspeed
			metspeed = metspeed + metmodspeed
			metXp2 = metXp2 - metspeed2
			metspeed2 = metspeed2 + metmodspeed2
			escolha(met_tam) {
				caso 1:
				g.desenhar_imagem(metXp, metYp, metp)
				metL = 32
				metA = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp, metYp, metm)
				metL = 48
				metA = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp, metYp, metg)
				metL = 64
				metA = 64
				pare
			}
			escolha(met_tam2) {
				caso 1:
				g.desenhar_imagem(metXp2, metYp2, metp)
				metL2 = 32
				metA2 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp2, metYp2, metm)
				metL2 = 48
				metA2 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp2, metYp2, metg)
				metL2 = 64
				metA2 = 64
				pare
			}
			pare

			caso 3:
			metXp = metXp - metspeed
			metspeed = metspeed + metmodspeed
			metXp2 = metXp2 - metspeed2
			metspeed2 = metspeed2 + metmodspeed2
			metXp3 = metXp3 - metspeed3
			metspeed3 = metspeed3 + metmodspeed3
			escolha(met_tam) {
				caso 1:
				g.desenhar_imagem(metXp, metYp, metp)
				metL = 32
				metA = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp, metYp, metm)
				metL = 48
				metA = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp, metYp, metg)
				metL = 64
				metA = 64
				pare
			}
			escolha(met_tam2) {
				caso 1:
				g.desenhar_imagem(metXp2, metYp2, metp)
				metL2 = 32
				metA2 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp2, metYp2, metm)
				metL2 = 48
				metA2 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp2, metYp2, metg)
				metL2 = 64
				metA2 = 64
				pare
			}
			escolha(met_tam3) {
				caso 1:
				g.desenhar_imagem(metXp3, metYp3, metp)
				metL3 = 32
				metA3 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp3, metYp3, metm)
				metL3 = 48
				metA3 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp3, metYp3, metg)
				metL3 = 64
				metA3 = 64
				pare
			}
			pare

			caso 4:
			metXp = metXp - metspeed
			metspeed = metspeed + metmodspeed
			metXp2 = metXp2 - metspeed2
			metspeed2 = metspeed2 + metmodspeed2
			metXp3 = metXp3 - metspeed3
			metspeed3 = metspeed3 + metmodspeed3
			metXp4 = metXp4 - metspeed4
			metspeed4 = metspeed4 + metmodspeed4
			escolha(met_tam) {
				caso 1:
				g.desenhar_imagem(metXp, metYp, metp)
				metL = 32
				metA = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp, metYp, metm)
				metL = 48
				metA = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp, metYp, metg)
				metL = 64
				metA = 64
				pare
			}
			escolha(met_tam2) {
				caso 1:
				g.desenhar_imagem(metXp2, metYp2, metp)
				metL2 = 32
				metA2 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp2, metYp2, metm)
				metL2 = 48
				metA2 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp2, metYp2, metg)
				metL2 = 64
				metA2 = 64
				pare
			}
			escolha(met_tam3) {
				caso 1:
				g.desenhar_imagem(metXp3, metYp3, metp)
				metL3 = 32
				metA3 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp3, metYp3, metm)
				metL3 = 48
				metA3 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp3, metYp3, metg)
				metL3 = 64
				metA3 = 64
				pare
			}
			escolha(met_tam4) {
				caso 1:
				g.desenhar_imagem(metXp4, metYp4, metp)
				metL4 = 32
				metA4 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp4, metYp4, metm)
				metL4 = 48
				metA4 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp4, metYp4, metg)
				metL4 = 64
				metA4 = 64
				pare
			}
			pare

			caso contrario:
			metXp = metXp - metspeed
			metspeed = metspeed + metmodspeed
			metXp2 = metXp2 - metspeed2
			metspeed2 = metspeed2 + metmodspeed2
			metXp3 = metXp3 - metspeed3
			metspeed3 = metspeed3 + metmodspeed3
			metXp4 = metXp4 - metspeed4
			metspeed4 = metspeed4 + metmodspeed4
			metXp5 = metXp5 - metspeed5
			metspeed5 = metspeed5 + metmodspeed5
			escolha(met_tam) {
				caso 1:
				g.desenhar_imagem(metXp, metYp, metp)
				metL = 32
				metA = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp, metYp, metm)
				metL = 48
				metA = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp, metYp, metg)
				metL = 64
				metA = 64
				pare
			}
			escolha(met_tam2) {
				caso 1:
				g.desenhar_imagem(metXp2, metYp2, metp)
				metL2 = 32
				metA2 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp2, metYp2, metm)
				metL2 = 48
				metA2 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp2, metYp2, metg)
				metL2 = 64
				metA2 = 64
				pare
			}
			escolha(met_tam3) {
				caso 1:
				g.desenhar_imagem(metXp3, metYp3, metp)
				metL3 = 32
				metA3 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp3, metYp3, metm)
				metL3 = 48
				metA3 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp3, metYp3, metg)
				metL3 = 64
				metA3 = 64
				pare
			}
			escolha(met_tam4) {
				caso 1:
				g.desenhar_imagem(metXp4, metYp4, metp)
				metL4 = 32
				metA4 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp4, metYp4, metm)
				metL4 = 48
				metA4 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp4, metYp4, metg)
				metL4 = 64
				metA4 = 64
				pare
			}
			escolha(met_tam5) {
				caso 1:
				g.desenhar_imagem(metXp5, metYp5, metp)
				metL5 = 32
				metA5 = 32
				pare
				caso 2:
				g.desenhar_imagem(metXp5, metYp5, metm)
				metL5 = 48
				metA5 = 48
				pare
				caso 3:
				g.desenhar_imagem(metXp5, metYp5, metg)
				metL5 = 64
				metA5 = 64
				pare
			}
			pare
		}
		
		se(metXp <= (-32)) {
			metYp = u.sorteia(-16, 584)
			metXp = 800.0
			met_tam = u.sorteia(1, 3)
			metlife = met_tam+0.0
		}
		se(metXp2 <= (-32)) {
			metYp2 = u.sorteia(-16, 584)
			metXp2 = 800.0
			met_tam2 = u.sorteia(1, 3)
			metlife2 = met_tam2+0.0
		}
		se(metXp3 <= (-32)) {
			metYp3 = u.sorteia(-16, 584)
			metXp3 = 800.0
			met_tam3 = u.sorteia(1, 3)
			metlife3 = met_tam3+0.0
		}
		se(metXp4 <= (-32)) {
			metYp4 = u.sorteia(-16, 584)
			metXp4 = 800.0
			met_tam4 = u.sorteia(1, 3)
			metlife4 = met_tam4+0.0
		}
		se(metXp5 <= (-32)) {
			metYp5 = u.sorteia(-16, 584)
			metXp5 = 800.0
			met_tam5 = u.sorteia(1, 3)
			metlife5 = met_tam5+0.0
		}
	}

	funcao desenhar_medkit() {
		g.desenhar_imagem(medkitXp, medkitYp, medkit)
		medkitL = 24
		medkitA = 24
		se(medkitXp <= (-24)) {
			medkitYp = u.sorteia(-12, 588)
			se(bossXp <= 600) {
				medkitXp = u.sorteia(2400, 4800) + 0.0
			}
			medkitXp = u.sorteia(1600, 3200) + 0.0
		}
	}
	
	funcao movimento(cadeia tipo) { 
		fundoXp = fundoXp - fundospeed
		fundospeed = fundospeed + 0.000001

		medkitXp = medkitXp - medkitspeed
		medkitspeed = medkitspeed + medkitspeedmod

		laser_retospeed = laser_retospeed + 0.0001
		laser_diagonalspeed = laser_diagonalspeed + 0.0001
		ballspeed = ballspeed + 0.00005

		dmgupXp = dmgupXp - dmgupspeed
		dmgupspeed = dmgupspeed + dmgupspeedmod

		speedupXp = speedupXp - speedupspeed
		speedupspeed = speedupspeed + speedupspeedmod

		lifeupXp = lifeupXp - lifeupspeed
		lifeupspeed = lifeupspeed + lifeupspeedmod
		
		machinegunXp -= machinegunspeed

		se(tipo == "sem pontucao") {
		} senao {
			se(vida == 4) {
				pontuacao_real = pontuacao_real + 0.4
				pontuacao_inteira = pontuacao_real
			} senao {
				pontuacao_real = pontuacao_real + 0.2
				pontuacao_inteira = pontuacao_real
			}
	
			se(god_mode_on == verdadeiro) {
				pontuacao_real = pontuacao_real + 4.6
				pontuacao_inteira = pontuacao_real
			}
		}

		se(t.tecla_pressionada(move_up)) {
			se(god_mode_on == verdadeiro) {
				perYp = perYp - perspeed*3
				se(perYp <= 0) {
					perYp = perYp + perspeed*3
				}
			} senao {
				perYp = perYp - perspeed
				se(perYp <= 0) {
					perYp = perYp + perspeed
				}
			}
		}
		se(t.tecla_pressionada(move_down)) {
			se(god_mode_on == verdadeiro) {
				perYp = perYp + perspeed*3
				se(perYp >= 568) {
					perYp = perYp - perspeed*3
				}
			} senao {
				perYp = perYp + perspeed
				se(perYp >= 568) {
					perYp = perYp - perspeed
				}
			}
		}
		se(t.tecla_pressionada(move_right)) {
			se(god_mode_on == verdadeiro) {
				perXp = perXp + perspeed*3
				se(perXp >= 768) {
					perXp = perXp - perspeed*3
				}
			} senao {
				perXp = perXp + perspeed
				se(perXp >= 768) {
					perXp = perXp - perspeed
				}
			}
		}
		se(t.tecla_pressionada(move_left)) {
			se(god_mode_on == verdadeiro) {
				perXp = perXp - perspeed*3
				se(perXp <= 0) {
					perXp = perXp + perspeed*3
				}
			} senao {
				perXp = perXp - perspeed
				se(perXp <= 0) {
					perXp = perXp + perspeed
				}
			}
		}
	}

	funcao logico ocorreu_colisao(inteiro obj1Xp, inteiro obj1Yp, inteiro obj1L, inteiro obj1A, real obj2Xp, real obj2Yp, inteiro obj2L, inteiro obj2A) {
		inteiro dismX_obj1_obj2 = (obj1L / 2) + (obj2L / 2)
		inteiro dismY_obj1_obj2 = (obj1A / 2) + (obj2A / 2)
							
		real obj1Xc = (obj1Xp + (obj1L / 2))												
		real obj1Yc = (obj1Yp + (obj1A / 2))

		real obj2Xc = obj2Xp + (obj2L / 2)	
		real obj2Yc = obj2Yp + (obj2A / 2)

		real disX_obj1_obj2 = m.valor_absoluto(obj2Xc - obj1Xc)				
		real disY_obj1_obj2 = m.valor_absoluto(obj2Yc - obj1Yc)				

		logico colisao_horizontal_obj1_obj2 = (disX_obj1_obj2 < dismX_obj1_obj2)				
		logico colisao_vertical_obj1_obj2 = (disY_obj1_obj2 < dismY_obj1_obj2)

		retorne (colisao_horizontal_obj1_obj2 e colisao_vertical_obj1_obj2)
	}

	funcao logica_hitbox() {
		se(ocorreu_colisao(perXp, perYp, perL, perA, metXp, metYp, metL, metA)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			metYp = u.sorteia(-16, 584)
			metXp = 800.0
			met_tam = u.sorteia(1, 3)
			metlife = met_tam+0.0
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, metXp2, metYp2, metL2, metA2)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			metYp2 = u.sorteia(-16, 584)
			metXp2 = 800.0
			met_tam2 = u.sorteia(1, 3)
			metlife2 = met_tam2+0.0
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, metXp3, metYp3, metL3, metA3)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			metYp3 = u.sorteia(-16, 584)
			metXp3 = 800.0
			met_tam3 = u.sorteia(1, 3)
			metlife3 = met_tam3+0.0
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, metXp4, metYp4, metL4, metA4)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			metYp4 = u.sorteia(-16, 584)
			metXp4 = 800.0
			met_tam4 = u.sorteia(1, 3)
			metlife4 = met_tam4+0.0
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, metXp5, metYp5, metL5, metA5)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			metYp5 = u.sorteia(-16, 584)
			metXp5 = 800.0
			met_tam5 = u.sorteia(1, 3)
			metlife5 = met_tam5+0.0
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, metXp, metYp, metL, metA)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife = metlife - perlaserdano*2
					} senao {
						metlife = metlife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife = metlife - perlaserdano*2
				} senao {
					metlife = metlife - perlaserdano
				}
			}
			se(metlife >= 0) {
				laser_perXp = -20
				laser_perYp = -20
				laser_per_on = falso
			}
			se(metlife <= 0) {
				metYp = u.sorteia(-16, 584)
				metXp = 800.0
				met_tam = u.sorteia(1, 3)
				metlife = met_tam+0.0
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, metXp, metYp, metL, metA)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife = metlife - perlaserdano*2
					} senao {
						metlife = metlife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife = metlife - perlaserdano*2
				} senao {
					metlife = metlife - perlaserdano
				}
			}
			se(metlife >= 0) {
				laser2_perXp = -20
				laser2_perYp = -20
				laser2_per_on = falso
			}
			se(metlife <= 0) {
				metYp = u.sorteia(-16, 584)
				metXp = 800.0
				met_tam = u.sorteia(1, 3)
				metlife = met_tam+0.0
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, metXp, metYp, metL, metA)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife = metlife - perlaserdano*2
					} senao {
						metlife = metlife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife = metlife - perlaserdano*2
				} senao {
					metlife = metlife - perlaserdano
				}
			}
			se(metlife >= 0) {
				laser3_perXp = -20
				laser3_perYp = -20
				laser3_per_on = falso
			}
			se(metlife <= 0) {
				metYp = u.sorteia(-16, 584)
				metXp = 800.0
				met_tam = u.sorteia(1, 3)
				metlife = met_tam+0.0
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, metXp, metYp, metL, metA)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife = metlife - perlaserdano*2
					} senao {
						metlife = metlife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife = metlife - perlaserdano*2
				} senao {
					metlife = metlife - perlaserdano
				}
			}
			se(metlife >= 0) {
				laser4_perXp = -20
				laser4_perYp = -20
				laser4_per_on = falso
			}
			se(metlife <= 0) {
				metYp = u.sorteia(-16, 584)
				metXp = 800.0
				met_tam = u.sorteia(1, 3)
				metlife = met_tam+0.0
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, metXp, metYp, metL, metA)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife = metlife - perlaserdano*2
					} senao {
						metlife = metlife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife = metlife - perlaserdano*2
				} senao {
					metlife = metlife - perlaserdano
				}
			}
			se(metlife >= 0) {
				laser5_perXp = -20
				laser5_perYp = -20
				laser5_per_on = falso
			}
			se(metlife <= 0) {
				metYp = u.sorteia(-16, 584)
				metXp = 800.0
				met_tam = u.sorteia(1, 3)
				metlife = met_tam+0.0
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, metXp, metYp, metL, metA)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife = metlife - perlaserdano*2
					} senao {
						metlife = metlife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife = metlife - perlaserdano*2
				} senao {
					metlife = metlife - perlaserdano
				}
			}
			se(metlife >= 0) {
				laser6_perXp = -20
				laser6_perYp = -20
				laser6_per_on = falso
			}
			se(metlife <= 0) {
				metYp = u.sorteia(-16, 584)
				metXp = 800.0
				met_tam = u.sorteia(1, 3)
				metlife = met_tam+0.0
			}
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, metXp2, metYp2, metL2, metA2)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife2 = metlife2 - perlaserdano*2
					} senao {
						metlife2 = metlife2 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife2 = metlife2 - perlaserdano*2
				} senao {
					metlife2 = metlife2 - perlaserdano
				}
			}
			se(metlife2 >= 0) {
				laser_perXp = -20
				laser_perYp = -20
				laser_per_on = falso
			}
			se(metlife2 <= 0) {
				metYp2 = u.sorteia(-16, 584)
				metXp2 = 800.0
				met_tam2 = u.sorteia(1, 3)
				metlife2 = met_tam2+0.0
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, metXp2, metYp2, metL2, metA2)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife2 = metlife2 - perlaserdano*2
					} senao {
						metlife2 = metlife2 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife2 = metlife2 - perlaserdano*2
				} senao {
					metlife2 = metlife2 - perlaserdano
				}
			}
			se(metlife2 >= 0) {
				laser2_perXp = -20
				laser2_perYp = -20
				laser2_per_on = falso
			}
			se(metlife2 <= 0) {
				metYp2 = u.sorteia(-16, 584)
				metXp2 = 800.0
				met_tam2 = u.sorteia(1, 3)
				metlife2 = met_tam2+0.0
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, metXp2, metYp2, metL2, metA2)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife2 = metlife2 - perlaserdano*2
					} senao {
						metlife2 = metlife2 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife2 = metlife2 - perlaserdano*2
				} senao {
					metlife2 = metlife2 - perlaserdano
				}
			}
			se(metlife2 >= 0) {
				laser3_perXp = -20
				laser3_perYp = -20
				laser3_per_on = falso
			}
			se(metlife2 <= 0) {
				metYp2 = u.sorteia(-16, 584)
				metXp2 = 800.0
				met_tam2 = u.sorteia(1, 3)
				metlife2 = met_tam2+0.0
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, metXp2, metYp2, metL2, metA2)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife2 = metlife2 - perlaserdano*2
					} senao {
						metlife2 = metlife2 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife2 = metlife2 - perlaserdano*2
				} senao {
					metlife2 = metlife2 - perlaserdano
				}
			}
			se(metlife2 >= 0) {
				laser4_perXp = -20
				laser4_perYp = -20
				laser4_per_on = falso
			}
			se(metlife2 <= 0) {
				metYp2 = u.sorteia(-16, 584)
				metXp2 = 800.0
				met_tam2 = u.sorteia(1, 3)
				metlife2 = met_tam2+0.0
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, metXp2, metYp2, metL2, metA2)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife2 = metlife2 - perlaserdano*2
					} senao {
						metlife2 = metlife2 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife2 = metlife2 - perlaserdano*2
				} senao {
					metlife2 = metlife2 - perlaserdano
				}
			}
			se(metlife2 >= 0) {
				laser5_perXp = -20
				laser5_perYp = -20
				laser5_per_on = falso
			}
			se(metlife2 <= 0) {
				metYp2 = u.sorteia(-16, 584)
				metXp2 = 800.0
				met_tam2 = u.sorteia(1, 3)
				metlife2 = met_tam2+0.0
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, metXp2, metYp2, metL2, metA2)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife2 = metlife2 - perlaserdano*2
					} senao {
						metlife2 = metlife2 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife2 = metlife2 - perlaserdano*2
				} senao {
					metlife2 = metlife2 - perlaserdano
				}
			}
			se(metlife2 >= 0) {
				laser6_perXp = -20
				laser6_perYp = -20
				laser6_per_on = falso
			}
			se(metlife2 <= 0) {
				metYp2 = u.sorteia(-16, 584)
				metXp2 = 800.0
				met_tam2 = u.sorteia(1, 3)
				metlife2 = met_tam2+0.0
			}
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, metXp3, metYp3, metL3, metA3)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife3 = metlife3 - perlaserdano*2
					} senao {
						metlife3 = metlife3 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife3 = metlife3 - perlaserdano*2
				} senao {
					metlife3 = metlife3 - perlaserdano
				}
			}
			se(metlife3 >= 0) {
				laser_perXp = -20
				laser_perYp = -20
				laser_per_on = falso
			}
			se(metlife3 <= 0) {
				metYp3 = u.sorteia(-16, 584)
				metXp3 = 800.0
				met_tam3 = u.sorteia(1, 3)
				metlife3 = met_tam3+0.0
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, metXp3, metYp3, metL3, metA3)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife3 = metlife3 - perlaserdano*2
					} senao {
						metlife3 = metlife3 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife3 = metlife3 - perlaserdano*2
				} senao {
					metlife3 = metlife3 - perlaserdano
				}
			}
			se(metlife3 >= 0) {
				laser2_perXp = -20
				laser2_perYp = -20
				laser2_per_on = falso
			}
			se(metlife3 <= 0) {
				metYp3 = u.sorteia(-16, 584)
				metXp3 = 800.0
				met_tam3 = u.sorteia(1, 3)
				metlife3 = met_tam3+0.0
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, metXp3, metYp3, metL3, metA3)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife3 = metlife3 - perlaserdano*2
					} senao {
						metlife3 = metlife3 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife3 = metlife3 - perlaserdano*2
				} senao {
					metlife3 = metlife3 - perlaserdano
				}
			}
			se(metlife3 >= 0) {
				laser3_perXp = -20
				laser3_perYp = -20
				laser3_per_on = falso
			}
			se(metlife3 <= 0) {
				metYp3 = u.sorteia(-16, 584)
				metXp3 = 800.0
				met_tam3 = u.sorteia(1, 3)
				metlife3 = met_tam3+0.0
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, metXp3, metYp3, metL3, metA3)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife3 = metlife3 - perlaserdano*2
					} senao {
						metlife3 = metlife3 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife3 = metlife3 - perlaserdano*2
				} senao {
					metlife3 = metlife3 - perlaserdano
				}
			}
			se(metlife3 >= 0) {
				laser4_perXp = -20
				laser4_perYp = -20
				laser4_per_on = falso
			}
			se(metlife3 <= 0) {
				metYp3 = u.sorteia(-16, 584)
				metXp3 = 800.0
				met_tam3 = u.sorteia(1, 3)
				metlife3 = met_tam3+0.0
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, metXp3, metYp3, metL3, metA3)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife3 = metlife3 - perlaserdano*2
					} senao {
						metlife3 = metlife3 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife3 = metlife3 - perlaserdano*2
				} senao {
					metlife3 = metlife3 - perlaserdano
				}
			}
			se(metlife3 >= 0) {
				laser5_perXp = -20
				laser5_perYp = -20
				laser5_per_on = falso
			}
			se(metlife3 <= 0) {
				metYp3 = u.sorteia(-16, 584)
				metXp3 = 800.0
				met_tam3 = u.sorteia(1, 3)
				metlife3 = met_tam3+0.0
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, metXp3, metYp3, metL3, metA3)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife3 = metlife3 - perlaserdano*2
					} senao {
						metlife3 = metlife3 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife3 = metlife3 - perlaserdano*2
				} senao {
					metlife3 = metlife3 - perlaserdano
				}
			}
			se(metlife3 >= 0) {
				laser6_perXp = -20
				laser6_perYp = -20
				laser6_per_on = falso
			}
			se(metlife3 <= 0) {
				metYp3 = u.sorteia(-16, 584)
				metXp3 = 800.0
				met_tam3 = u.sorteia(1, 3)
				metlife3 = met_tam3+0.0
			}
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, metXp4, metYp4, metL4, metA4)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife4 = metlife4 - perlaserdano*2
					} senao {
						metlife4 = metlife4 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife4 = metlife4 - perlaserdano*2
				} senao {
					metlife4 = metlife4 - perlaserdano
				}
			}
			se(metlife4 >= 0) {
				laser_perXp = -20
				laser_perYp = -20
				laser_per_on = falso
			}
			se(metlife4 <= 0) {
				metYp4 = u.sorteia(-16, 584)
				metXp4 = 800.0
				met_tam4 = u.sorteia(1, 3)
				metlife4 = met_tam4+0.0
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, metXp4, metYp4, metL4, metA4)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife4 = metlife4 - perlaserdano*2
					} senao {
						metlife4 = metlife4 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife4 = metlife4 - perlaserdano*2
				} senao {
					metlife4 = metlife4 - perlaserdano
				}
			}
			se(metlife4 >= 0) {
				laser2_perXp = -20
				laser2_perYp = -20
				laser2_per_on = falso
			}
			se(metlife4 <= 0) {
				metYp4 = u.sorteia(-16, 584)
				metXp4 = 800.0
				met_tam4 = u.sorteia(1, 3)
				metlife4 = met_tam4+0.0
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, metXp4, metYp4, metL4, metA4)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife4 = metlife4 - perlaserdano*2
					} senao {
						metlife4 = metlife4 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife4 = metlife4 - perlaserdano*2
				} senao {
					metlife4 = metlife4 - perlaserdano
				}
			}
			se(metlife4 >= 0) {
				laser3_perXp = -20
				laser3_perYp = -20
				laser3_per_on = falso
			}
			se(metlife4 <= 0) {
				metYp4 = u.sorteia(-16, 584)
				metXp4 = 800.0
				met_tam4 = u.sorteia(1, 3)
				metlife4 = met_tam4+0.0
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, metXp4, metYp4, metL4, metA4)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife4 = metlife4 - perlaserdano*2
					} senao {
						metlife4 = metlife4 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife4 = metlife4 - perlaserdano*2
				} senao {
					metlife4 = metlife4 - perlaserdano
				}
			}
			se(metlife4 >= 0) {
				laser4_perXp = -20
				laser4_perYp = -20
				laser4_per_on = falso
			}
			se(metlife4 <= 0) {
				metYp4 = u.sorteia(-16, 584)
				metXp4 = 800.0
				met_tam4 = u.sorteia(1, 3)
				metlife4 = met_tam4+0.0
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, metXp4, metYp4, metL4, metA4)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife4 = metlife4 - perlaserdano*2
					} senao {
						metlife4 = metlife4 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife4 = metlife4 - perlaserdano*2
				} senao {
					metlife4 = metlife4 - perlaserdano
				}
			}
			se(metlife4 >= 0) {
				laser5_perXp = -20
				laser5_perYp = -20
				laser5_per_on = falso
			}
			se(metlife4 <= 0) {
				metYp4 = u.sorteia(-16, 584)
				metXp4 = 800.0
				met_tam4 = u.sorteia(1, 3)
				metlife4 = met_tam4+0.0
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, metXp4, metYp4, metL4, metA4)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife4 = metlife4 - perlaserdano*2
					} senao {
						metlife4 = metlife4 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife4 = metlife4 - perlaserdano*2
				} senao {
					metlife4 = metlife4 - perlaserdano
				}
			}
			se(metlife4 >= 0) {
				laser6_perXp = -20
				laser6_perYp = -20
				laser6_per_on = falso
			}
			se(metlife4 <= 0) {
				metYp4 = u.sorteia(-16, 584)
				metXp4 = 800.0
				met_tam4 = u.sorteia(1, 3)
				metlife4 = met_tam4+0.0
			}
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, metXp5, metYp5, metL5, metA5)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife5 = metlife5 - perlaserdano*2
					} senao {
						metlife5 = metlife5 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife5 = metlife5 - perlaserdano*2
				} senao {
					metlife5 = metlife5 - perlaserdano
				}
			}
			se(metlife5 >= 0) {
				laser_perXp = -20
				laser_perYp = -20
				laser_per_on = falso
			}
			se(metlife5 <= 0) {
				metYp5 = u.sorteia(-16, 584)
				metXp5 = 800.0
				met_tam5 = u.sorteia(1, 3)
				metlife5 = met_tam5+0.0
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, metXp5, metYp5, metL5, metA5)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife5 = metlife5 - perlaserdano*2
					} senao {
						metlife5 = metlife5 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife5 = metlife5 - perlaserdano*2
				} senao {
					metlife5 = metlife5 - perlaserdano
				}
			}
			se(metlife5 >= 0) {
				laser2_perXp = -20
				laser2_perYp = -20
				laser2_per_on = falso
			}
			se(metlife5 <= 0) {
				metYp5 = u.sorteia(-16, 584)
				metXp5 = 800.0
				met_tam5 = u.sorteia(1, 3)
				metlife5 = met_tam5+0.0
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, metXp5, metYp5, metL5, metA5)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife5 = metlife5 - perlaserdano*2
					} senao {
						metlife5 = metlife5 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife5 = metlife5 - perlaserdano*2
				} senao {
					metlife5 = metlife5 - perlaserdano
				}
			}
			se(metlife5 >= 0) {
				laser3_perXp = -20
				laser3_perYp = -20
				laser3_per_on = falso
			}
			se(metlife5 <= 0) {
				metYp5 = u.sorteia(-16, 584)
				metXp5 = 800.0
				met_tam5 = u.sorteia(1, 3)
				metlife5 = met_tam5+0.0
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, metXp5, metYp5, metL5, metA5)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife5 = metlife5 - perlaserdano*2
					} senao {
						metlife5 = metlife5 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife5 = metlife5 - perlaserdano*2
				} senao {
					metlife5 = metlife5 - perlaserdano
				}
			}
			se(metlife5 >= 0) {
				laser4_perXp = -20
				laser4_perYp = -20
				laser4_per_on = falso
			}
			se(metlife5 <= 0) {
				metYp5 = u.sorteia(-16, 584)
				metXp5 = 800.0
				met_tam5 = u.sorteia(1, 3)
				metlife5 = met_tam5+0.0
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, metXp5, metYp5, metL5, metA5)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife5 = metlife5 - perlaserdano*2
					} senao {
						metlife5 = metlife5 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife5 = metlife5 - perlaserdano*2
				} senao {
					metlife5 = metlife5 - perlaserdano
				}
			}
			se(metlife5 >= 0) {
				laser5_perXp = -20
				laser5_perYp = -20
				laser5_per_on = falso
			}
			se(metlife5 <= 0) {
				metYp5 = u.sorteia(-16, 584)
				metXp5 = 800.0
				met_tam5 = u.sorteia(1, 3)
				metlife5 = met_tam5+0.0
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, metXp5, metYp5, metL5, metA5)) {
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						metlife5 = metlife5 - perlaserdano*2
					} senao {
						metlife5 = metlife5 - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					metlife5 = metlife5 - perlaserdano*2
				} senao {
					metlife5 = metlife5 - perlaserdano
				}
			}
			se(metlife5 >= 0) {
				laser6_perXp = -20
				laser6_perYp = -20
				laser6_per_on = falso
			}
			se(metlife5 <= 0) {
				metYp5 = u.sorteia(-16, 584)
				metXp5 = 800.0
				met_tam5 = u.sorteia(1, 3)
				metlife5 = met_tam5+0.0
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, metXp, metYp, metL, metA)) {
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					metlife = metlife - perblastdano*2
				} senao {
					metlife = metlife - perblastdano
				}
			}
			se(metlife >= 0) {
				blast_perXp = -32
				blast_perYp = -32
				blast_per_on = falso
			}
			se(metlife <= 0) {
				metYp = u.sorteia(-16, 584)
				metXp = 800.0
				met_tam = u.sorteia(1, 3)
				metlife = met_tam+0.0
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, metXp2, metYp2, metL2, metA2)) {
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					metlife2 = metlife2 - perblastdano*2
				} senao {
					metlife2 = metlife2 - perblastdano
				}
			}
			se(metlife2 >= 0) {
				blast_perXp = -32
				blast_perYp = -32
				blast_per_on = falso
			}
			se(metlife2 <= 0) {
				metYp2 = u.sorteia(-16, 584)
				metXp2 = 800.0
				met_tam2 = u.sorteia(1, 3)
				metlife2 = met_tam2+0.0
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, metXp3, metYp3, metL3, metA3)) {
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					metlife3 = metlife3 - perblastdano*2
				} senao {
					metlife3 = metlife3 - perblastdano
				}
			}
			se(metlife3 >= 0) {
				blast_perXp = -32
				blast_perYp = -32
				blast_per_on = falso
			}
			se(metlife3 <= 0) {
				metYp3 = u.sorteia(-16, 584)
				metXp3 = 800.0
				met_tam3 = u.sorteia(1, 3)
				metlife3 = met_tam3+0.0
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, metXp4, metYp4, metL4, metA4)) {
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					metlife4 = metlife4 - perblastdano*2
				} senao {
					metlife4 = metlife4 - perblastdano
				}
			}
			se(metlife4 >= 0) {
				blast_perXp = -32
				blast_perYp = -32
				blast_per_on = falso
			}
			se(metlife4 <= 0) {
				metYp4 = u.sorteia(-16, 584)
				metXp4 = 800.0
				met_tam4 = u.sorteia(1, 3)
				metlife4 = met_tam4+0.0
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, metXp5, metYp5, metL5, metA5)) {
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					metlife5 = metlife5 - perblastdano*2
				} senao {
					metlife5 = metlife5 - perblastdano
				}
			}
			se(metlife5 >= 0) {
				blast_perXp = -32
				blast_perYp = -32
				blast_per_on = falso
			}
			se(metlife5 <= 0) {
				metYp5 = u.sorteia(-16, 584)
				metXp5 = 800.0
				met_tam5 = u.sorteia(1, 3)
				metlife5 = met_tam5+0.0
			}
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, medkitXp, medkitYp, medkitL, medkitA)) {
			se(god_mode_on == verdadeiro) {
				pontuacao_real = pontuacao_real + 5000
			} senao {
				pontuacao_real = pontuacao_real + 100
			}
			vida = vida + 1
			escolha(lifeupgradecounter) {
				caso 0:
				se(vida > 4) {
					vida = vida - 1
				}
				pare
				caso 1:
				se(vida > 5) {
					vida = vida - 1
				}
				pare
				caso 2:
				se(vida > 6) {
					vida = vida - 1
				}
				pare
				caso 3:
				se(vida > 7) {
					vida = vida - 1
				}
				pare
				caso 4:
				se(vida > 8) {
					vida = vida - 1
				}
				pare
				caso 5:
				se(vida > 9) {
					vida = vida - 1
				}
				pare
				caso 6:
				se(vida > 10) {
					vida = vida - 1
				}
				pare
				caso contrario:
				se(vida > 11) {
					vida = vida - 1
				}
				pare
			}
			medkitYp = u.sorteia(-12, 588)
			medkitXp = u.sorteia(1600, 3200) + 0.0
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, bossXp, bossYp, bossL, bossA)) {
			se(vida == 4) {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - (perbodydano*4)
				} senao {
					bosslife = bosslife - (perbodydano*2)
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perbodydano*2
				} senao {
					bosslife = bosslife - perbodydano
				}
			}
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			} senao {
				perXp = perXp -75
			}
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, boss_laser_retoXp, boss_laser_retoYp, boss_laser_retoL, boss_laser_retoA)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			boss_laser_retoXp = -32.0
			boss_laser_retoYp = -32.0
			laserR1_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, boss_laser_reto2Xp, boss_laser_reto2Yp, boss_laser_reto2L, boss_laser_reto2A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			boss_laser_reto2Xp = -32.0
			boss_laser_reto2Yp = -32.0
			laserR2_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, boss_laser_reto3Xp, boss_laser_reto3Yp, boss_laser_reto3L, boss_laser_reto3A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			boss_laser_reto3Xp = -32.0
			boss_laser_reto3Yp = -32.0
			laserR3_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, boss_laser_reto4Xp, boss_laser_reto4Yp, boss_laser_reto4L, boss_laser_reto4A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			boss_laser_reto4Xp = -32.0
			boss_laser_reto4Yp = -32.0
			laserR4_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, boss_laser_diagonalXp, boss_laser_diagonalYp, boss_laser_diagonalL, boss_laser_diagonalA)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			boss_laser_diagonalXp = -32.0
			boss_laser_diagonalYp = -32.0
			laserD1_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, boss_laser_diagonal2Xp, boss_laser_diagonal2Yp, boss_laser_diagonal2L, boss_laser_diagonal2A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			boss_laser_diagonal2Xp = -32.0
			boss_laser_diagonal2Yp = -32.0
			laserD2_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, boss_ballXp, boss_ballYp, boss_ballL, boss_ballA)) {
			vida = vida - 2
			se(god_mode_on == verdadeiro) {
				vida = vida + 2
			}
			boss_ballXp = -64.0
			boss_ballYp = -64.0
			ball_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, dmgupXp, dmgupYp, dmgupL, dmgupA)) {
			se(god_mode_on == verdadeiro) {
				pontuacao_real = pontuacao_real + 15000
				dmgup_chance = u.sorteia(59, 60)
			} senao {
				pontuacao_real = pontuacao_real + 300
				dmgup_chance = u.sorteia(1, 60)
			}
			perlaserdano = perlaserdano + 0.5
			perbodydano = perbodydano + 1
			perblastdano = perblastdano + 1.5
			dmgupgradecounter = dmgupgradecounter + 1
			dmgupXp = 800.0
			dmgupYp = u.sorteia(0, 576)
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, speedupXp, speedupYp, speedupL, speedupA)) {
			se(god_mode_on == verdadeiro) {
				pontuacao_real = pontuacao_real + 15000
				speedup_chance = u.sorteia(57, 60)
			} senao {
				pontuacao_real = pontuacao_real + 300
				speedup_chance = u.sorteia(1, 60)
			}
			perspeed = perspeed + 1
			speedupgradecounter = speedupgradecounter + 1
			speedupXp = 800.0
			speedupYp = u.sorteia(0, 576)
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, lifeupXp, lifeupYp, lifeupL, lifeupA)) {
			se(god_mode_on == verdadeiro) {
				pontuacao_real = pontuacao_real + 25000
				lifeup_chance = u.sorteia(53, 60)
			} senao {
				pontuacao_real = pontuacao_real + 500
				lifeup_chance = u.sorteia(1, 60)
			}
			vida = vida + 1
			se(vida > 11) {
				vida = vida - 1
			}
			lifeupgradecounter = lifeupgradecounter + 1
			lifeupXp = 800.0
			lifeupYp = u.sorteia(0, 576)
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, bossXp, bossYp, bossL, bossA)) {
			laser_perXp = -20
			laser_perYp = -20
			laser_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						bosslife = bosslife - perlaserdano*2
					} senao {
						bosslife = bosslife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perlaserdano*2
				} senao {
					bosslife = bosslife - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, bossXp, bossYp, bossL, bossA)) {
			laser2_perXp = -20
			laser2_perYp = -20
			laser2_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						bosslife = bosslife - perlaserdano*2
					} senao {
						bosslife = bosslife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perlaserdano*2
				} senao {
					bosslife = bosslife - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, bossXp, bossYp, bossL, bossA)) {
			laser3_perXp = -20
			laser3_perYp = -20
			laser3_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						bosslife = bosslife - perlaserdano*2
					} senao {
						bosslife = bosslife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perlaserdano*2
				} senao {
					bosslife = bosslife - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, bossXp, bossYp, bossL, bossA)) {
			laser4_perXp = -20
			laser4_perYp = -20
			laser4_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						bosslife = bosslife - perlaserdano*2
					} senao {
						bosslife = bosslife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perlaserdano*2
				} senao {
					bosslife = bosslife - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, bossXp, bossYp, bossL, bossA)) {
			laser5_perXp = -20
			laser5_perYp = -20
			laser5_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						bosslife = bosslife - perlaserdano*2
					} senao {
						bosslife = bosslife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perlaserdano*2
				} senao {
					bosslife = bosslife - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, bossXp, bossYp, bossL, bossA)) {
			laser6_perXp = -20
			laser6_perYp = -20
			laser6_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						bosslife = bosslife - perlaserdano*2
					} senao {
						bosslife = bosslife - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perlaserdano*2
				} senao {
					bosslife = bosslife - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, bossXp, bossYp, bossL, bossA)) {
			blast_perXp = -24
			blast_perYp = -24
			blast_per_on = falso
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					bosslife = bosslife - perblastdano*2
				} senao {
					bosslife = bosslife - perblastdano
				}
			}
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			se(vida == 4) {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - (perbodydano*4)
				} senao {
					enemy1life = enemy1life - (perbodydano*2)
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perbodydano*2
				} senao {
					enemy1life = enemy1life - perbodydano
				}
			}
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			} senao {
				perXp = perXp -75
			}
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			laser_perXp = -20
			laser_perYp = -20
			laser_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy1life = enemy1life - perlaserdano*2
					} senao {
						enemy1life = enemy1life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perlaserdano*2
				} senao {
					enemy1life = enemy1life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			laser2_perXp = -20
			laser2_perYp = -20
			laser2_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy1life = enemy1life - perlaserdano*2
					} senao {
						enemy1life = enemy1life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perlaserdano*2
				} senao {
					enemy1life = enemy1life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			laser3_perXp = -20
			laser3_perYp = -20
			laser3_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy1life = enemy1life - perlaserdano*2
					} senao {
						enemy1life = enemy1life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perlaserdano*2
				} senao {
					enemy1life = enemy1life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			laser4_perXp = -20
			laser4_perYp = -20
			laser4_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy1life = enemy1life - perlaserdano*2
					} senao {
						enemy1life = enemy1life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perlaserdano*2
				} senao {
					enemy1life = enemy1life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			laser5_perXp = -20
			laser5_perYp = -20
			laser5_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy1life = enemy1life - perlaserdano*2
					} senao {
						enemy1life = enemy1life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perlaserdano*2
				} senao {
					enemy1life = enemy1life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			laser6_perXp = -20
			laser6_perYp = -20
			laser6_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy1life = enemy1life - perlaserdano*2
					} senao {
						enemy1life = enemy1life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perlaserdano*2
				} senao {
					enemy1life = enemy1life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, enemy1Xp, enemy1Yp, enemy1L, enemy1A)) {
			blast_perXp = -24
			blast_perYp = -24
			blast_per_on = falso
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					enemy1life = enemy1life - perblastdano*2
				} senao {
					enemy1life = enemy1life - perblastdano
				}
			}
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy1_laserreto1Xp, enemy1_laserreto1Yp, enemy1_laserreto1L, enemy1_laserreto1A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy1_laserreto1Xp = -32
			enemy1_laserreto1Yp = -32
			enemy1_laserreto1_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy1_laserreto2Xp, enemy1_laserreto2Yp, enemy1_laserreto2L, enemy1_laserreto2A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy1_laserreto2Xp = -32
			enemy1_laserreto2Yp = -32
			enemy1_laserreto2_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy1_laserdiagonal1Xp, enemy1_laserdiagonal1Yp, enemy1_laserdiagonal1L, enemy1_laserdiagonal1A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy1_laserdiagonal1Xp = -32
			enemy1_laserdiagonal1Yp = -32
			enemy1_laserdiagonal1_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy1_laserdiagonal2Xp, enemy1_laserdiagonal2Yp, enemy1_laserdiagonal2L, enemy1_laserdiagonal2A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy1_laserdiagonal2Xp = -32
			enemy1_laserdiagonal2Yp = -32
			enemy1_laserdiagonal2_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			se(vida == 4) {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - (perbodydano*4)
				} senao {
					enemy2life = enemy2life - (perbodydano*2)
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perbodydano*2
				} senao {
					enemy2life = enemy2life - perbodydano
				}
			}
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			} senao {
				perXp = perXp -75
			}
		}
		se(ocorreu_colisao(laser_perXp, laser_perYp, laser_perL, laser_perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			laser_perXp = -20
			laser_perYp = -20
			laser_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy2life = enemy2life - perlaserdano*2
					} senao {
						enemy2life = enemy2life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perlaserdano*2
				} senao {
					enemy2life = enemy2life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser2_perXp, laser2_perYp, laser2_perL, laser2_perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			laser2_perXp = -20
			laser2_perYp = -20
			laser2_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy2life = enemy2life - perlaserdano*2
					} senao {
						enemy2life = enemy2life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perlaserdano*2
				} senao {
					enemy2life = enemy2life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser3_perXp, laser3_perYp, laser3_perL, laser3_perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			laser3_perXp = -20
			laser3_perYp = -20
			laser3_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy2life = enemy2life - perlaserdano*2
					} senao {
						enemy2life = enemy2life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perlaserdano*2
				} senao {
					enemy2life = enemy2life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser4_perXp, laser4_perYp, laser4_perL, laser4_perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			laser4_perXp = -20
			laser4_perYp = -20
			laser4_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy2life = enemy2life - perlaserdano*2
					} senao {
						enemy2life = enemy2life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perlaserdano*2
				} senao {
					enemy2life = enemy2life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser5_perXp, laser5_perYp, laser5_perL, laser5_perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			laser5_perXp = -20
			laser5_perYp = -20
			laser5_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy2life = enemy2life - perlaserdano*2
					} senao {
						enemy2life = enemy2life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perlaserdano*2
				} senao {
					enemy2life = enemy2life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(laser6_perXp, laser6_perYp, laser6_perL, laser6_perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			laser6_perXp = -20
			laser6_perYp = -20
			laser6_per_on = falso
			se(arma == 'b') {
				se(nao t.tecla_pressionada(shoot)) {
					se(god_mode_on == verdadeiro) {
						enemy2life = enemy2life - perlaserdano*2
					} senao {
						enemy2life = enemy2life - perlaserdano
					}
				}
			} senao {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perlaserdano*2
				} senao {
					enemy2life = enemy2life - perlaserdano
				}
			}
		}
		se(ocorreu_colisao(blast_perXp, blast_perYp, blast_perL, blast_perA, enemy2Xp, enemy2Yp, enemy2L, enemy2A)) {
			blast_perXp = -24
			blast_perYp = -24
			blast_per_on = falso
			se(nao t.tecla_pressionada(shoot)) {
				se(god_mode_on == verdadeiro) {
					enemy2life = enemy2life - perblastdano*2
				} senao {
					enemy2life = enemy2life - perblastdano
				}
			}
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy2_laserreto1Xp, enemy2_laserreto1Yp, enemy2_laserreto1L, enemy2_laserreto1A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy2_laserreto1Xp = -32
			enemy2_laserreto1Yp = -32
			enemy2_laserreto1_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy2_laserreto2Xp, enemy2_laserreto2Yp, enemy2_laserreto2L, enemy2_laserreto2A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy2_laserreto2Xp = -32
			enemy2_laserreto2Yp = -32
			enemy2_laserreto2_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy2_laserdiagonal1Xp, enemy2_laserdiagonal1Yp, enemy2_laserdiagonal1L, enemy2_laserdiagonal1A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy2_laserdiagonal1Xp = -32
			enemy2_laserdiagonal1Yp = -32
			enemy2_laserdiagonal1_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, enemy2_laserdiagonal2Xp, enemy2_laserdiagonal2Yp, enemy2_laserdiagonal2L, enemy2_laserdiagonal2A)) {
			vida = vida - 1
			se(god_mode_on == verdadeiro) {
				vida = vida + 1
			}
			enemy2_laserdiagonal2Xp = -32
			enemy2_laserdiagonal2Yp = -32
			enemy2_laserdiagonal2_on = falso
		}
		se(ocorreu_colisao(perXp, perYp, perL, perA, machinegunXp, machinegunYp, machinegunL, machinegunA)) {
			arma_machinegun = verdadeiro
			arma_atual = 1
			machinegunXfinal = machinegunXp
			machinegunYfinal = machinegunYp
			machinegunXp = 800.0
			machinegunYp = u.sorteia(0, 564)
			machinegun_chance = u.sorteia(1, 120)
			machinegun_text_on = verdadeiro
		}
	}

	funcao logico morto() {
		se(vida <= 0 e god_mode_on == falso) {
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}

	funcao coracoes(inteiro num_coracoes) {
		para(inteiro i = 1; i <= num_coracoes; i++) {
			se(vida >= i) {
				g.desenhar_imagem(2+((i-1)*34), 2, vida_cheia)
			} senao {
				g.desenhar_imagem(2+((i-1)*34), 2, vida_vazia)
			}
		}
		se(vida > num_coracoes) {
			g.desenhar_imagem((perXp-3), (perYp-3), escudo)
		}
	}

	funcao desenhar_vida() {
		escolha(lifeupgradecounter) {
			caso 0:
			coracoes(3)
			pare
			caso 1:
			coracoes(4)
			pare
			caso 2:
			coracoes(5)
			pare
			caso 3:
			coracoes(6)
			pare
			caso 4:
			coracoes(7)
			pare
			caso 5:
			coracoes(8)
			pare
			caso 6:
			coracoes(9)
			pare
			caso contrario:
			coracoes(10)
			pare
		}
	}

	funcao desenhar_pontuacao() {
		g.definir_fonte_texto("Power Green")
		g.definir_tamanho_texto(26.0)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_texto(635, -12, "Score: ")
		pontuacao = pontuacao_inteira + " "
		g.desenhar_texto(700, -10, pontuacao)
	}

	funcao arma_Basic() {
		se(laser_per_on == verdadeiro ou t.tecla_pressionada(shoot)) {
				desenhar_laser_per()
			}
		se(blast_per_on == verdadeiro ou laser_to_blastcounter >= 500) {
			desenhar_especial_per()
		}
		se(nao t.tecla_pressionada(shoot)) {
			laser_to_blastcounter = 0
		}
	}

	funcao arma_Machinegun() {
		se(t.tecla_pressionada(shoot) ou laser_per_on ou laser2_per_on ou laser3_per_on ou laser4_per_on ou laser5_per_on ou laser6_per_on) {
			desenhar_laser_per()
		}
	}

	funcao desenhar_laser_per() {
		escolha(arma) {
			caso 'b':
			se(t.tecla_pressionada(shoot)) {
				laser_per_on = verdadeiro
				laser_perXp = perXp + 31
				laser_perYp = perYp + 8
				laser_to_blastcounter++
			}
			se(laser_per_on == verdadeiro) {
				blast_per_on = falso
			}
			se(laser_per_on) {
				g.desenhar_imagem(laser_perXp, laser_perYp, laser_per)
				laser_perXp = laser_perXp + 3
			}
			se(laser_perXp > 810) {
				laser_perXp = -20
				laser_perYp = -20
				laser_per_on = falso
			}
			pare
			caso 'm':
			se(t.tecla_pressionada(shoot) e laser_machineguncounter == 0) {
				laser_per_on = verdadeiro
				laser_perXp = perXp + 31
				laser_perYp = perYp + 8
			}
			se(t.tecla_pressionada(shoot) e laser_machineguncounter == 50) {
				laser2_per_on = verdadeiro
				laser2_perXp = perXp + 31
				laser2_perYp = perYp + 8
			}
			se(t.tecla_pressionada(shoot) e laser_machineguncounter == 100) {
				laser3_per_on = verdadeiro
				laser3_perXp = perXp + 31
				laser3_perYp = perYp + 8
			}
			se(t.tecla_pressionada(shoot) e laser_machineguncounter == 150) {
				laser4_per_on = verdadeiro
				laser4_perXp = perXp + 31
				laser4_perYp = perYp + 8
			}
			se(t.tecla_pressionada(shoot) e laser_machineguncounter == 200) {
				laser5_per_on = verdadeiro
				laser5_perXp = perXp + 31
				laser5_perYp = perYp + 8
			}
			se(t.tecla_pressionada(shoot) e laser_machineguncounter == 250) {
				laser6_per_on = verdadeiro
				laser6_perXp = perXp + 31
				laser6_perYp = perYp + 8
			}
			se(t.tecla_pressionada(shoot)) {
				laser_machineguncounter++
			}
			se(laser_machineguncounter == 299) {
				laser_machineguncounter = 0
			}
			se(laser_per_on) {
				g.desenhar_imagem(laser_perXp, laser_perYp, laser_per)
				laser_perXp = laser_perXp + 3
			}
			se(laser2_per_on) {
				g.desenhar_imagem(laser2_perXp, laser2_perYp, laser_per)
				laser2_perXp = laser2_perXp + 3
			}
			se(laser3_per_on) {
				g.desenhar_imagem(laser3_perXp, laser3_perYp, laser_per)
				laser3_perXp = laser3_perXp + 3
			}
			se(laser4_per_on) {
				g.desenhar_imagem(laser4_perXp, laser4_perYp, laser_per)
				laser4_perXp = laser4_perXp + 3
			}
			se(laser5_per_on) {
				g.desenhar_imagem(laser5_perXp, laser5_perYp, laser_per)
				laser5_perXp = laser5_perXp + 3
			}
			se(laser6_per_on) {
				g.desenhar_imagem(laser6_perXp, laser6_perYp, laser_per)
				laser6_perXp = laser6_perXp + 3
			}
			se(laser_perXp > 810) {
				laser_perXp = -20
				laser_perYp = -20
				laser_per_on = falso
			}
			se(laser2_perXp > 810) {
				laser2_perXp = -20
				laser2_perYp = -20
				laser2_per_on = falso
			}
			se(laser3_perXp > 810) {
				laser3_perXp = -20
				laser3_perYp = -20
				laser3_per_on = falso
			}
			se(laser4_perXp > 810) {
				laser4_perXp = -20
				laser4_perYp = -20
				laser4_per_on = falso
			}
			se(laser5_perXp > 810) {
				laser5_perXp = -20
				laser5_perYp = -20
				laser5_per_on = falso
			}
			se(laser6_perXp > 810) {
				laser6_perXp = -20
				laser6_perYp = -20
				laser6_per_on = falso
			}
			pare
			caso contrario:
			pare
		}
	}

	funcao desenhar_especial_per() {
		escolha(arma) {
			caso 'b':
			se(laser_to_blastcounter >= 500) {
				blast_per_on = verdadeiro
			}
			se(blast_per_on == verdadeiro) {
				laser_per_on = falso
			}
			se(blast_per_on) {
				g.desenhar_imagem(blast_perXp, blast_perYp, blast_per)
				blast_perXp = blast_perXp + 1
			}
			se(t.tecla_pressionada(shoot)) {
				blast_perXp = perXp + 31
				blast_perYp = perYp + 4
			}
			se(blast_perXp > 810) {
				blast_perXp = -24
				blast_perYp = -24
				blast_per_on = falso
				laser_to_blastcounter = 0
			}
			pare
			caso 'm':
			pare
			caso contrario:
			pare
		}
	}

	funcao logico boss_morto() {
		se(bosslife <= 0) {
			pontuacao_real = pontuacao_real + 5000
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}
	
	funcao desenhar_boss() {
		g.desenhar_imagem(bossXp, bossYp, boss)
		bossXinteiro = bossXp
		bossYinteiro = bossYp
		se(bossXinteiro > 600) {
			bossXp = bossXp - 0.1
		} senao {
			se(bossXinteiro%2 == 0) {
				bossYp = bossYp + 0.75
				se(bossYinteiro >= 472) {
					bossXp--
				}
				se(boss_contador1 <= 0) {
					boss_laser_reto2Xp = bossXp + 8.0
					boss_laser_reto2Yp = bossYp + 41.0
					laserR2_on = verdadeiro
					
					boss_laser_reto3Xp = bossXp + 8.0
					boss_laser_reto3Yp = bossYp + 85.0
					laserR3_on = verdadeiro
					
					boss_laser_diagonalXp = bossXp + 32.0
					boss_laser_diagonalYp = bossYp - 1.0
					laserD1_on = verdadeiro
					
					boss_laser_diagonal2Xp = bossXp + 32.0
					boss_laser_diagonal2Yp = bossYp + 65.0
					laserD2_on = verdadeiro

					se(bosslife <= 12) {
						boss_contador1 = 500
					} senao {
						boss_contador1 = 1000
					}
				}
				se(boss_contador2 <= 0) {
					boss_laser_retoXp = bossXp + 20.0
					boss_laser_retoYp = bossYp + 21.0
					laserR1_on = verdadeiro

					boss_laser_reto4Xp = bossXp + 20.0
					boss_laser_reto4Yp = bossYp + 105.0
					laserR4_on = verdadeiro

					se(bosslife <= 12) {
						boss_contador2 = 750
					} senao {
						boss_contador2 = 1500
					}
				}
				se(boss_contador3 <= 0) {
					boss_ballXp = bossXp - 56.0
					boss_ballYp = bossYp + 32.0
					ball_on = verdadeiro

					se(bosslife <= 12) {
						boss_contador3 = 1000
					} senao {
						boss_contador3 = 2000
					}
				}
			} senao {
				bossYp = bossYp - 0.75
				se(bossYinteiro <= 0) {
					bossXp--
				}
				se(boss_contador1 <= 0) {
					boss_laser_reto2Xp = bossXp + 8.0
					boss_laser_reto2Yp = bossYp + 41.0
					laserR2_on = verdadeiro
					
					boss_laser_reto3Xp = bossXp + 8.0
					boss_laser_reto3Yp = bossYp + 85.0
					laserR3_on = verdadeiro
					
					boss_laser_diagonalXp = bossXp + 32.0
					boss_laser_diagonalYp = bossYp - 1.0
					laserD1_on = verdadeiro
					
					boss_laser_diagonal2Xp = bossXp + 32.0
					boss_laser_diagonal2Yp = bossYp + 65.0
					laserD2_on = verdadeiro

					se(bosslife <= 12) {
						boss_contador1 = 500
					} senao {
						boss_contador1 = 1000
					}
				}
				se(boss_contador2 <= 0) {
					boss_laser_retoXp = bossXp + 20.0
					boss_laser_retoYp = bossYp + 21.0
					laserR1_on = verdadeiro

					boss_laser_reto4Xp = bossXp + 20.0
					boss_laser_reto4Yp = bossYp + 105.0
					laserR4_on = verdadeiro

					se(bosslife <= 12) {
						boss_contador2 = 750
					} senao {
						boss_contador2 = 1500
					}
				}
				se(boss_contador3 <= 0) {
					boss_ballXp = bossXp - 56.0
					boss_ballYp = bossYp + 32.0
					ball_on = verdadeiro

					se(bosslife <= 12) {
						boss_contador3 = 1000
					} senao {
						boss_contador3 = 2000
					}
				}
			}
		}
	}
	
	funcao desenhar_laser_boss() {
		se(laserR1_on) {
			g.desenhar_imagem(boss_laser_retoXp, boss_laser_retoYp, boss_laser_reto)
			boss_laser_retoXp = boss_laser_retoXp - laser_retospeed
			se(boss_laser_retoXp < -32) {
				boss_laser_retoXp = -32.0
				boss_laser_retoYp = -32.0
				laserR1_on = falso
			}
		}
		se(laserR2_on) {
			g.desenhar_imagem(boss_laser_reto2Xp, boss_laser_reto2Yp, boss_laser_reto)
			boss_laser_reto2Xp = boss_laser_reto2Xp - laser_retospeed
			se(boss_laser_reto2Xp < -32) {
				boss_laser_reto2Xp = -32.0
				boss_laser_reto2Yp = -32.0
				laserR2_on = falso
			}
		}
		se(laserR3_on) {
			g.desenhar_imagem(boss_laser_reto3Xp, boss_laser_reto3Yp, boss_laser_reto)
			boss_laser_reto3Xp = boss_laser_reto3Xp - laser_retospeed
			se(boss_laser_reto3Xp < -32) {
				boss_laser_reto3Xp = -32.0
				boss_laser_reto3Yp = -32.0
				laserR3_on = falso
			}
		}
		se(laserR4_on) {
			g.desenhar_imagem(boss_laser_reto4Xp, boss_laser_reto4Yp, boss_laser_reto)
			boss_laser_reto4Xp = boss_laser_reto4Xp - laser_retospeed
			se(boss_laser_reto4Xp < -32) {
				boss_laser_reto4Xp = -32.0
				boss_laser_reto4Yp = -32.0
				laserR4_on = falso
			}
		}
		se(laserD1_on) {
			g.desenhar_imagem(boss_laser_diagonalXp, boss_laser_diagonalYp, boss_laser_diagonal_up)
			boss_laser_diagonalXp = boss_laser_diagonalXp - laser_diagonalspeed
			boss_laser_diagonalYp = boss_laser_diagonalYp - laser_diagonalspeed
			se(boss_laser_diagonalYp < -32) {
				boss_laser_diagonalXp = -32.0
				boss_laser_diagonalYp = -32.0
				laserD1_on = falso
			}
		}
		se(laserD2_on) {
			g.desenhar_imagem(boss_laser_diagonal2Xp, boss_laser_diagonal2Yp, boss_laser_diagonal_down)
			boss_laser_diagonal2Xp = boss_laser_diagonal2Xp - laser_diagonalspeed
			boss_laser_diagonal2Yp = boss_laser_diagonal2Yp + laser_diagonalspeed
			se(boss_laser_diagonal2Yp > 802) {
				boss_laser_diagonal2Xp = -32.0
				boss_laser_diagonal2Yp = -32.0
				laserD2_on = falso
			}
		}
		se(ball_on) {
			g.desenhar_imagem(boss_ballXp, boss_ballYp, boss_ball)
			boss_ballXp = boss_ballXp - ballspeed
			se(boss_ballXp < -64) {
				boss_ballXp = -64.0
				boss_ballYp = -64.0
				ball_on = falso
			}
		}
	}
	
	funcao desenhar_vida_boss_barra() {
		g.definir_cor(cor_bossvida7)
		g.desenhar_retangulo(422 + (12*(30-bosslife)), 568, 360 - (12*(30-bosslife)), 14, verdadeiro, verdadeiro)
		g.definir_cor(cor_bossvida6)
		g.desenhar_retangulo(422 + (12*(30-bosslife)), 570, 360 - (12*(30-bosslife)), 12, verdadeiro, verdadeiro)
		g.definir_cor(cor_bossvida5)
		g.desenhar_retangulo(422 + (12*(30-bosslife)), 572, 360 - (12*(30-bosslife)), 10, verdadeiro, verdadeiro)
		g.definir_cor(cor_bossvida4)
		g.desenhar_retangulo(422 + (12*(30-bosslife)), 574, 360 - (12*(30-bosslife)), 8, verdadeiro, verdadeiro)
		g.definir_cor(cor_bossvida3)
		g.desenhar_retangulo(422 + (12*(30-bosslife)), 576, 360 - (12*(30-bosslife)), 6, verdadeiro, verdadeiro)
		g.definir_cor(cor_bossvida2)
		g.desenhar_retangulo(422 + (12*(30-bosslife)), 578, 360 - (12*(30-bosslife)), 4, verdadeiro, verdadeiro)
		g.definir_cor(cor_bossvida1)
		g.desenhar_retangulo(422 + (12*(30-bosslife)), 580, 360 - (12*(30-bosslife)), 2, verdadeiro, verdadeiro)
		g.desenhar_imagem(410, 564, boss_lifebar)
		texto(falso, "Power Green","branco", 36.0, 495, 515, "Patrol Crusader", 0, 0, "")
	}

	funcao desenhar_dmgupgrade() {
		se(dmgup_chance == 60) {
			g.desenhar_imagem(dmgupXp, dmgupYp, dmgupgrade)
		} senao {
			dmgupYp = dmgupYp + 650
		}	
		se(dmgupXp < -24) {
			dmgupXp = 800.0
			dmgupYp = u.sorteia(0, 576)
			se(god_mode_on == verdadeiro) {
				dmgup_chance = u.sorteia(59, 60)
			} senao {
				dmgup_chance = u.sorteia(1, 60)
			}
		}
		se(dmgupgradecounter != 0) {
			cadeia dmgup_cadeia
			dmgup_cadeia = dmgupgradecounter + " "
			g.desenhar_imagem(4, 36, dmgupgrade)
			texto(falso, "Power Green", "branco", 26.0, 32, 23, dmgup_cadeia, 0, 0, "")
		}
	}

	funcao desenhar_speedupgrade() {
		se(speedup_chance == 60) {
			g.desenhar_imagem(speedupXp, speedupYp, speedupgrade)
		} senao {
			speedupYp = speedupYp + 650
		}	
		se(speedupXp < -24) {
			speedupXp = 800.0
			speedupYp = u.sorteia(0, 576)
			se(god_mode_on == verdadeiro) {
				speedup_chance = u.sorteia(57, 60)
			} senao {
				speedup_chance = u.sorteia(1, 60)
			}
		}
		se(speedupgradecounter != 0) {
			cadeia speedup_cadeia
			speedup_cadeia = speedupgradecounter + " "
			g.desenhar_imagem(64, 36, speedupgrade)
			texto(falso, "Power Green", "branco", 26.0, 92, 23, speedup_cadeia, 0, 0, "")
		}
	}

	funcao desenhar_lifeupgrade() {
		se(lifeup_chance == 60) {
			g.desenhar_imagem(lifeupXp, lifeupYp, lifeupgrade)
		} senao {
			lifeupYp = lifeupYp + 650
		}	
		se(lifeupXp < -24) {
			lifeupXp = 800.0
			lifeupYp = u.sorteia(0, 576)
			se(god_mode_on == verdadeiro) {
				lifeup_chance = u.sorteia(53, 60)
			} senao {
				lifeup_chance = u.sorteia(1, 60)
			}
		}
	}

	funcao desenhar_machinegun() {
		se(machinegun_chance == 120) {
			g.desenhar_imagem(machinegunXp, machinegunYp, machinegun)	
		} senao {
			machinegunYp = machinegunYp + 650
		}
		se(machinegunXp < -36) {
			machinegunXp = 800.0
			machinegunYp = u.sorteia(0, 564)
			machinegun_chance = u.sorteia(1, 120)
		}
		se(machinegun_text_on) {
			nome_armas(machinegunXfinal - 50, machinegunYfinal - 35, "MACHINE GUN!")
			se(nome_armascontador > 765) {
				nome_armascontador = 0
				machinegun_text_on = falso
			}
		}
	}

	funcao logico enemy1_morto() {
		se(enemy1life <= 0) {
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}
	
	funcao logico enemy2_morto() {
		se(enemy2life <= 0) {
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}

	funcao desenhar_enemy(inteiro enemyqtd) {
		escolha(enemyqtd) {
			caso 1:
			se(enemy1_morto()) {
				se(god_mode_on == verdadeiro) {
					pontuacao_real = pontuacao_real + 25000
				} senao {
					pontuacao_real = pontuacao_real + 500
				}
				dmgup_chance = u.sorteia(59, 60)
				se(dmgup_chance == 60) {
					dmgupXp = enemy1Xp
					dmgupYp = enemy1Yp
				} senao {
					speedup_chance = u.sorteia(59, 60)
					se(speedup_chance == 60) {
						speedupXp = enemy1Xp
						speedupYp = enemy1Yp
					} senao {
						lifeup_chance = u.sorteia(59, 60)
						se(lifeup_chance == 60) {
							lifeupXp = enemy1Xp
							lifeupYp = enemy1Yp
						}
					}
				}
				enemy1Xp = u.sorteia(1600, 3200) + 0.0
				enemy1Yp = u.sorteia(0, 536) + 0.0
				enemy1life = 9.0
				enemy1_contador1 = (enemy1Xp - 700)*2 + 700
				enemy1_contador2 = (enemy1Xp - 700)*2 + 1400
			}
			g.desenhar_imagem(enemy1Xp, enemy1Yp, enemy)
			se(enemy1Xp > 700) {
				enemy1Xp = enemy1Xp - enemyspeed
			} senao {
				se(enemy1_contador1 <= 0) {
					enemy1_laserreto1Xp = enemy1Xp - 1.0
					enemy1_laserreto1Yp = enemy1Yp + 18.0
					enemy1_laserreto1_on = verdadeiro

					enemy1_laserdiagonal2Xp = enemy1Xp + 12.0
					enemy1_laserdiagonal2Yp = enemy1Yp + 62.0
					enemy1_laserdiagonal2_on = verdadeiro

					enemy1_contador1 = 1400
				}
				se(enemy1_contador2 <= 0) {
					enemy1_laserreto2Xp = enemy1Xp - 1.0
					enemy1_laserreto2Yp = enemy1Yp + 42.0
					enemy1_laserreto2_on = verdadeiro

					enemy1_laserdiagonal1Xp = enemy1Xp + 12.0
					enemy1_laserdiagonal1Yp = enemy1Yp + 2.0
					enemy1_laserdiagonal1_on = verdadeiro

					enemy1_contador2 = 1400
				}	
			}
			enemy1_contador1--
			enemy1_contador2--
			pare
			caso 2:
			se(enemy1_morto()) {
				se(god_mode_on == verdadeiro) {
					pontuacao_real = pontuacao_real + 25000
				} senao {
					pontuacao_real = pontuacao_real + 500
				}
				dmgup_chance = u.sorteia(59, 60)
				se(dmgup_chance == 60) {
					dmgupXp = enemy1Xp
					dmgupYp = enemy1Yp
				} senao {
					speedup_chance = u.sorteia(59, 60)
					se(speedup_chance == 60) {
						speedupXp = enemy1Xp
						speedupYp = enemy1Yp
					} senao {
						lifeup_chance = u.sorteia(59, 60)
						se(lifeup_chance == 60) {
							lifeupXp = enemy1Xp
							lifeupYp = enemy1Yp
						}
					}
				}
				enemy1Xp = u.sorteia(1600, 3200) + 0.0
				enemy1Yp = u.sorteia(0, 536) + 0.0
				enemy1life = 9.0
				enemy1_contador1 = (enemy1Xp - 700)*2 + 700
				enemy1_contador2 = (enemy1Xp - 700)*2 + 1400
			}
			se(enemy2_morto()) {
				se(god_mode_on == verdadeiro) {
					pontuacao_real = pontuacao_real + 25000
				} senao {
					pontuacao_real = pontuacao_real + 500
				}
				dmgup_chance = u.sorteia(59, 60)
				se(dmgup_chance == 60) {
					dmgupXp = enemy2Xp
					dmgupYp = enemy2Yp
				} senao {
					speedup_chance = u.sorteia(59, 60)
					se(speedup_chance == 60) {
						speedupXp = enemy2Xp
						speedupYp = enemy2Yp
					} senao {
						lifeup_chance = u.sorteia(59, 60)
						se(lifeup_chance == 60) {
							lifeupXp = enemy2Xp
							lifeupYp = enemy2Yp
						}
					}
				}
				enemy2Xp = u.sorteia(1600, 3200) + 0.0
				enemy2Yp = u.sorteia(0, 536) + 0.0
				enemy2life = 9.0
				enemy2_contador1 = (enemy2Xp - 700)*2 + 700
				enemy2_contador2 = (enemy2Xp - 700)*2 + 1400
			}
			g.desenhar_imagem(enemy1Xp, enemy1Yp, enemy)
			se(enemy1Xp > 700) {
				enemy1Xp = enemy1Xp - enemyspeed
			} senao {
				se(enemy1_contador1 <= 0) {
					enemy1_laserreto1Xp = enemy1Xp - 1.0
					enemy1_laserreto1Yp = enemy1Yp + 18.0
					enemy1_laserreto1_on = verdadeiro

					enemy1_laserdiagonal2Xp = enemy1Xp + 12.0
					enemy1_laserdiagonal2Yp = enemy1Yp + 62.0
					enemy1_laserdiagonal2_on = verdadeiro

					enemy1_contador1 = 1400
				}
				se(enemy1_contador2 <= 0) {
					enemy1_laserreto2Xp = enemy1Xp - 1.0
					enemy1_laserreto2Yp = enemy1Yp + 42.0
					enemy1_laserreto2_on = verdadeiro

					enemy1_laserdiagonal1Xp = enemy1Xp + 12.0
					enemy1_laserdiagonal1Yp = enemy1Yp + 2.0
					enemy1_laserdiagonal1_on = verdadeiro

					enemy1_contador2 = 1400
				}	
			}
			g.desenhar_imagem(enemy2Xp, enemy2Yp, enemy)
			se(enemy2Xp > 700) {
				enemy2Xp = enemy2Xp - enemyspeed
			} senao {
				se(enemy2_contador1 <= 0) {
					enemy2_laserreto1Xp = enemy2Xp - 1.0
					enemy2_laserreto1Yp = enemy2Yp + 18.0
					enemy2_laserreto1_on = verdadeiro

					enemy2_laserdiagonal2Xp = enemy2Xp + 12.0
					enemy2_laserdiagonal2Yp = enemy2Yp + 62.0
					enemy2_laserdiagonal2_on = verdadeiro

					enemy2_contador1 = 1400
				}
				se(enemy2_contador2 <= 0) {
					enemy2_laserreto2Xp = enemy2Xp - 1.0
					enemy2_laserreto2Yp = enemy2Yp + 42.0
					enemy2_laserreto2_on = verdadeiro

					enemy2_laserdiagonal1Xp = enemy2Xp + 12.0
					enemy2_laserdiagonal1Yp = enemy2Yp + 2.0
					enemy2_laserdiagonal1_on = verdadeiro

					enemy2_contador2 = 1400
				}	
			}
			enemy1_contador1--
			enemy1_contador2--
			enemy2_contador1--
			enemy2_contador2--
			pare
		}
	}

	funcao desenhar_enemy_laser() {
		se(enemy1_laserreto1_on) {
			g.desenhar_imagem(enemy1_laserreto1Xp, enemy1_laserreto1Yp, boss_laser_reto)
			enemy1_laserreto1Xp = enemy1_laserreto1Xp - enemylaserspeed
			se(enemy1_laserreto1Xp < -32) {
				enemy1_laserreto1Xp = -32
				enemy1_laserreto1Yp = -32
				enemy1_laserreto1_on = falso
			}
		}
		se(enemy1_laserreto2_on) {
			g.desenhar_imagem(enemy1_laserreto2Xp, enemy1_laserreto2Yp, boss_laser_reto)
			enemy1_laserreto2Xp = enemy1_laserreto2Xp - enemylaserspeed
			se(enemy1_laserreto2Xp < -32) {
				enemy1_laserreto2Xp = -32
				enemy1_laserreto2Yp = -32
				enemy1_laserreto2_on = falso
			}
		}
		se(enemy1_laserdiagonal1_on) {
			g.desenhar_imagem(enemy1_laserdiagonal1Xp, enemy1_laserdiagonal1Yp, enemy_laser_diagonal_up)
			enemy1_laserdiagonal1Xp = enemy1_laserdiagonal1Xp - enemylaserspeed
			enemy1_laserdiagonal1Yp = enemy1_laserdiagonal1Yp - enemylaserspeed/2
			se(enemy1_laserdiagonal1Xp < -32) {
				enemy1_laserdiagonal1Xp = -32
				enemy1_laserdiagonal1Yp = -32
				enemy1_laserdiagonal1_on = falso
			}
		}
		se(enemy1_laserdiagonal2_on) {
			g.desenhar_imagem(enemy1_laserdiagonal2Xp, enemy1_laserdiagonal2Yp, enemy_laser_diagonal_down)
			enemy1_laserdiagonal2Xp = enemy1_laserdiagonal2Xp - enemylaserspeed
			enemy1_laserdiagonal2Yp = enemy1_laserdiagonal2Yp + enemylaserspeed/2
			se(enemy1_laserdiagonal2Xp < -32) {
				enemy1_laserdiagonal2Xp = -32
				enemy1_laserdiagonal2Yp = -32
				enemy1_laserdiagonal2_on = falso
			}
		}
		se(enemy2_laserreto1_on) {
			g.desenhar_imagem(enemy2_laserreto1Xp, enemy2_laserreto1Yp, boss_laser_reto)
			enemy2_laserreto1Xp = enemy2_laserreto1Xp - enemylaserspeed
			se(enemy2_laserreto1Xp < -32) {
				enemy2_laserreto1Xp = -32
				enemy2_laserreto1Yp = -32
				enemy2_laserreto1_on = falso
			}
		}
		se(enemy2_laserreto2_on) {
			g.desenhar_imagem(enemy2_laserreto2Xp, enemy2_laserreto2Yp, boss_laser_reto)
			enemy2_laserreto2Xp = enemy2_laserreto2Xp - enemylaserspeed
			se(enemy2_laserreto2Xp < -32) {
				enemy2_laserreto2Xp = -32
				enemy2_laserreto2Yp = -32
				enemy2_laserreto2_on = falso
			}
		}
		se(enemy2_laserdiagonal1_on) {
			g.desenhar_imagem(enemy2_laserdiagonal1Xp, enemy2_laserdiagonal1Yp, enemy_laser_diagonal_up)
			enemy2_laserdiagonal1Xp = enemy2_laserdiagonal1Xp - enemylaserspeed
			enemy2_laserdiagonal1Yp = enemy2_laserdiagonal1Yp - enemylaserspeed/2
			se(enemy2_laserdiagonal1Xp < -32) {
				enemy2_laserdiagonal1Xp = -32
				enemy2_laserdiagonal1Yp = -32
				enemy2_laserdiagonal1_on = falso
			}
		}
		se(enemy2_laserdiagonal2_on) {
			g.desenhar_imagem(enemy2_laserdiagonal2Xp, enemy2_laserdiagonal2Yp, enemy_laser_diagonal_down)
			enemy2_laserdiagonal2Xp = enemy2_laserdiagonal2Xp - enemylaserspeed
			enemy2_laserdiagonal2Yp = enemy2_laserdiagonal2Yp + enemylaserspeed/2
			se(enemy2_laserdiagonal2Xp < -32) {
				enemy2_laserdiagonal2Xp = -32
				enemy2_laserdiagonal2Yp = -32
				enemy2_laserdiagonal2_on = falso
			}
		}
	}

	funcao desenhar_savestate(inteiro saveatual) {
		escolha(saveatual) {
			caso 1:
			savestate1 = a.abrir_arquivo("./savestate1.txt", a.MODO_LEITURA)
			savestate1vida = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			savestate1lifeupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			savestate1speedupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			savestate1dmgupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			savestate1progresso = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			savestate1score = p.cadeia_para_inteiro(a.ler_linha(savestate1), 10)
			a.fechar_arquivo(savestate1)
			
			g.desenhar_retangulo(32, 250, 224, 224, falso, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(37, 255, 214, 214, falso, verdadeiro)
			
			se(savestate1progresso != 0) {
				g.desenhar_imagem(128, 346, per)
				para(inteiro i = 1; i <= savestate1lifeupcounter+3; i++) {
					se(savestate1vida >= i) {
						se(i <= 6) {
							g.desenhar_imagem(39+((i-1)*34), 257, vida_cheia)
						} senao {
							g.desenhar_imagem(39+((i-7)*34), 291, vida_cheia)
						}
					} senao {
						se(i <= 6) {
							g.desenhar_imagem(39+((i-1)*34), 257, vida_vazia)
						} senao {
							g.desenhar_imagem(39+((i-7)*34), 291, vida_vazia)
						}
					}
				}
				se(savestate1vida > savestate1lifeupcounter+3) {
					g.desenhar_imagem((128-3), (346-3), escudo)
				}
				se(savestate1dmgupcounter != 0) {
					cadeia dmgup_cadeia
					dmgup_cadeia = savestate1dmgupcounter + " "
					g.desenhar_imagem(41, 441, dmgupgrade)
					texto(falso, "Power Green", "branco", 26.0, 69, 428, dmgup_cadeia, 0, 0, "")
				}
				se(savestate1speedupcounter != 0) {
					cadeia speedup_cadeia
					speedup_cadeia = savestate1speedupcounter + " "
					g.desenhar_imagem(101, 441, speedupgrade)
					texto(falso, "Power Green", "branco", 26.0, 129, 428, speedup_cadeia, 0, 0, "")
				}
			}
			pare
			caso 2:
			savestate2 = a.abrir_arquivo("./savestate2.txt", a.MODO_LEITURA)
			savestate2vida = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			savestate2lifeupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			savestate2speedupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			savestate2dmgupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			savestate2progresso = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			savestate2score = p.cadeia_para_inteiro(a.ler_linha(savestate2), 10)
			a.fechar_arquivo(savestate1)
			
			g.desenhar_retangulo(288, 250, 224, 224, falso, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(293, 255, 214, 214, falso, verdadeiro)
			
			se(savestate2progresso != 0) {
				g.desenhar_imagem(128+256, 346, per)
				para(inteiro i = 1; i <= savestate2lifeupcounter+3; i++) {
					se(savestate2vida >= i) {
						se(i <= 6) {
							g.desenhar_imagem(39+((i-1)*34)+256, 257, vida_cheia)
						} senao {
							g.desenhar_imagem(39+((i-7)*34)+256, 291, vida_cheia)
						}
					} senao {
						se(i <= 6) {
							g.desenhar_imagem(39+((i-1)*34)+256, 257, vida_vazia)
						} senao {
							g.desenhar_imagem(39+((i-7)*34)+256, 291, vida_vazia)
						}
					}
				}
				se(savestate2vida > savestate2lifeupcounter+3) {
					g.desenhar_imagem((128-3+256), (346-3), escudo)
				}
				se(savestate2dmgupcounter != 0) {
					cadeia dmgup_cadeia
					dmgup_cadeia = savestate2dmgupcounter + " "
					g.desenhar_imagem(41+256, 441, dmgupgrade)
					texto(falso, "Power Green", "branco", 26.0, 69+256, 428, dmgup_cadeia, 0, 0, "")
				}
				se(savestate2speedupcounter != 0) {
					cadeia speedup_cadeia
					speedup_cadeia = savestate2speedupcounter + " "
					g.desenhar_imagem(101+256, 441, speedupgrade)
					texto(falso, "Power Green", "branco", 26.0, 129+256, 428, speedup_cadeia, 0, 0, "")
				}
			}
			pare
			caso 3:
			savestate3 = a.abrir_arquivo("./savestate3.txt", a.MODO_LEITURA)
			savestate3vida = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			savestate3lifeupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			savestate3speedupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			savestate3dmgupcounter = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			savestate3progresso = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			savestate3score = p.cadeia_para_inteiro(a.ler_linha(savestate3), 10)
			a.fechar_arquivo(savestate3)
			
			g.desenhar_retangulo(544, 250, 224, 224, falso, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(549, 255, 214, 214, falso, verdadeiro)
			
			se(savestate3progresso != 0) {
				g.desenhar_imagem(128+512, 346, per)
				para(inteiro i = 1; i <= savestate3lifeupcounter+3; i++) {
					se(savestate3vida >= i) {
						se(i <= 6) {
							g.desenhar_imagem(39+((i-1)*34)+512, 257, vida_cheia)
						} senao {
							g.desenhar_imagem(39+((i-7)*34)+512, 291, vida_cheia)
						}
					} senao {
						se(i <= 6) {
							g.desenhar_imagem(39+((i-1)*34)+512, 257, vida_vazia)
						} senao {
							g.desenhar_imagem(39+((i-7)*34)+512, 291, vida_vazia)
						}
					}
				}
				se(savestate3vida > savestate3lifeupcounter+3) {
					g.desenhar_imagem((128-3+512), (346-3), escudo)
				}
				se(savestate3dmgupcounter != 0) {
					cadeia dmgup_cadeia
					dmgup_cadeia = savestate3dmgupcounter + " "
					g.desenhar_imagem(41+512, 441, dmgupgrade)
					texto(falso, "Power Green", "branco", 26.0, 69+512, 428, dmgup_cadeia, 0, 0, "")
				}
				se(savestate3speedupcounter != 0) {
					cadeia speedup_cadeia
					speedup_cadeia = savestate3speedupcounter + " "
					g.desenhar_imagem(101+512, 441, speedupgrade)
					texto(falso, "Power Green", "branco", 26.0, 129+512, 428, speedup_cadeia, 0, 0, "")
				}
			}
			pare
		}
	}

	funcao confirmacao_newgame() {
		enquanto(exitconfirmacao == falso) {
			enquanto(confirmacaocontador == 0 e exitconfirmacao == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","cinza",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(cor_cinza)
				desenhar_savestate(1)
				g.definir_cor(cor_cinza)
				desenhar_savestate(2)
				g.definir_cor(cor_cinza)
				desenhar_savestate(3)
				
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(150, 200, 500, 200, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(155, 205, 490, 190, verdadeiro, verdadeiro)
				texto(falso,"Power Green","branco",32.0,165,215,"Are you sure you want to overwrite ",165,245,"this save?")

				texto(falso,"Power Green","amarelo",40.0,300,310,"NO",0,0,"")
				texto(falso,"Power Green","branco",40.0,450,310,"YES",0,0,"")
				se(t.tecla_pressionada(move_right) ou t.tecla_pressionada(move_left)) {
					confirmacaocontador = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitconfirmacao = verdadeiro
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					exitconfirmacao = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(confirmacaocontador == 1 e exitconfirmacao == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","cinza",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(cor_cinza)
				desenhar_savestate(1)
				g.definir_cor(cor_cinza)
				desenhar_savestate(2)
				g.definir_cor(cor_cinza)
				desenhar_savestate(3)
				
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(150, 200, 500, 200, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(155, 205, 490, 190, verdadeiro, verdadeiro)
				texto(falso,"Power Green","branco",32.0,165,215,"Are you sure you want to overwrite ",165,245,"this save?")

				texto(falso,"Power Green","branco",40.0,300,310,"NO",0,0,"")
				texto(falso,"Power Green","amarelo",40.0,450,310,"YES",0,0,"")
				se(t.tecla_pressionada(move_right) ou t.tecla_pressionada(move_left)) {
					confirmacaocontador = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitconfirmacao = verdadeiro
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					exitconfirmacao = verdadeiro
					resposta = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
		}
	}
	
	funcao new_game() {
		enquanto(exitnewgame == falso e comecar == falso) {
			enquanto(newgamecontador == 0 e exitnewgame == falso e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(g.COR_AMARELO)
				desenhar_savestate(1)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(2)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(3)
				se(t.tecla_pressionada(move_right)) {
					newgamecontador = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_left)) {
					newgamecontador = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					se(savestate1progresso != 0) {
						exitconfirmacao = falso
						u.aguarde(100)
						confirmacao_newgame()
						se(resposta == verdadeiro) {
							atualstate = 1
							resetar("total")
							salvar()
							comecar = verdadeiro
							u.aguarde(100)
						}
					} senao {
						atualstate = 1
						resetar("total")
						salvar()
						comecar = verdadeiro
						u.aguarde(100)
					}
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitnewgame = verdadeiro
				}
				g.renderizar()
			}
			enquanto(newgamecontador == 1 e exitnewgame == falso e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(1)
				g.definir_cor(g.COR_AMARELO)
				desenhar_savestate(2)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(3)
				se(t.tecla_pressionada(move_right)) {
					newgamecontador = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_left)) {
					newgamecontador = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					se(savestate2progresso != 0) {
						exitconfirmacao = falso
						u.aguarde(100)
						confirmacao_newgame()
						se(resposta == verdadeiro) {
							atualstate = 2
							resetar("total")
							salvar()
							comecar = verdadeiro
							u.aguarde(100)
						}
					} senao {
						atualstate = 2
						resetar("total")
						salvar()
						comecar = verdadeiro
						u.aguarde(100)
					}
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitnewgame = verdadeiro
				}
				g.renderizar()
			}
			enquanto(newgamecontador == 2 e exitnewgame == falso e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(1)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(2)
				g.definir_cor(g.COR_AMARELO)
				desenhar_savestate(3)
				se(t.tecla_pressionada(move_right)) {
					newgamecontador = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_left)) {
					newgamecontador = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					se(savestate3progresso != 0) {
						exitconfirmacao = falso
						u.aguarde(100)
						confirmacao_newgame()
						se(resposta == verdadeiro) {
							atualstate = 3
							resetar("total")
							salvar()
							comecar = verdadeiro
							u.aguarde(100)
						}
					} senao {
						atualstate = 3
						resetar("total")
						salvar()
						comecar = verdadeiro
						u.aguarde(100)
					}
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitnewgame = verdadeiro
				}
				g.renderizar()
			}
		}
	}

	funcao load_game() {
		enquanto(exitloadgame == falso e comecar == falso) {
			enquanto(loadgamecontador == 0 e exitloadgame == falso e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(g.COR_AMARELO)
				desenhar_savestate(1)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(2)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(3)
				se(t.tecla_pressionada(move_right)) {
					loadgamecontador = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_left)) {
					loadgamecontador = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					atualstate = 1
					load()
					comecar = verdadeiro
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitloadgame = verdadeiro
				}
				g.renderizar()
			}
			enquanto(loadgamecontador == 1 e exitloadgame == falso e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(1)
				g.definir_cor(g.COR_AMARELO)
				desenhar_savestate(2)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(3)
				se(t.tecla_pressionada(move_right)) {
					loadgamecontador = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_left)) {
					loadgamecontador = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					atualstate = 2
					load()
					comecar = verdadeiro
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitloadgame = verdadeiro
				}
				g.renderizar()
			}
			enquanto(loadgamecontador == 2 e exitloadgame == falso e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",96.0,95,50,"Choose save file:",0,0,"")
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(1)
				g.definir_cor(g.COR_BRANCO)
				desenhar_savestate(2)
				g.definir_cor(g.COR_AMARELO)
				desenhar_savestate(3)
				se(t.tecla_pressionada(move_right)) {
					loadgamecontador = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_left)) {
					loadgamecontador = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					atualstate = 3
					load()
					comecar = verdadeiro
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(menu_tecla)) {
					exitloadgame = verdadeiro
				}
				g.renderizar()
			}
		}
	}

	funcao audio_options() {
		enquanto(exitaudiooptions == falso) {
			enquanto(contadoraudiooptions == 0 e exitaudiooptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","branco",36.0,70,55,"Audio",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,90,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(5*tam_caracter)), 80, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE)) {
					contadoraudiooptions = 0
					exitaudiooptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
		}
	}

	funcao escolher_controles(inteiro comando) {
		desenhar_fundo()
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
		texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
		texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
		texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
		g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
		desenhar_gridoptions() 
		desenhar_controloptions(comando)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(300, 220, 200, 80, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(305, 225, 190, 70, verdadeiro, verdadeiro)
		texto(falso,"Power Green","branco",36.0,340,215,"New Key:",0,0,"")
		g.renderizar()
		u.aguarde(25)
		
		desenhar_fundo()
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
		texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
		texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
		texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
		g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
		desenhar_gridoptions() 
		desenhar_controloptions(comando)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(300, 220, 200, 80, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(305, 225, 190, 70, verdadeiro, verdadeiro)
		texto(falso,"Power Green","branco",36.0,340,215,"New Key:",0,0,"")
		escolha(comando) {
			caso 0:
			move_up = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(move_up)),0,0,"")
			pare
			caso 1:
			move_down = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(move_down)),0,0,"")
			pare
			caso 2:
			move_right = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(move_right)),0,0,"")
			pare
			caso 3:
			move_left = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(move_left)),0,0,"")
			pare
			caso 4:
			shoot = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(shoot)),0,0,"")
			pare
			caso 5:
			switch_weapon = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(switch_weapon)),0,0,"")
			pare
			caso 6:
			save_tecla = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(save_tecla)),0,0,"")
			pare
			caso 7:
			menu_tecla = t.ler_tecla()
			texto(falso,"Power Green","branco",36.0,385,240,p.caracter_para_cadeia(t.caracter_tecla(menu_tecla)),0,0,"")
			pare
		}
		g.renderizar()
		u.aguarde(400)
	}

	funcao control_options() {
		enquanto(exitcontroloptions == falso) {
			enquanto(contadorcontroloptions == 0 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				desenhar_gridoptions() 
				desenhar_controloptions(0)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 7
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(0)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadorcontroloptions == 1 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				desenhar_gridoptions() 
				desenhar_controloptions(1)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(1)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadorcontroloptions == 2 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				desenhar_gridoptions() 
				desenhar_controloptions(2)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 3
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(2)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadorcontroloptions == 3 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				desenhar_gridoptions() 
				desenhar_controloptions(3)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 4
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(3)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadorcontroloptions == 4 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				desenhar_gridoptions() 
				desenhar_controloptions(4)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 3
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 5
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(4)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadorcontroloptions == 5 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				desenhar_gridoptions() 
				desenhar_controloptions(5)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 4
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 6
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(5)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadorcontroloptions == 6 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				desenhar_gridoptions() 
				desenhar_controloptions(6)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 5
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 7
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(6)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadorcontroloptions == 7 e exitcontroloptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,85,"Controls",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,120,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 110, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				desenhar_gridoptions() 
				desenhar_controloptions(7)
				se(t.tecla_pressionada(move_up)) {
					contadorcontroloptions = 6
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadorcontroloptions = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					u.aguarde(100)
					escolher_controles(7)
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					contadorcontroloptions = 0
					exitcontroloptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
		}
	}

	funcao gameplay_options() {
		enquanto(exitgameplayoptions == falso) {
			enquanto(exitgameplayoptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","cinza",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","cinza",32.0,70,90,"Controls",0,0,"")
				texto(falso,"Power Green","branco",36.0,70,115,"Gameplay",0,0,"")
				g.desenhar_imagem(70 + (3*(8*tam_caracter)), 140, seta_esquerda)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(228, 50, 522, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(233, 55, 512, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","branco",32.0,248,60,"Delay",0,0,"")
				texto(falso,"Power Green","amarelo",32.0,500,60,delay,0,0,"")
				se(t.tecla_pressionada(t.TECLA_ENTER) e contadorgameplayoptions == 0) {
					contadorgameplayoptions = 1
					se(delay == "off") {
						delay = "on"
					} senao {
						delay = "off"
					}
					u.aguarde(100)
				} 
				se(nao t.tecla_pressionada(t.TECLA_ENTER)) {
					contadorgameplayoptions = 0
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE) ou t.tecla_pressionada(move_left)) {
					save_config()
					exitgameplayoptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
		}
	}

	funcao options() {
		enquanto(exitoptions == falso) {
			enquanto(contadoroptions == 0 e exitoptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","amarelo",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",32.0,70,90,"Controls",0,0,"")
				texto(falso,"Power Green","branco",32.0,70,120,"Gameplay",0,0,"")
				se(t.tecla_pressionada(move_up)) {
					contadoroptions = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadoroptions = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER) ou t.tecla_pressionada(move_right)) {
					exitaudiooptions = falso
					u.aguarde(100)
					audio_options()
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE)) {
					contadoroptions = 0
					exitoptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadoroptions == 1 e exitoptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","branco",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","amarelo",32.0,70,90,"Controls",0,0,"")
				texto(falso,"Power Green","branco",32.0,70,120,"Gameplay",0,0,"")
				se(t.tecla_pressionada(move_up)) {
					contadoroptions = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadoroptions = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER) ou t.tecla_pressionada(move_right)) {
					exitcontroloptions = falso
					u.aguarde(100)
					control_options()
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE)) {
					contadoroptions = 0
					exitoptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
			enquanto(contadoroptions == 2 e exitoptions == falso) {
				desenhar_fundo()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(50, 50, 700, 500, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(55, 55, 690, 490, verdadeiro, verdadeiro)
				texto(falso,"Power Green","branco",32.0,70,60,"Audio",0,0,"")
				texto(falso,"Power Green","branco",32.0,70,90,"Controls",0,0,"")
				texto(falso,"Power Green","amarelo",32.0,70,120,"Gameplay",0,0,"")
				se(t.tecla_pressionada(move_up)) {
					contadoroptions = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadoroptions = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER) ou t.tecla_pressionada(move_right)) {
					exitgameplayoptions = falso
					u.aguarde(100)
					gameplay_options()
				}
				se(t.tecla_pressionada(menu_tecla) ou t.tecla_pressionada(t.TECLA_BACKSPACE)) {
					contadoroptions = 0
					exitoptions = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}
		}
	}

	funcao tela_gameover() {
		g.desenhar_imagem(0, 0, telafim)
	}

	funcao menu() {
		enquanto(comecar == falso) {
			enquanto(contadormenu == 0 e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",128.0,100,50,"STARFINDER",0,0,"")
				texto(verdadeiro,"Power Green","amarelo",70.0,290,240,"New Game",0,0,"")
				texto(falso,"Power Green","branco",64.0,290,325,"Load Game",0,0,"")
				texto(falso,"Power Green","branco",64.0,315,400,"Options",0,0,"")
				texto(falso,"Power Green","branco",64.0,290,475,"Exit Game",0,0,"")
				se(t.tecla_pressionada(move_up)) {
					contadormenu = 3
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadormenu = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					exitnewgame = falso
					u.aguarde(100)
					new_game()
				}
				g.renderizar()
			}
			enquanto(contadormenu == 1 e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",128.0,100,50,"STARFINDER",0,0,"")
				texto(falso,"Power Green","branco",64.0,300,250,"New Game",0,0,"")
				texto(verdadeiro,"Power Green","amarelo",64.0,280,315,"Load Game",0,0,"")
				texto(falso,"Power Green","branco",64.0,315,400,"Options",0,0,"")
				texto(falso,"Power Green","branco",64.0,290,475,"Exit Game",0,0,"")
				se(t.tecla_pressionada(move_up)) {
					contadormenu = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadormenu = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					exitloadgame = falso
					u.aguarde(100)
					load_game()
				}
				g.renderizar()
			}
			enquanto(contadormenu == 2 e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",128.0,100,50,"STARFINDER",0,0,"")
				texto(falso,"Power Green","branco",64.0,300,250,"New Game",0,0,"")
				texto(falso,"Power Green","branco",64.0,290,325,"Load Game",0,0,"")
				texto(verdadeiro,"Power Green","amarelo",70.0,305,390,"Options",0,0,"")
				texto(falso,"Power Green","branco",64.0,290,475,"Exit Game",0,0,"")
				se(t.tecla_pressionada(move_up)) {
					contadormenu = 1
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadormenu = 3
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					exitoptions = falso
					u.aguarde(100)
					options()
				}
				g.renderizar()
			}
			enquanto(contadormenu == 3 e comecar == falso) {
				desenhar_fundo()
				texto(falso,"Power Green","branco",128.0,100,50,"STARFINDER",0,0,"")
				texto(falso,"Power Green","branco",64.0,300,250,"New Game",0,0,"")
				texto(falso,"Power Green","branco",64.0,290,325,"Load Game",0,0,"")
				texto(falso,"Power Green","branco",64.0,315,400,"Options",0,0,"")
				texto(verdadeiro,"Power Green","amarelo",70.0,280,465,"Exit Game",0,0,"")
				se(t.tecla_pressionada(move_up)) {
					contadormenu = 2
					u.aguarde(100)
				}
				se(t.tecla_pressionada(move_down)) {
					contadormenu = 0
					u.aguarde(100)
				}
				se(t.tecla_pressionada(t.TECLA_ENTER)) {
					exitgame = verdadeiro
					comecar = verdadeiro
					u.aguarde(100)
				}
				g.renderizar()
			}	
		}
	}

	funcao tela_inicial() {
		enquanto(nao t.tecla_pressionada(t.TECLA_ENTER) e nao t.tecla_pressionada(menu_tecla) e exitgame == falso) {
			desenhar_fundo()
			god_mode()
			desenhar_per()
			desenhar_dmgupgrade()
			desenhar_speedupgrade()
			desenhar_vida()
			desenhar_pontuacao()
			aviso(250,200,"Press 'Enter'", 300,264,"to start")

			g.renderizar()
			textopiscar--
			se(delay == "on") {
				u.aguarde(1)
			}
		}
		resetar("normal sem dificuldade")
	}

	funcao fase1() {
		enquanto(progresso <= 1 e nao t.tecla_pressionada(menu_tecla) e nao morto() e pontuacao_inteira < 10000 e exitgame == falso) {
			progresso = 1
			movimento("")
			logica_hitbox()
	
			desenhar_fundo()
			god_mode()
			desenhar_per()
			desenhar_met(dificuldade)
			escolha_arma()
			desenhar_medkit()
			se(t.tecla_pressionada(save_tecla)) {
				salvar()
			}
			desenhar_jogosalvo()
			desenhar_dmgupgrade()
			desenhar_speedupgrade()
			desenhar_lifeupgrade()
			desenhar_machinegun()
			desenhar_vida()
			desenhar_pontuacao()
			
				
			g.renderizar()
			dificuldade = dificuldade + 0.00020
			se(delay == "on") {
				u.aguarde(1)
			}
		}

		se(pontuacao_inteira == 10000 e pontuacao_inteira < 10100) {
			contadorprogresso = 1
		}
		resetar("boss")

		enquanto((progresso == 2 ou contadorprogresso == 1) e nao t.tecla_pressionada(menu_tecla) e nao morto() e bossXp > 601 e exitgame == falso) {
			progresso = 2
			logica_hitbox()

			desenhar_fundo()
			god_mode()
			desenhar_per()
			desenhar_boss()
			desenhar_laser_boss()
			desenhar_medkit()
			se(t.tecla_pressionada(save_tecla)) {
				salvar()
			}
			desenhar_jogosalvo()
			desenhar_dmgupgrade()
			dmgupXp = 810.0
			desenhar_speedupgrade()
			speedupXp = 810.0
			desenhar_lifeupgrade()
			lifeupXp = 810.0
			desenhar_machinegun()
			machinegunXp = 810.0
			desenhar_vida()
			desenhar_vida_boss_barra()
			desenhar_pontuacao()
			aviso(280,220,"WARNING!!!", 0,0,"")

			g.renderizar()	
			textopiscar--
			se(delay == "on") {
				u.aguarde(1)
			}
		}

		resetar("boss")

		enquanto(contadorprogresso == 1 e nao t.tecla_pressionada(menu_tecla) e nao morto() e nao boss_morto() e exitgame == falso) {
			movimento("")
			logica_hitbox()

			desenhar_fundo()
			god_mode()
			desenhar_per()
			desenhar_met(dificuldade)
			escolha_arma()
			desenhar_boss()
			desenhar_laser_boss()
			desenhar_medkit()
			se(t.tecla_pressionada(save_tecla)) {
				salvar()
			}
			desenhar_jogosalvo()
			desenhar_dmgupgrade()
			dmgupXp = 810.0
			desenhar_speedupgrade()
			speedupXp = 810.0
			desenhar_lifeupgrade()
			lifeupXp = 810.0
			desenhar_machinegun()
			machinegunXp = 810.0
			desenhar_vida()
			desenhar_vida_boss_barra()
			desenhar_pontuacao()

			g.renderizar()
			dificuldade = dificuldade + 0.0001	
			boss_contador1--
			boss_contador2--
			boss_contador3--
			se(delay == "on") {
				u.aguarde(1)
			}
		}

		se(boss_morto()) {
			progresso = 3
			dmgup_chance = 60
			dmgupXp = bossXp + (u.sorteia(0, 128))
			dmgupYp = bossYp + (u.sorteia(0, 128))
			speedup_chance = 60
			speedupXp = bossXp + (u.sorteia(0, 128))
			speedupYp = bossYp + (u.sorteia(0, 128))
			lifeup_chance = 60
			lifeupXp = bossXp + (u.sorteia(0, 128))
			lifeupYp = bossYp + (u.sorteia(0, 128))
			machinegun_chance = 120
			machinegunXp = bossXp + (u.sorteia(0, 128))
			machinegunYp = bossYp + (u.sorteia(0, 128))
			medkitXp = bossXp + (u.sorteia(0, 128))
			medkitYp = bossYp + (u.sorteia(0, 128))

			bossXp = 850.0
			boss_laser_retoXp = -64.0
			boss_laser_reto2Xp = -64.0
			boss_laser_reto3Xp = -64.0
			boss_laser_reto4Xp = -64.0
			boss_laser_diagonalXp = -64.0
			boss_laser_diagonal2Xp = -64.0
			boss_ballXp = -64.0
			laserR1_on = falso
			laserR2_on = falso
			laserR3_on = falso
			laserR4_on = falso
			laserD1_on = falso
			laserD2_on = falso
			ball_on = falso
			
			enquanto(nao t.tecla_pressionada(menu_tecla) e nao morto() e lootcounter < 5000 e exitgame == falso) {
				movimento("sem pontucao")
				logica_hitbox()
	
				desenhar_fundo()
				god_mode()
				desenhar_per()
				escolha_arma()
				desenhar_medkit()
				se(t.tecla_pressionada(save_tecla)) {
					salvar()
				}
				desenhar_jogosalvo()
				medkitXp = medkitXp + medkitspeed
				desenhar_dmgupgrade()
				dmgupXp = dmgupXp + dmgupspeed
				desenhar_speedupgrade()
				speedupXp = speedupXp + speedupspeed
				desenhar_lifeupgrade()
				lifeupXp = lifeupXp + lifeupspeed
				desenhar_machinegun()
				machinegunXp += machinegunspeed
				desenhar_vida()
				desenhar_vida_boss_barra()
				desenhar_pontuacao()
	
				g.renderizar()
				lootcounter++
				se(delay == "on") {
					u.aguarde(1)
				}
			}
		}
		resetar("normal")
	}

	funcao modo_infinito() {
		se(boss_morto() ou progresso >= 3) {
			movimento("sem pontuacao")
			desenhar_fundo()
			god_mode()
			texto(falso, "Power Green", "vermelho",64.0,180,238,"MISSION COMPLETE!", 0,0,"")
			desenhar_pontuacao()
			g.renderizar()
			u.aguarde(3500)

			resetar("normal")

			desenhar_fundo()
			texto(falso, "Power Green", "vermelho",64.0,220,238,"Infinite Mode!", 0,0,"")
			desenhar_pontuacao()
			g.renderizar()
			u.aguarde(1500)

			metmodspeed = 0.00002
			metmodspeed2 = 0.00002
			metmodspeed3 = 0.00004
			metmodspeed4 = 0.000004
			metmodspeed5 = 0.00006

			enquanto(progresso == 3 e nao t.tecla_pressionada(menu_tecla) e nao morto() e pontuacao_inteira < 30000 e exitgame == falso) {
				contadorprogresso = 2
				movimento("")
				logica_hitbox()
		
				desenhar_fundo()
				god_mode()
				desenhar_per()
				desenhar_met(dificuldade)
				escolha_arma()
				desenhar_medkit()
				se(t.tecla_pressionada(save_tecla)) {
					salvar()
				}
				desenhar_jogosalvo()
				desenhar_dmgupgrade()
				desenhar_speedupgrade()
				desenhar_lifeupgrade()
				desenhar_machinegun()
				desenhar_vida()
				desenhar_pontuacao()
					
				g.renderizar()
				dificuldade = dificuldade + 0.000125
				se(delay == "on") {
					u.aguarde(1)
				}
			}
			
			enquanto((progresso == 4 ou contadorprogresso == 2) e nao t.tecla_pressionada(menu_tecla) e nao morto() e pontuacao_inteira < 35000 e exitgame == falso) {
				contadorprogresso = 3
				progresso = 4
				movimento("")
				logica_hitbox()
		
				desenhar_fundo()
				god_mode()
				desenhar_per()
				desenhar_met(dificuldade)
				escolha_arma()
				desenhar_enemy(1)
				desenhar_enemy_laser()
				desenhar_medkit()
				se(t.tecla_pressionada(save_tecla)) {
					salvar()
				}
				desenhar_jogosalvo()
				desenhar_dmgupgrade()
				desenhar_speedupgrade()
				desenhar_lifeupgrade()
				desenhar_machinegun()
				desenhar_vida()
				desenhar_pontuacao()
					
				g.renderizar()
				dificuldade = dificuldade + 0.000125
				se(delay == "on") {
					u.aguarde(1)
				}
				
			}
			
			enquanto((progresso == 5 ou contadorprogresso == 3) e nao t.tecla_pressionada(menu_tecla) e nao morto() e exitgame == falso) {
				progresso = 5
				movimento("")
				logica_hitbox()
		
				desenhar_fundo()
				god_mode()
				desenhar_per()
				desenhar_met(dificuldade)
				escolha_arma()
				desenhar_enemy(2)
				desenhar_enemy_laser()
				desenhar_medkit()
				se(t.tecla_pressionada(save_tecla)) {
					salvar()
				}
				desenhar_jogosalvo()
				desenhar_dmgupgrade()
				desenhar_speedupgrade()
				desenhar_lifeupgrade()
				desenhar_machinegun()
				desenhar_vida()
				desenhar_pontuacao()
					
				g.renderizar()
				dificuldade = dificuldade + 0.000125
				se(delay == "on") {
					u.aguarde(1)
				}
			}
		}
	}

	funcao finalizar() {
		comecar = falso
		se(exitgame == falso) {
			tela_gameover()
			god_mode()
			desenhar_pontuacao()
			g.renderizar()
			u.aguarde(3000)
		}
	}

	funcao inicio()
	{
		faca {
			
		inicializar()

		menu()
		
		tela_inicial()

		fase1()

		modo_infinito()
				
		finalizar()

		resetar("total")
		} enquanto(exitgame == falso)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 37156; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */