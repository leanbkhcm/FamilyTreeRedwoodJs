-- CreateTable
CREATE TABLE "Post" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "body" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "Person" (
    "personId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "fatherId" INTEGER NOT NULL,
    "motherId" INTEGER NOT NULL,
    "seqInFamilyId" INTEGER NOT NULL,
    "sex" TEXT NOT NULL,
    "birthDay" DATETIME NOT NULL,
    "remark" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Marriage" (
    "marriageId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "maleId" INTEGER NOT NULL,
    "femaleId" INTEGER NOT NULL,
    "marriageDate" DATETIME NOT NULL,
    "remark" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Association" (
    "relationshipId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "person1Id" INTEGER NOT NULL,
    "person2Id" INTEGER NOT NULL,
    "remark" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Source" (
    "sourceId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nameSource" TEXT NOT NULL,
    "remark" TEXT NOT NULL
);
