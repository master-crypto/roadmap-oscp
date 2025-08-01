#!/bin/bash
# Script básico de reconhecimento para OSCP
echo "[*] Iniciando Reconhecimento..."

read -p "Digite o alvo: " target

echo "[*] Escaneando portas TCP com nmap..."
nmap -sC -sV -oN nmap_scan.txt $target

echo "[*] Fazendo enumeração HTTP com gobuster..."
gobuster dir -u http://$target -w /usr/share/wordlists/dirb/common.txt -o gobuster.txt

echo "[*] Fim do reconhecimento."
