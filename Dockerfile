# ==========================
# Stage 1 - Builder
# ==========================
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install all dependencies
RUN npm ci

# Copy application source
COPY src ./src

# ==========================
# Stage 2 - Production
# ==========================
FROM node:18-alpine AS production

ENV NODE_ENV=production

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# Copy application from builder stage
COPY --from=builder /app/src ./src

# Create non-root user
RUN addgroup -S appgroup && \
    adduser -S appuser -G appgroup

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 3000

CMD ["npm", "start"]