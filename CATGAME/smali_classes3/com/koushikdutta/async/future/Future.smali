.class public interface abstract Lcom/koushikdutta/async/future/Future;
.super Ljava/lang/Object;
.source "Future.java"

# interfaces
.implements Lcom/koushikdutta/async/future/Cancellable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/Cancellable;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;>(TC;)TC;"
        }
    .end annotation
.end method

.method public abstract tryGet()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract tryGetException()Ljava/lang/Exception;
.end method
