-- CreateTable
CREATE TABLE "User" (
"id" SERIAL,
    "forename" TEXT NOT NULL,
    "lastname" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Marriage" (
"id" SERIAL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_MarriageToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_MarriageToUser_AB_unique" ON "_MarriageToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_MarriageToUser_B_index" ON "_MarriageToUser"("B");

-- AddForeignKey
ALTER TABLE "_MarriageToUser" ADD FOREIGN KEY("A")REFERENCES "Marriage"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MarriageToUser" ADD FOREIGN KEY("B")REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
