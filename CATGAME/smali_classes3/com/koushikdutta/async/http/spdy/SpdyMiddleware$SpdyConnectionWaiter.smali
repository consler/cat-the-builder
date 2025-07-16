.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;
.super Lcom/koushikdutta/async/future/MultiFuture;
.source "SpdyMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpdyConnectionWaiter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/MultiFuture<",
        "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;",
        ">;"
    }
.end annotation


# instance fields
.field originalCancellable:Lcom/koushikdutta/async/future/SimpleCancellable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    .line 133
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->originalCancellable:Lcom/koushikdutta/async/future/SimpleCancellable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;-><init>()V

    return-void
.end method
