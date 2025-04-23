# net

(dont let this PRed in this is a note for me)
dont work on this until the api is finalized

```luau
local net = require("@lute/net")
```

## get
```luau
() -> string
```

## getAsync <Badge type="warning" text="yields" />
```luau
() -> string
```

## serve
```luau
({ hostname: string?, port: number?, handler: RequestHandler } | RequestHandler) -> ServeHandle
```
