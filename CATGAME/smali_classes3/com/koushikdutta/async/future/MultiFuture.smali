.class public Lcom/koushikdutta/async/future/MultiFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "MultiFuture.java"


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
.field final callback:Lcom/koushikdutta/async/future/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 11
    new-instance v0, Lcom/koushikdutta/async/future/MultiFuture$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/MultiFuture$1;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    return-void
.end method


# virtual methods
.method public bridge synthetic setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/MultiFuture<",
            "TT;>;"
        }
    .end annotation

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    return-object p0

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;

    move-result-object p1

    return-object p1
.end method
