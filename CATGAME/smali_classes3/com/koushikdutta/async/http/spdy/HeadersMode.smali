.class public final enum Lcom/koushikdutta/async/http/spdy/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field public static final enum HTTP_20_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field public static final enum SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field public static final enum SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lcom/koushikdutta/async/http/spdy/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 20
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string v1, "SPDY_REPLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 21
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string v1, "SPDY_HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 22
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string v1, "HTTP_20_HEADERS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 18
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/koushikdutta/async/http/spdy/HeadersMode;

    sget-object v6, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    aput-object v6, v1, v2

    sget-object v2, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/koushikdutta/async/http/spdy/HeadersMode;->$VALUES:[Lcom/koushikdutta/async/http/spdy/HeadersMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/HeadersMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/async/http/spdy/HeadersMode;
    .locals 1

    .line 18
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->$VALUES:[Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/spdy/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/spdy/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public failIfHeadersAbsent()Z
    .locals 1

    .line 39
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public failIfHeadersPresent()Z
    .locals 1

    .line 47
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public failIfStreamAbsent()Z
    .locals 1

    .line 26
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public failIfStreamPresent()Z
    .locals 1

    .line 31
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
