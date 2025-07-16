.class Lcom/koushikdutta/async/future/MultiFuture$1;
.super Ljava/lang/Object;
.source "MultiFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/MultiFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/MultiFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/MultiFuture;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->this$0:Lcom/koushikdutta/async/future/MultiFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->this$0:Lcom/koushikdutta/async/future/MultiFuture;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->this$0:Lcom/koushikdutta/async/future/MultiFuture;

    iget-object v1, v1, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    .line 17
    iget-object v2, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->this$0:Lcom/koushikdutta/async/future/MultiFuture;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/FutureCallback;

    .line 23
    invoke-interface {v1, p1, p2}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
