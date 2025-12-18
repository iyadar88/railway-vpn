# Shadowsocks-libev Optimized for Railway
# Single user, maximum performance, minimal resources

FROM alpine:3.18 AS base

# Install shadowsocks-libev only
RUN apk add --no-cache shadowsocks-libev

# Create non-root user for Railway compatibility
RUN adduser -D -H ssuser

# Switch to non-root user
USER ssuser

# Expose port
EXPOSE 8388

# Run shadowsocks-server directly with inline config
# Optimizations:
# - no-delay: disable Nagle's algorithm for lower latency
# - fast-open: TCP Fast Open for faster connections
# - reuse-port: better performance on multi-core
# - timeout 60: quick cleanup of idle connections
# - no logging (-v removed)
CMD ["ss-server", \
     "-s", "0.0.0.0", \
     "-p", "8388", \
     "-k", "iyad2013", \
     "-m", "aes-256-gcm", \
     "-t", "60", \
     "--no-delay", \
     "--reuse-port", \
     "-u"]

