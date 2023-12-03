# Use the official Deno image
FROM hayd/deno:1.5.2

# Set the working directory
WORKDIR /app

# Copy the necessary files
COPY deps.ts .
COPY tsconfig.json .
COPY app.ts .

# Install dependencies
RUN deno cache --unstable deps.ts

# Expose the API port
EXPOSE 8080

# Run the Deno app
CMD ["deno", "run", "--allow-net", "app.ts"]
