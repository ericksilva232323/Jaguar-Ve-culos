const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const clientes = require("./dados/clientes.json")
const automoveis = require("./dados/automoveis.json")
const alocacao = require("./dados/alocacao.json")
const concessionaria = require("./dados/concessionaria.json")

async function main() {
    for (const locacao of locacao) {
        await prisma.locacao.create({
            data: locacao
        });
    }
    for (const clientes of clientes) {
        await prisma.clientes.create({
            data: clientes
        });
    }
    for (const alocacao of alocacao){
        await prisma.alocacao.create({
            data: alocacao
        })
    }
}