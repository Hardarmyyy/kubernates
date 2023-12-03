import { Application, Router } from "https://deno.land/x/oak/mod.ts";

const app = new Application();
const router = new Router();

router.get("/", (ctx) => {
    ctx.response.body = "Hello from Deno REST API!";
});

app.use(router.routes());
app.use(router.allowedMethods());

const PORT = 8080;

console.log(`Server running on http://localhost:${PORT}`);

await app.listen({ port: PORT });