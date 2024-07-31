.class public abstract Lcom/koushikdutta/async/future/ConvertFuture;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "ConvertFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "TT;TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    .local p0, "this":Lcom/koushikdutta/async/future/ConvertFuture;, "Lcom/koushikdutta/async/future/ConvertFuture<TT;TF;>;"
    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract convert(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final transform(Ljava/lang/Object;)V
    .locals 1
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

    .line 9
    .local p0, "this":Lcom/koushikdutta/async/future/ConvertFuture;, "Lcom/koushikdutta/async/future/ConvertFuture<TT;TF;>;"
    .local p1, "result":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/ConvertFuture;->convert(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/ConvertFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 10
    return-void
.end method
