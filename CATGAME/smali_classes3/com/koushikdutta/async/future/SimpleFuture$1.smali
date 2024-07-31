.class Lcom/koushikdutta/async/future/SimpleFuture$1;
.super Ljava/lang/Object;
.source "SimpleFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/SimpleFuture;->getCompletionCallback()Lcom/koushikdutta/async/future/FutureCallback;
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
.field final synthetic this$0:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/future/SimpleFuture;

    .line 146
    .local p0, "this":Lcom/koushikdutta/async/future/SimpleFuture$1;, "Lcom/koushikdutta/async/future/SimpleFuture$1;"
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture$1;->this$0:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/koushikdutta/async/future/SimpleFuture$1;, "Lcom/koushikdutta/async/future/SimpleFuture$1;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture$1;->this$0:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 150
    return-void
.end method
