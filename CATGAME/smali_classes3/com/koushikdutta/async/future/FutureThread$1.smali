.class Lcom/koushikdutta/async/future/FutureThread$1;
.super Ljava/lang/Object;
.source "FutureThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/FutureThread;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/koushikdutta/async/future/FutureRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/FutureThread;

.field final synthetic val$runnable:Lcom/koushikdutta/async/future/FutureRunnable;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/FutureThread;Lcom/koushikdutta/async/future/FutureRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/future/FutureThread;

    .line 14
    .local p0, "this":Lcom/koushikdutta/async/future/FutureThread$1;, "Lcom/koushikdutta/async/future/FutureThread$1;"
    iput-object p1, p0, Lcom/koushikdutta/async/future/FutureThread$1;->this$0:Lcom/koushikdutta/async/future/FutureThread;

    iput-object p2, p0, Lcom/koushikdutta/async/future/FutureThread$1;->val$runnable:Lcom/koushikdutta/async/future/FutureRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 18
    .local p0, "this":Lcom/koushikdutta/async/future/FutureThread$1;, "Lcom/koushikdutta/async/future/FutureThread$1;"
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/FutureThread$1;->this$0:Lcom/koushikdutta/async/future/FutureThread;

    iget-object v1, p0, Lcom/koushikdutta/async/future/FutureThread$1;->val$runnable:Lcom/koushikdutta/async/future/FutureRunnable;

    invoke-interface {v1}, Lcom/koushikdutta/async/future/FutureRunnable;->run()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/FutureThread;->setComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/koushikdutta/async/future/FutureThread$1;->this$0:Lcom/koushikdutta/async/future/FutureThread;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/FutureThread;->setComplete(Ljava/lang/Exception;)Z

    .line 23
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
