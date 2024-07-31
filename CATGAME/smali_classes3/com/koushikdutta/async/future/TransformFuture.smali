.class public abstract Lcom/koushikdutta/async/future/TransformFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "TransformFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "TT;>;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    .local p0, "this":Lcom/koushikdutta/async/future/TransformFuture;, "Lcom/koushikdutta/async/future/TransformFuture<TT;TF;>;"
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected error(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 22
    .local p0, "this":Lcom/koushikdutta/async/future/TransformFuture;, "Lcom/koushikdutta/async/future/TransformFuture<TT;TF;>;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->setComplete(Ljava/lang/Exception;)Z

    .line 23
    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TF;)V"
        }
    .end annotation

    .line 6
    .local p0, "this":Lcom/koushikdutta/async/future/TransformFuture;, "Lcom/koushikdutta/async/future/TransformFuture<TT;TF;>;"
    .local p2, "result":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/TransformFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->error(Ljava/lang/Exception;)V

    .line 10
    return-void

    .line 14
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/TransformFuture;->transform(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/TransformFuture;->error(Ljava/lang/Exception;)V

    .line 19
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected abstract transform(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
