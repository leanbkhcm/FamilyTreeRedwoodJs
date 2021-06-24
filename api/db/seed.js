/* eslint-disable no-console */
const { PrismaClient } = require('@prisma/client')
const dotenv = require('dotenv')

dotenv.config()
const db = new PrismaClient()

/*
 * Seed data is database data that needs to exist for your app to run.
 *
 * @see https://www.prisma.io/docs/reference/api-reference/command-reference#migrate-reset
 * @see https://www.prisma.io/docs/guides/prisma-guides/seed-database
 * @see https://www.prisma.io/docs/reference/api-reference/prisma-client-reference#upsert
 * @see https://www.prisma.io/docs/reference/api-reference/prisma-client-reference#createmany
 */
async function main() {
  console.warn('Please define your seed data.')

  // // Change to match your data model and seeding needs
  const data = [
    { title: 'title1', body: 'body1' },
    { title: 'title2', body: 'body2' },
  ]

  // Note: if using PostgreSQL, using `createMany` to insert multiple records is much faster
  // @see: https://www.prisma.io/docs/reference/api-reference/prisma-client-reference#createmany
  return Promise.all(
    data.map(async (post) => {
      const record = await db.post.create({
        data: { title: post.title, body: post.body },
      })
      console.log(record)
    })
  )
}

main()
  .catch((e) => console.error(e))
  .finally(async () => {
    await db.$disconnect()
  })
