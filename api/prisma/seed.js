const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const clientes = require("./dados/clientes.json");
const automoveis = require("./dados/automoveis.json");
const alocacao = require("./dados/alocacao.json");
const concessionaria = require("./dados/concessionaria.json");

async function main() {
    for (const alocacao of alocacao) {
        await prisma.alocacao.create({
            data: alocacao
        });
    }
    for (const clientes of clientes) {
        await prisma.clientes.create({
            data: clientes
        });
    }
    for (const automoveis of automoveis) {
        await prisma.automoveis.create({
            data: automoveis
        });
    }
    for (const concessionaria of concessionaria) {
        await prisma.concessionaria.create({
            data: concessionaria
        });
    }
}

main()
    .then(async () => {
        await prisma.$disconnect()
        console.log('seed complete')
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    });
