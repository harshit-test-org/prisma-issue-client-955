import { PrismaClient } from "@prisma/client";

async function main() {
  const prisma = new PrismaClient();

  const data = await prisma.user.findMany({
    include: {
      marriages: true,
    },
  });
  console.log(data);
  prisma.$disconnect();
}

main();
