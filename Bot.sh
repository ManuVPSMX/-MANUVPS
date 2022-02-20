#!/bin/bash
IP=$(cat /etc/bot-alx/IP)
CIDdir=/etc/bot-alx/BOT84 && [[ ! -d ${CIDdir} ]] && mkdir ${CIDdir}
CID="${CIDdir}/User-ID" && [[ ! -e ${CID} ]] && echo > ${CID}
keytxt="${CIDdir}/keys" && [[ ! -d ${keytxt} ]] && mkdir ${keytxt}
USRdatabase="/etc/bot-alx/BOT84/User-ID"
#
[[ -e /etc/newadm-instal82 ]] && BASICINST="$(cat /etc/newadm-instal82)" || BASICINST="ADMbot.sh C-SSR.sh Crear-Demo.sh PDirect.py PGet.py POpen.py PPriv.py PPub.py Shadowsocks-R.sh Shadowsocks-libev.sh apacheon.sh blockBT.sh budp.sh dns-netflix.sh dropbear.sh fai2ban.sh gestor.sh menu message.txt openvpn.sh paysnd.sh ports.sh shadowsocks.sh sockspy.sh speed.py squid.sh squidpass.sh ssl.sh tcp.sh ultrahost usercodes utils.sh v2ray.sh python.py"
CC="/etc/bot-alx/BOT84/Creditos" && [[ ! -d ${CC} ]] && mkdir ${CC}
USRdatabase2="${CC}"
SCPT_DIR="/etc/BOT84"
#
cret='/etc/BOT84/message.txt'
[[ ! -e ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
INSTA_ARQUIVOS="ADMVPS.zip"
DIR="/etc/http-shell"
LIST="lista-arq"


[[ $(dpkg --get-selections|grep -w "jq"|head -1) ]] || apt-get install jq -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "vnstat"|head -1) ]] || apt-get install vnstat -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "vnstati"|head -1) ]] || apt-get install vnstati -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "nmap"|head -1) ]] || apt-get install nmap -y &>/dev/null
[[ ! -e "/bin/ShellBot.sh" ]] && wget -O /bin/ShellBot.sh https://raw.githubusercontent.com/lacasitamx/rex/master/BOT/ShellBot.sh &> /dev/null
[[ -e /etc/texto-bot ]] && rm /etc/texto-bot
LINE="━━━━━━━━━━━━━━━━━"

# Importando API
source ShellBot.sh
# Token del bot
bot_token="$(cat ${CIDdir}/token)"

# Inicializando el bot
ShellBot.init --token "$bot_token" --monitor --return map --flush
ShellBot.username

ayuda_src () {
bot_retorno="$LINE\n"
bot_retorno+="HOLA: ${message_from_first_name[$id]}\n"
	   bot_retorno+="SU ID ES: ${chatuser}\n"
		bot_retorno+="Slogan: @${message_from_username[$id]}\n\n\n"
bot_retorno+="Para poder usar el bot deves enviarle tu ID al administrador Del Bot\n PARA QUE PUEDAS USAR EL BOT\n"
			 bot_retorno+="$LINE\n"
			msj_fun
			}

#

gerar_key () {
unset cot
cot="${USRdatabase2}/Mensaje_$chatuser.txt"
if [[ ! -e ${cot} ]]; then
echo "@VPS☬MX" > ${SCPT_DIR}/message.txt 
else
echo "$(cat ${cot})" > ${SCPT_DIR}/message.txt
fi

[[ ! ${USRdatabase2}/Mensaje_$chatuser.txt ]] && credill="${USRdatabase2}/Mensaje_$chatuser.txt" || credill="${SCPT_DIR}/message.txt"
valuekey="$(date | md5sum | head -c10)"
valuekey+="$(echo $(($RANDOM*10))|head -c 5)"
fun_list "$valuekey"
keyfinal=$(ofus "$IP:8081/$valuekey/$LIST")
local bot_retorno="$LINE\n"
v=$(cat /etc/bot-alx/version)
bot_retorno+="🔑 KEY GENERADA V$v🔑 \n ~Con Acceso Ilimitado --\n-------------------- \n"
bot_retorno+="👤 Reseller: $(@MANUVPS $credill)\n"
#bot_retorno+="$LINE\n"
bot_retorno+="⏱️ Vence: En 24 Horas o al Usarla\n"
bot_retorno+="👇┄┄⟞ Instalador ⟝┄┄👇\n"
bot_retorno+="apt update -y; apt upgrade -y; wget https://raw.githubusercontent.com/lacasitamx/VPSMX/master/Oficial/V8_4/VPS-MX.sh; chmod 777 VPS-MX.sh; ./VPS-MX.sh\n"
bot_retorno+="👇 ┄┄⟞ Key ⟝┄┄ 👇\n"
bot_retorno+="${keyfinal}\n"
bot_retorno+="-------------------- \n⚙️ S.O Preferente Ubuntu: 20.04 x 64\n⚙️ S.O Compatible 14,16,18,20,21 x 64\n⚙️ Debian 7,8,9,10 x64\n-------------------- \n"
#bot_retorno+="☫ S.O Preferente Ubuntu 20.04 x64\n☫ Ubuntu 16,18,19,20,21 x64\n☫Debian 7,8,9,10 x64\n"
bot_retorno+="$LINE\n"
#bot_retorno+="▪Esta key durará 24horas o al ser usada\n"
#bot_retorno+="$LINE\n"
msj_fun
#echo -e $bot_retorno >> ${keytxt}/Key8.4_${chatuser}.txt
#upfile_fun ${keytxt}/Key8.4_${chatuser}.txt
#rm -rf ${keytxt}/Key8.4_${chatuser}.txt
echo "@MANUVPS" > ${SCPT_DIR}/message.txt 
}



fun_list () {
rm ${SCPT_DIR}/*.x.c &> /dev/null
unset KEY
KEY="$1"
#CRIA DIR
[[ ! -e ${DIR} ]] && mkdir ${DIR}
#ENVIA ARQS
i=0
VALUE+="gerar.sh instgerador.sh http-server.py lista-arq $BASICINST"
for arqx in `ls ${SCPT_DIR}`; do
[[ $(echo $VALUE|grep -w "${arqx}") ]] && continue 
echo -e "[$i] -> ${arqx}"
arq_list[$i]="${arqx}"
let i++
done
#CRIA KEY
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
#PASSA ARQS
nombrevalue="${chatuser}"
#ADM BASIC
arqslist="$BASICINST"
for arqx in `echo "${arqslist}"`; do
[[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
echo "$arqx" >> ${DIR}/${KEY}/${LIST}
done
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo "$nombrevalue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
at now +12 hours <<< "rm -rf ${DIR}/${KEY} && rm -rf ${DIR}/${KEY}.name"
}

ofus () {
unset server
server=$(echo ${txt_ofuscatw}|cut -d':' -f1)
unset txtofus
number=$(expr length $1)
for((i=1; i<$number+1; i++)); do
txt[$i]=$(echo "$1" | cut -b $i)
case ${txt[$i]} in
".")txt[$i]="v";;
"v")txt[$i]=".";;
"1")txt[$i]="@";;
"@")txt[$i]="1";;
"2")txt[$i]="?";;
"?")txt[$i]="2";;
"4")txt[$i]="p";;
"p")txt[$i]="4";;
"-")txt[$i]="K";;
"K")txt[$i]="-";;
esac
txtofus+="${txt[$i]}"
done
echo "$txtofus" | rev
}


reply () {
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}

		 	 ShellBot.sendMessage	--chat_id  $var \
									--text "$comando" \
									--parse_mode html \
									--reply_markup "$(ShellBot.ForceReply)"
	[[ "${callback_query_data}" = /del || "${message_text}" = /del ]] && listID_src
}


autori() {
bot_retorno="$LINE\n"
          
		bot_retorno+="Nombre: ${message_from_first_name[$id]}\n"
	   bot_retorno+="ID: ${chatuser}\n"
		bot_retorno+="Usuario: @${message_from_username[$id]}\n"
		bot_retorno+="$LINE\n"
		bot_retorno+="AUTORIZACION ENVIADA, ESPERE......\n"
		bot_retorno+="VUELVE A INICIAR EN 60MINUTOS CON /start o PARA VERIFICAR SI FUISTES AUTORIZADO \n"
          bot_retorno+="$LINE\n"
msj_fun
bot_retor="$LINE\n"
          bot_retor+="NOMBRE: ${message_from_first_name[$id]} PIDIÓ AUTORIZACION DEL BOT VPSMX\n"
bot_retor+="ID: ${chatuser}\n"
		bot_retor+="Usuario: @${message_from_username[$id]} \n"
bot_retor+="mensajeID: ${message_message_id[$id]}\n"
bot_retor+="Remitente ID: @${message_from_id[$id]}\n"
#bot_retor+="Contacto: $(echo ${message_contact_phone_number[$id]}|cut -d'-' -f2)\n"
#bot_retor+="Contacto2: $(echo ${channel_post_contact_phone_number[$id]}|cut -d'-' -f2)\n"
bot_retor+="DATOS: ${message_date[$id]}\n"
bot_retor+="TIPO: ${message_chat_type[$id]}\n"
bot_retor+="Mensaje: ${message_message_id[$id]}\n"
bot_retor+="Mensaje data: ${message_date[$id]}\n"
          bot_retor+="$LINE\n"
msj_adm
}
msj_adm() {
TOKEN="$(cat /etc/bot-alx/BOT84/token)"
ID="$(cat /etc/bot-alx/BOT84/Admin-ID)"
MENSAJE="$(echo -e "$bot_retor")"
		URL="https://api.telegram.org/bot$TOKEN/sendMessage"
		curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE" &>/dev/null
}


listID_src () {
# -*- ENCODING: UTF-8 -*-

lsid=$(cat -n ${CID})
local bot_retorno="$LINE\n"
          bot_retorno+="Lista De ID Con Acceso Al ManuBot\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="${lsid}\n"
		bot_retorno+="$LINE\n"
	msj_fun
}




add_user () {
#nome senha Dias limite
    #  [[ $(cat ${CID}|grep "${message_text[$id]}") = "" ]] && {
#[[ $(cat $CID |grep $1: |grep -vi [a-z]$1 |grep -v [0-9]$1 > /dev/null) ]] && return 1
valid=$(date '+%C%y-%m-%d' -d " +$2 days") && datexp=$(date "+%F" -d " + $2 days")
echo "/${1}" -e ${valid} >> ${CID} || return 1

[[ -e ${USRdatabase} ]] && {
   newbase=$(cat ${USRdatabase}|grep -w -v "$1")
   echo "/$1|Valid|${datexp}" > ${USRdatabase}
   for value in `echo ${newbase}`; do
   echo $value >> ${USRdatabase}
   done
   } || echo "/$1|Valid|${datexp}" >> ${USRdatabase}
}
useradd_fun () {
error_fun () {
local bot_retorno="$LINE\n"
         bot_retorno+=" -->>> MODO DE USO\n"
         bot_retorno+="$LINE\n"
         bot_retorno+="agregar Usuario-ID Dias\n"
         bot_retorno+="Ejemplo:\n"
         bot_retorno+='/aduser Su-ID 30 \n'
         bot_retorno+="$LINE\n"
         case $1 in
         [1-3]|14)
         [[ $1 = 1 ]] && bot_retorno+="Usuario Nulo" && bot_retorno+="$LINE\n"
         [[ $1 = 2 ]] && bot_retorno+="Usuario Con Nombre Muy Corto" && bot_retorno+="$LINE\n"
         [[ $1 = 3 ]] && bot_retorno+="Usuario Con Nombre Muy Grande" && bot_retorno+="$LINE\n"
         [[ $1 = 14 ]] && bot_retorno+="Usuario ya Existe" && bot_retorno+="$LINE\n"
         ;;
        
         [7-9])
         [[ $1 = 7 ]] && bot_retorno+="Duracion Nula" && bot_retorno+="$LINE\n"
         [[ $1 = 8 ]] && bot_retorno+="Duracion invalida utilize numeros" && bot_retorno+="$LINE\n"
         [[ $1 = 9 ]] && bot_retorno+="Duracion maxima de un año" && bot_retorno+="$LINE\n"
         ;;
         
         esac
         ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--text "<i>$(echo -e $bot_retorno)</i>" \
							--parse_mode html
}
     #usuarios_ativos=$(cat $CID)
     [[ -z "$1" ]] && error_fun && return 0
     [[ -z "$2" ]] && error_fun && return 0
#     [[ -z "$3" ]] && error_fun && return 0
     if [[ -z $1 ]]; then
     error_fun 1 && return 0
     elif [[ "${#1}" -lt "4" ]]; then
     error_fun 2 && return 0
     elif [[ "${#1}" -gt "24" ]]; then
     error_fun 3 && return 0
     elif [[ "$(echo $(cat ${CID[@]})|grep -w "$1")" ]]; then
     error_fun 14 && return 0
     fi    
     
     if [[ -z "$2" ]]; then
     error_fun 7 && return 0
     elif [[ "$2" != +([0-9]) ]]; then
     error_fun 8 && return 0
     elif [[ "$2" -gt "360" ]]; then
     error_fun 9 && return 0
     fi
     
     add_user "$1" "$2"
     if [[ "$?" = "1" ]]; then
     local bot_retorno="$LINE\n"
              bot_retorno+="El Usuario No Fue Creado\n"
              bot_retorno+="$LINE\n"
              ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--text "<i>$(echo -e $bot_retorno)</i>" \
							--parse_mode html
      return 0
      else

      local bot_retorno="$LINE\n"
               bot_retorno+="USER🆔 AGREGADA\n"
			   bot_retorno+="$LINE\n"
               bot_retorno+="▪️User🆔: $1\n"
               bot_retorno+="▪️DURACION: $2 DIAS\n"
               bot_retorno+="$LINE\n"

bot_retor="$LINE\n"
          bot_retor+="El Administrador te autoriso\n"
          bot_retor+="para usar el Bot\n"
          bot_retor+="digita el comando /menu\n"
          bot_retor+="para actualizar el menú de comandos\n"
          bot_retor+="$LINE\n"
               #ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	      ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e $bot_retorno)</i>" \
							--parse_mode html
        return 0

      msj_add $var

fi

}

info_user () {
error_fun () {
local bot_retorno="$LINE\n"
          bot_retorno+="MODO DE USO:\n"
		  bot_retorno+="$LINE\n"
		  bot_retorno+="Pon el Comando /INFO (🆔) \n"
		  bot_retorno+="$LINE\n"
          bot_retorno+="Ejemplo: /INFO 4588235\n"
          bot_retorno+="$LINE\n"
	      ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
return 0
}

[[ -z $1 ]] && error_fun && return 0

VPSsec=$(date +%s)

sen=$(cat ${USRdatabase}|grep -w "$1"|cut -d '|' -f2)
             [[ -z $sen ]] && sen="XX"
             DateExp="$(cat ${CID}|grep -w "$1"|cut -d'|' -f3)"
             if [[ ! -z $DateExp ]]; then             
             DataSec=$(date +%s --date="$DateExp")
             [[ "$VPSsec" -gt "$DataSec" ]] && EXPTIME="${red}[EXPIRADA]" || EXPTIME="${gren}[$(($(($DataSec - $VPSsec)) / 86400))] DIAS"
             else
             EXPTIME="XX"
             fi
             limit=$(cat /etc/bot-al/BOT82/User-ID|grep -w "$1"|cut -d '|' -f4)
             [[ -z $limit ]] && limit="???"
			 
local bot_retorno="$LINE\n"
         bot_retorno+="▪️EL USUARIO TIENE ACCESO▪️\n"
         bot_retorno+="$LINE\n"
			#
			#bot_retorno+="▪️ 👤Nombre test1: $(echo ${message_from_first_name[$id]}|cut -d'|' -f1)"
         bot_retorno+="▪️ 👤Usuario 🆔: $1 \n"
         #bot_retorno+="$(fun_trans "Contraseña"): $sen\n"
         bot_retorno+="▪️ 🗓Dias Restantes:⏳ $EXPTIME \n"
       #  bot_retorno+="▪️ Limite de Usuarios: *$limit *\n"
         bot_retorno+="$LINE\n"
             ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
							
        
return 0
}

info_id () {

VPSsec=$(date +%s)

sen=$(cat ${USRdatabase}|grep -w "$chatuser"|cut -d '|' -f2)
             [[ -z $sen ]] && sen="XX" || sen="PREMIUM"
             DateExp="$(cat ${CID}|grep -w "$chatuser"|cut -d'|' -f3)"
             if [[ ! -z $DateExp ]]; then             
             DataSec=$(date +%s --date="$DateExp")
             [[ "$VPSsec" -gt "$DataSec" ]] && EXPTIME="${red}[EXPIRADA]" || EXPTIME="${gren}[$(($(($DataSec - $VPSsec)) / 86400))] DIAS"
             else
             EXPTIME="XX" || EXPTIME="PREMIUM"
             fi
             limit=$(cat /etc/bot-al/User-ID|grep -w "$chatuser"|cut -d '|' -f4)
             [[ -z $limit ]] && limit="???"
			 
local bot_retorno="$LINE\n"
         bot_retorno+="▪️EL USUARIO TIENE ACCESO AL BOT▪️\n"
         bot_retorno+="$LINE\n"
			#
		bot_retorno+="▪️ 👤Nombre: $(echo ${message_from_first_name[$id]}|cut -d'|' -f3)\n"
         bot_retorno+="▪️ 👤Usuario 🆔: $chatuser \n"
         
         bot_retorno+="▪️ 🗓Dias Restantes:⏳ $EXPTIME \n"
       #  bot_retorno+="▪️ Limite de Usuarios: *$limit *\n"
         bot_retorno+="$LINE\n"
             ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
							
        
return 0
}

mensajecre(){
  error_fun () {
local bot_retorno="$LINE\n"
		  bot_retorno+="USAR EL COMANDO DE ESTA MANERA\n"
		  bot_retorno+="$LINE\n"
          bot_retorno+="Ejemplo: /KEYIC @mireseller\n"
          bot_retorno+="$LINE\n"
	      ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
return 0
}

[[ -z $1 ]] && error_fun && return 0

echo "$1" > ${USRdatabase2}/Mensaje_$chatuser.txt
          bot_retorno="$LINE\n"
          bot_retorno+="✅Reseller Cambiado ✅\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="Nuevo Reseller: $1\nPARA REGRESAR /menu\n"
          bot_retorno+="$LINE"
      
          [[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	     ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
							
	return 0
                    }
                    
myid_src () {
bot_retorno="$LINE\n"
          bot_retorno+="SU ID: ${chatuser}\n"
          bot_retorno+="$LINE\n"
msj_fun
}

deleteID_reply () {
delid=$(sed -n ${message_text[$id]}p ${CID})
sed -i "${message_text[$id]}d" ${CID}
bot_retorno="$LINE\n"
          bot_retorno+="ID eliminado con exito!\n"
          bot_retorno+="ID: ${delid}\n"
          bot_retorno+="$LINE\n"
msj_fun
#upfile_src
}


mensaje(){
      [[ $(cat ${SCPT_DIR}|grep "${message_text[$id]}") = "" ]]
echo "${message_text[$id]}" > ${SCPT_DIR}/message.txt
          bot_retorno="$LINE\n"
          bot_retorno+="✅Creditos Cambiado ✅\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="Nuevo Reseller: ${message_text[$id]}\n\n\nPARA REGRESAR /menu\n"
          bot_retorno+="$LINE"
          [[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	     ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
							#  --reply_markup ${message_reply_to_message_text[$id]
	return 0
          }
          
       
     

     
addID_reply () {
      [[ $(cat ${CID}|grep "${message_text[$id]}") = "" ]] && {
        echo "/${message_text[$id]}" >> ${CID}
          bot_retorno="$LINE\n"
          bot_retorno+="✅ *ID agregado * ✅\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="$(< ${CID})\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="New ID: ${message_text[$id]}\n"
          bot_retorno+="$LINE"

          bot_retor="$LINE\n"
          bot_retor+="El Administrador te autorisó\n"
          bot_retor+="para usar el 🤖BOT-MANUVPS-8.4🤖\n"
          bot_retor+="digita el comando /menu\n"
          bot_retor+="para actualizar el menú de comandos\n"
          bot_retor+="$LINE\n"
      msj_fun
      msj_add ${message_text[$id]}
      upfile_src
    } || {
          bot_retorno="====ERROR====\n"
          bot_retorno+="Este ID ya existe\n"
          bot_retorno+="$LINE\n"
      msj_fun
    }
}

infosys_src () {

#HORA Y FECHA
unset _hora
unset _fecha
_hora=$(printf '%(%H:%M:%S)T') 
_fecha=$(printf '%(%D)T') 

#PROCESSADOR
unset _core
unset _usop
_core=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
_usop=$(printf '%-1s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")

#MEMORIA RAM
unset ram1
unset ram2
unset ram3
ram1=$(free -h | grep -i mem | awk {'print $2'})
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})

unset _ram
unset _usor
_ram=$(printf ' %-9s' "$(free -h | grep -i mem | awk {'print $2'})")
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")

unset os_sys
os_sys=$(echo $(cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //')) && echo $system|awk '{print $1, $2}'

bot_retorno="$LINE\n"
          bot_retorno+="S.O: $os_sys\n"
	  bot_retorno+="Su IP es: $(meu_ip)\n"
	  bot_retorno+="$LINE\n"
	  bot_retorno+="Ram: $ram1 || En Uso: $_usor\n"
	  bot_retorno+="USADA: $ram3 || LIBRE: $ram2\n"
	  bot_retorno+="$LINE\n"
	  bot_retorno+="CPU: $_core || En Uso: $_usop\n"
	  bot_retorno+="$LINE\n"
	  bot_retorno+="FECHA: $_fecha\n"
	  bot_retorno+="HORA: $_hora\n"
          bot_retorno+="$LINE\n"
msj_fun
}
cache_src () {

#MEMORIA RAM
unset ram1
unset ram2
unset ram3
unset _usor
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
ram1=$(free -h | grep -i mem | awk {'print $2'})
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})
	  bot_retorno="==========Antes==========\n"
	  bot_retorno+="Ram: $ram1 || EN Uso: $_usor\n"
	  bot_retorno+="USADA: $ram3 || LIBRE: $ram2\n"
	  bot_retorno+="=========================\n"
msj_fun

sleep 2

sudo sync
sudo sysctl -w vm.drop_caches=3 > /dev/null 2>&1

unset ram1
unset ram2
unset ram3
unset _usor
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
ram1=$(free -h | grep -i mem | awk {'print $2'})
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})
	  bot_retorno="==========Ahora==========\n"
	  bot_retorno+="Ram: $ram1 || EN Uso: $_usor\n"
	  bot_retorno+="USADA: $ram3 || LIBRE: $ram2\n"
	  bot_retorno+="=========================\n"
msj_fun
}
upfile_src () {
cp ${CID} $HOME/
upfile_fun $HOME/User-ID
rm $HOME/User-ID
}


	

menu_print () {
[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}

	if [[ $(echo $permited|grep "${chatuser}") = "" ]]; then
				# ShellBot.sendMessage 	--chat_id ${message_chat_id[$id]} \
				ShellBot.sendMessage 	--chat_id $var \
										--text "<i>$(echo -e $bot_retorno)</i>" \
										--parse_mode html \
										--reply_markup "$(ShellBot.InlineKeyboardMarkup -b 'botao_user')"
	else
				# ShellBot.sendMessage 	--chat_id ${message_chat_id[$id]} \
				ShellBot.sendMessage 	--chat_id $var \
										--text "<i>$(echo -e $bot_retorno)</i>" \
										--parse_mode html \
										--reply_markup "$(ShellBot.InlineKeyboardMarkup -b 'botao_conf')"
	fi
}

download_file () {
# shellbot.sh editado linea 3986
user=User-ID
[[ -e ${CID} ]] && rm ${CID}
local file_id
          ShellBot.getFile --file_id ${message_document_file_id[$id]}
          ShellBot.downloadFile --file_path "${return[file_path]}" --dir "${CIDdir}"
local bot_retorno="ID user bot\n"
		bot_retorno+="$LINE\n"
		bot_retorno+="Se restauro con exito!!\n"
		bot_retorno+="$LINE\n"
		bot_retorno+="${return[file_path]}\n"
		bot_retorno+="$LINE"
			ShellBot.sendMessage	--chat_id "${message_chat_id[$id]}" \
									--reply_to_message_id "${message_message_id[$id]}" \
									--text "<i>$(echo -e "$bot_retorno")</i>" \
									--parse_mode html
return 0
}


msj_add () {
	      ShellBot.sendMessage --chat_id ${1} \
							--text "<i>$(echo -e "$bot_retor">)</i>" \
							--parse_mode html
}

upfile_fun () {
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
          ShellBot.sendDocument --chat_id $var  \
                             --document @${1}
}

invalido_fun () {
bot_retorno="$LINE\n"
		bot_retorno+="¿HOLA? || ${message_from_first_name[$id]} || ¿😜? NO TIENES ACCESO A LOS COMANDOS, CONTACTA A UN ADMIN \n"
         bot_retorno+="❌COMANDO NO AUTORIZADO❌\n"
		bot_retorno+="CONTACTO:  @MANUVPS\n"
         bot_retorno+="$LINE\n"
[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	     ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
	return 0
bot_retor="$LINE\n"
          bot_retor+="NOMBRE: ${message_from_first_name[$id]}\n"
bot_retor+="ID: ${chatuser}\n"
		bot_retor+="Usuario: @${message_from_username[$id]}\n"
bot_retor+="mensajeID: ${message_message_id[$id]}\n"
#bot_retor+="Remitente ID: ${message_from_id[$id]}\n"
#bot_retor+="Contacto: $(echo ${message_contact_phone_number[$id]}|cut -d'-' -f1)\n"
#bot_retor+="Contacto2: $(echo ${channel_post_contact_phone_number[$id]}|cut -d'-' -f2)\n"
bot_retor+="DATOS: ${message_date[$id]}\n"
          bot_retor+="$LINE\n"
			bot_retor+="COMANDO USADA: ${comando[@]}\n"
#bot_retor+="COMANDO USADA: ${comando[0]}\n"
			bot_retor+="$LINE\n"
msj_adm
}

msj_fun () {
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	      ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html 
	return 0
}
menu_src () {
bot_retorno="➖➖➖BOT KEY➖➖➖\n"
	 if [[ $(echo $permited|grep "${chatuser}") = "" ]]; then

		 if [[ $(cat ${CID}|grep "${chatuser}") = "" ]]; then
		bot_retorno+="------BOT KEY-------\n"
		bot_retorno+="👤USUARIO: ${message_from_first_name[$id]} SIN ACCESO\n"
		bot_retorno+="🚫ID [${chatuser}] NO REGISTRADO\n"
		bot_retorno+="USER: @${message_from_username[$id]}\n"
		bot_retorno+="$LINE\n"
			 bot_retorno+="/ID (muestra su ID)\n"
			bot_retorno+="/autorizacion (Pedir Autorizacion)\n"
			 bot_retorno+="/ayuda (modo de uso)\n"
			 bot_retorno+="$LINE\n"
msj_fun
			bot_retor="$LINE\n"
			bot_retor+="El Nombre: ${message_from_first_name[$id]} INICIÓ EL BOT\n"
bot_retor+="Usuario: @${message_from_username[$id]}\n"
bot_retor+="ID: ${chatuser}\n"
bot_retor+="mensajeID: ${message_message_id[$id]}\n"
bot_retor+="Remitente ID: ${message_from_id[$id]}\n"
#bot_retor+="Contacto: $(echo ${message_contact_phone_number[$id]}|cut -d'-' -f2)\n"
#bot_retor+="Contacto2: $(echo ${channel_post_contact_phone_number[$id]}|cut -d'-' -f2)\n"
bot_retor+="DATOS: ${message_date[$id]}\n"
bot_retor+="TIPO: ${message_chat_type[$id]}\n"
bot_retor+="Mensaje: ${message_message_id[$id]}\n"
bot_retor+="Mensaje data: ${message_date[$id]}\n"
	#bot_retor+="Contacto: ${channel_post_contact_phone_number[$id]}\n"
          bot_retor+="$LINE\n"
			bot_retor+="COMANDO USADA: ${comando[@]}\n"
			bot_retor+="$LINE\n"
			 
	msj_adm
		 else
		
		unset micredito
		micredito="$(cat ${USRdatabase2}/Mensaje_$chatuser.txt)"
		[[ ! $micredito ]] && crex="❴ 𝙊𝙁𝙁 ❵" || crex="$micredito"
		
			bot_retorno+="HOLA👤: ${message_from_first_name[$id]} \n"
			bot_retorno+="👁‍🗨ID: ${chatuser}\n"
			bot_retorno+="USER: @${message_from_username[$id]}\n"
			bot_retorno+="	RESELLER: $crex\n"
			bot_retorno+="=========COMANDOS=========\n"
			 bot_retorno+="/verif (Dias Restantes)\n"
			bot_retorno+="/KEYIC (NUEVO RESELLER)\n"
			 bot_retorno+="$LINE\n"

			 menu_print

		 fi
		 
	 else
unset ram2
unset ram3
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})
		 unset PID_GEN
		 PID_GEN=$(ps x|grep -v grep|grep "http-server.sh")
		 [[ ! $PID_GEN ]] && PID_GEN='(APAGADA) ❌' || PID_GEN='(EN LINEA) ✅'
		 unset creditos
		 creditos="$(cat /etc/BOT84/message.txt)"
		  [[ ! $creditos ]] && credi="OFF" || credi="$creditos"
		
		 unset usadas
		 usadas="$(cat /etc/http-instas)"
		 [[ ! $usadas ]] && k_used="0" || k_used="$usadas"
		
		 unset micredito
		micredito="$(cat ${USRdatabase2}/Mensaje_$chatuser.txt)"
		[[ ! $micredito ]] && crex="❴ 𝙊𝙁𝙁 ❵" || crex="$micredito"
		
		 bot_retorno+="Gen $PID_GEN | Keys Used [$k_used]\n"
			bot_retorno+="	RESELLER: $crex\n"
		 bot_retorno+="=========RAM===============\n"
		bot_retorno+="USADA: $ram3 || LIBRE: $ram2\n"
		bot_retorno+="=========COMANDOS=========\n"
		# bot_retorno+="/credi (Cambiar Reseller)\n"
		bot_retorno+="/KEYIC (NUEVO RESELLER)\n"
		 bot_retorno+="/listado (ID CON ACCESO AL BOT)\n"
		bot_retorno+="/Aduser (Agregar User con vigencia)\n"
		bot_retorno+="/INFO (Monitoriar Usuarios)\n"
		 bot_retorno+="$LINE\n"
		 menu_print
	 fi	

}



botao_conf=''
botao_user=''
#botao_donar=''
#admin
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 1 --text '👥AGREGAR UN USUARIO' --callback_data '/add'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 1 --text '⚔QUITAR UN USUARIO' --callback_data '/del'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 2 --text '📝USERS CON ACCESO AL BOT' --callback_data '/list'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 4 --text '🔑 KEY-V8.4' --callback_data '/key84'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 4 --text 'AGREGAR NEW RESELL' --callback_data '/creditos'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 5 --text '🧽LIMPIEZA RAM' --callback_data '/cache'
#user
ShellBot.InlineKeyboardButton --button 'botao_user' --line 1 --text '🔑 KEY-V8.4' --callback_data '/key84'


#ShellBot.InlineKeyboardButton --button 'botao_donar' --line 2 --text 'Donar MercadoPago ARG' --callback_data '1' --url 'http://mpago.li/1SAHrwu'
#ShellBot.InlineKeyboardButton --button 'botao_donar' --line 3 --text 'Acortador adf.ly' --callback_data '1' --url 'http://caneddir.com/2J9J'

# Ejecutando escucha del bot
while true; do
    ShellBot.getUpdates --limit 100 --offset $(ShellBot.OffsetNext) --timeout 30
    for id in $(ShellBot.ListUpdates); do

	    chatuser="$(echo ${message_chat_id[$id]}|cut -d'-' -f2)"
	    [[ -z $chatuser ]] && chatuser="$(echo ${callback_query_from_id[$id]}|cut -d'-' -f2)"
	    echo $chatuser >&2
	    #echo "user id $chatuser"

	    comando=(${message_text[$id]})
	    [[ -z $comando ]] && comando=(${callback_query_data[$id]})
	    #echo "comando $comando"

	    [[ ! -e "${CIDdir}/Admin-ID" ]] && echo "null" > ${CIDdir}/Admin-ID
	    permited=$(cat ${CIDdir}/Admin-ID)
	    if [[ $(echo $permited|grep "${chatuser}") = "" ]]; then
		 if [[ $(cat ${CID}|grep "${chatuser}") = "" ]]; then
			 case ${comando[0]} in
				 /[Ii]d|/[Ii]D)myid_src &;;
				 /[Mm]enu|[Mm]enu|/[Ss]tart|[Ss]tart|[Cc]omensar|/[Cc]omensar)menu_src &;;
				 /[Aa]yuda|[Aa]yuda|[Hh]elp|/[Hh]elp)ayuda_src &;;
				/[Aa]utorizacion)autori &;;
				 /*|*)invalido_fun &;;
			 esac
		 else
	
				
		 	if [[ ${message_text[$id]} || ${callback_query_data[$id]} ]]; then
			 case ${comando[0]} in
				 /[Mm]enu|[Mm]enu|/[Ss]tart|[Ss]tart|[Cc]omensar|/[Cc]omensar)menu_src &;;
				# /[Aa]yuda|[Aa]yuda|[Hh]elp|/[Hh]elp)ayuda_src &;;
				 /[Ii]d|/[Ii]D)myid_src &;;
				 /[Kk]ey84)gerar_key &;;
				/[Rr]esell|/[Rr]eseller|/[Kk]EYIC)mensajecre "${comando[1]}" &;;
				 /[Vv]erif|[Vv]erif|/[Vv]eri|[Vv]eri)info_id "$chatuser" &;;
				 /*|*)invalido_fun &;;

			 esac
			fi
			#sleep 5 

			#[[ -e "/etc/donar_active.txt" ]] && donar
		 fi
	    else

	    	if [[ ${message_reply_to_message_message_id[$id]} ]]; then
				case ${message_reply_to_message_text[$id]} in
					'/del')deleteID_reply;;
					'/add')addID_reply;;
					'/creditos')mensaje;;
					*)invalido_fun;;
				esac

			elif [[ ${message_document_file_id[$id]} ]]; then
					 download_file

	    	elif [[ ${message_text[$id]} || ${callback_query_data[$id]} ]]; then

		 		case ${comando[0]} in
					 /[Mm]enu|[Mm]enu|/[Ss]tart|[Ss]tart|[Cc]omensar|/[Cc]omensar)menu_src &;;
					# /[Aa]yuda|[Aa]yuda|[Hh]elp|/[Hh]elp)ayuda_src &;;
					 /[Ii]d|/[Ii]D)myid_src &;;
					 /[Aa]dd|/[Dd]el|/[Cc]reditos)reply &;;
					/[Aa]DUSER|/[Aa]duser|[Aa]duser|/[Uu]ser|/[Aa]d)useradd_fun "${comando[1]}" "${comando[2]}" &;;
					/[Ii]NFO|/[Ii]nfo|[Ii]nfo|/[Mm]onitor|/[Mm]onitoriar)info_user "${comando[1]}" &;;
					# /[Pp]ower)start_gen &;;
					  /[Kk]ey84|/[Kk]eygen|/[Gg]erar)gerar_key &;;
			 		 /[Ii]nfosys)infosys_src &;;
			 		 /[Ll]istado)listID_src &;;
			 		 /[Cc]ache)cache_src &;;
					 /[Rr]esell|/[Rr]eseller|/[Kk]EYIC)mensajecre "${comando[1]}" &;;
			 		 /*|*)invalido_fun &;;
				esac

			fi

	    fi



    done
done
