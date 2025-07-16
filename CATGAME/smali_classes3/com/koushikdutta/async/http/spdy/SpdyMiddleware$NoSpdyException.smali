.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;
.super Ljava/lang/Exception;
.source "SpdyMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoSpdyException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;-><init>()V

    return-void
.end method
