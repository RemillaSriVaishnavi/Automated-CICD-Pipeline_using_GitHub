const request = require("supertest");
const app = require("../src/app");

describe("API Endpoints", () => {

    test("GET /health should return healthy status", async () => {

        const res = await request(app).get("/health");

        expect(res.statusCode).toBe(200);
        expect(res.body).toHaveProperty("status", "UP");

    });

});