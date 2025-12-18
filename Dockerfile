# استخدم صورة جاهزة تحتوي على Shadowsocks
FROM shadowsocks/shadowsocks-libev

# إعداد البيئة
ENV PASSWORD=iyad2013
ENV PORT=8388
ENV METHOD=aes-256-gcm

# Expose port
EXPOSE 8388

# Run Shadowsocks server
CMD ss-server -s 0.0.0.0 -p $PORT -k $PASSWORD -m $METHOD -t 60 --no-delay --reuse-port -u
