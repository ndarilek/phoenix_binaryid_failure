# PhoenixBinaryidFailure

```
git clone https://github.com/ndarilek/phoenix_binaryid_failure
```

This app was generated with:

`mix phx.new phoenix_binaryid_failure --no-brunch --binary-id`

1. Despite being configured for binaryid, the generated migration still uses a plain integer.
2. When I ran:
`mix phx.gen.html Accounts User users email:string:unique`
the generated app didn't compile. Rename the results of:
`find . -name '*.failed'`
to trigger these failures.

Thanks.
