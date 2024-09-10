# Subgraph: `Alien Worlds`

> Transactions, Decoded Actions & Database Operations
>
> [`sf.antelope.type.v1.Block`](https://buf.build/pinax/firehose-antelope/docs/main:sf.antelope.type.v1)

- [x] **Blocks**
- [x] **Transactions**
- [x] **Actions**
  - [x] **Authorization**
  - [x] **Receiver**
- [x] **DatabaseOperations**

## Smart Contracts

- `stkvt.worlds`
- `index.worlds`
- `awlndratings`
- `alien.worlds`
- `msig.worlds`
- `boost.worlds`
- `dao.worlds`
- `m.federation`
- `other.worlds`
- `s.federation`
- `federation`
- `token.worlds`
- `uspts.worlds`

## Subgraph

- **API Key**: https://thegraph.com/studio/apikeys/
- **Base URL**: https://gateway.thegraph.com/api
- **Subgraph ID**: `4UETM9eMQ4Y4otae5sjJscniNhmDUhCDwWTfXm6Tpm14`
- **Subgraph NFT**: `23317001931136309735161165219853275934923531233862675639721744478109748611915`
- **Query URL format**: `{base_url}`/api/`{api-key}`/subgraphs/id/`{subgraph_id}`

## GraphQL

```graphql
{
  actions(
    orderBy: block__number
    orderDirection: desc
  ) {
    block{
      number
      time
    }
    transaction {
      id
    }
    account
    name
    jsonData
    dbOps {
      code
      tableName
      primaryKey
      newDataJson
    }
  }
}
```
