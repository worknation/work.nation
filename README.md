# Work.nation

![architecture](images/architecture.png "Work.nation architecture")

## Ethereum "Claim" Contract

## Reputon format

```js
// Self claim: Harlan claim Ruby on Rails skill
// this claim has IPFS address QmX3eFcpPL3bN3EBzcPnUH4fTiJyWi3G8NxEZjfKCGqrnj
{
    "application": "skills",
    "reputons": [{
        "rater": "0x57fab088be2f8bfd5d4cbf849c2568672e4f3db3",  // Harlan
        "assertion": "Ruby on Rails",
        "rated": "0x57fab088be2f8bfd5d4cbf849c2568672e4f3db3",  // Harlan
        "rating": 1,
        "sample-size": 1,
        "generated": 1492205001  // unix timestamp
    }]
}

// Confirmation: Alice confirms Harlan's Ruby on Rails skill
{
    "application": "skills",
    "reputons": [{
        "rater": "0x9df6d7f675d119228eae858213587c0687d0a498", // Alice
        "assertion": "confirm",
        "rated": "QmX3eFcpPL3bN3EBzcPnUH4fTiJyWi3G8NxEZjfKCGqrnj", // Harlan"s signed claim of ROR skills
        "rating": 1, // 1 = master, 0.5 = confirm
        "normal-rating": 0.5,
        "sample-size": 1
        "generated": 1492205002
    }]
}
```

## Permanodes

## Project Schema
