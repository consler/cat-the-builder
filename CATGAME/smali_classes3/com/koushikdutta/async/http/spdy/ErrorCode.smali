.class final enum Lcom/koushikdutta/async/http/spdy/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/spdy/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum CANCEL:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum CONNECT_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum ENHANCE_YOUR_CALM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum FRAME_TOO_LARGE:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum INADEQUATE_SECURITY:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum INVALID_CREDENTIALS:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum NO_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum REFUSED_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum STREAM_ALREADY_CLOSED:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum STREAM_CLOSED:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum STREAM_IN_USE:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum UNSUPPORTED_VERSION:Lcom/koushikdutta/async/http/spdy/ErrorCode;


# instance fields
.field public final httpCode:I

.field public final spdyGoAwayCode:I

.field public final spdyRstCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 21
    new-instance v6, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/koushikdutta/async/http/spdy/ErrorCode;->NO_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 23
    new-instance v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v8, "PROTOCOL_ERROR"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 26
    new-instance v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v14, "INVALID_STREAM"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, -0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 29
    new-instance v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v8, "UNSUPPORTED_VERSION"

    const/4 v9, 0x3

    const/4 v11, 0x4

    const/4 v12, -0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->UNSUPPORTED_VERSION:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 32
    new-instance v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v14, "STREAM_IN_USE"

    const/4 v15, 0x4

    const/16 v17, 0x8

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;->STREAM_IN_USE:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 35
    new-instance v4, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v8, "STREAM_ALREADY_CLOSED"

    const/4 v9, 0x5

    const/16 v11, 0x9

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/koushikdutta/async/http/spdy/ErrorCode;->STREAM_ALREADY_CLOSED:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 37
    new-instance v5, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v14, "INTERNAL_ERROR"

    const/4 v15, 0x6

    const/16 v16, 0x2

    const/16 v17, 0x6

    const/16 v18, 0x2

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 39
    new-instance v13, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v8, "FLOW_CONTROL_ERROR"

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v13, Lcom/koushikdutta/async/http/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 41
    new-instance v7, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v15, "STREAM_CLOSED"

    const/16 v16, 0x8

    const/16 v17, 0x5

    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/koushikdutta/async/http/spdy/ErrorCode;->STREAM_CLOSED:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 43
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v21, "FRAME_TOO_LARGE"

    const/16 v22, 0x9

    const/16 v23, 0x6

    const/16 v24, 0xb

    const/16 v25, -0x1

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->FRAME_TOO_LARGE:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 45
    new-instance v9, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v15, "REFUSED_STREAM"

    const/16 v16, 0xa

    const/16 v17, 0x7

    const/16 v18, 0x3

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/koushikdutta/async/http/spdy/ErrorCode;->REFUSED_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 47
    new-instance v10, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v21, "CANCEL"

    const/16 v22, 0xb

    const/16 v23, 0x8

    const/16 v24, 0x5

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v10, Lcom/koushikdutta/async/http/spdy/ErrorCode;->CANCEL:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 49
    new-instance v11, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v15, "COMPRESSION_ERROR"

    const/16 v16, 0xc

    const/16 v17, 0x9

    const/16 v18, -0x1

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v11, Lcom/koushikdutta/async/http/spdy/ErrorCode;->COMPRESSION_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 51
    new-instance v12, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v21, "CONNECT_ERROR"

    const/16 v22, 0xd

    const/16 v23, 0xa

    const/16 v24, -0x1

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v12, Lcom/koushikdutta/async/http/spdy/ErrorCode;->CONNECT_ERROR:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 53
    new-instance v20, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v15, "ENHANCE_YOUR_CALM"

    const/16 v16, 0xe

    const/16 v17, 0xb

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v20, Lcom/koushikdutta/async/http/spdy/ErrorCode;->ENHANCE_YOUR_CALM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 55
    new-instance v14, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v22, "INADEQUATE_SECURITY"

    const/16 v23, 0xf

    const/16 v24, 0xc

    const/16 v26, -0x1

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v14, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INADEQUATE_SECURITY:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 57
    new-instance v15, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string v28, "INVALID_CREDENTIALS"

    const/16 v29, 0x10

    const/16 v30, -0x1

    const/16 v31, 0xa

    const/16 v32, -0x1

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v15, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_CREDENTIALS:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-object/from16 v16, v15

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const/16 v17, 0x0

    aput-object v6, v15, v17

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    .line 19
    sput-object v15, Lcom/koushikdutta/async/http/spdy/ErrorCode;->$VALUES:[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->httpCode:I

    .line 65
    iput p4, p0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->spdyRstCode:I

    .line 66
    iput p5, p0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->spdyGoAwayCode:I

    return-void
.end method

.method public static fromHttp2(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .locals 5

    .line 77
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    iget v4, v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromSpdy3Rst(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .locals 5

    .line 70
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 71
    iget v4, v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;->spdyRstCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromSpdyGoAway(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .locals 5

    .line 84
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    iget v4, v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;->spdyGoAwayCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .locals 1

    .line 19
    const-class v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .locals 1

    .line 19
    sget-object v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->$VALUES:[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/spdy/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/spdy/ErrorCode;

    return-object v0
.end method
