'use strict'

const { test } = require('uvu')
const { default: weaviate } = require('weaviate-ts-client')

test('connects to Weaviate on port 8080', () => {
  const weaviateClient = weaviate.client({
    scheme: 'http',
    host: 'localhost:8080',
  })

  weaviateClient.misc.metaGetter().do()
})

test.run()
