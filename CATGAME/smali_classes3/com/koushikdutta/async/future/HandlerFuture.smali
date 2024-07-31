.class public Lcom/koushikdutta/async/future/HandlerFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "HandlerFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    .local p0, "this":Lcom/koushikdutta/async/future/HandlerFuture;, "Lcom/koushikdutta/async/future/HandlerFuture<TT;>;"
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 14
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 16
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/koushikdutta/async/future/HandlerFuture;->handler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    .line 9
    .local p0, "this":Lcom/koushikdutta/async/future/HandlerFuture;, "Lcom/koushikdutta/async/future/HandlerFuture<TT;>;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/HandlerFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/koushikdutta/async/future/HandlerFuture;, "Lcom/koushikdutta/async/future/HandlerFuture<TT;>;"
    .local p1, "callback":Lcom/koushikdutta/async/future/FutureCallback;, "Lcom/koushikdutta/async/future/FutureCallback<TT;>;"
    new-instance v0, Lcom/koushikdutta/async/future/HandlerFuture$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/HandlerFuture$1;-><init>(Lcom/koushikdutta/async/future/HandlerFuture;Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 37
    .local v0, "wrapped":Lcom/koushikdutta/async/future/FutureCallback;, "Lcom/koushikdutta/async/future/FutureCallback<TT;>;"
    invoke-super {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v1

    return-object v1
.end method
