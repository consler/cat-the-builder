.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field final synthetic val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

.field final synthetic val$lookup:Ljava/lang/String;

.field final synthetic val$sockets:Lcom/koushikdutta/async/ArrayDeque;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    .line 301
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$sockets:Lcom/koushikdutta/async/ArrayDeque;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$lookup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 304
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$sockets:Lcom/koushikdutta/async/ArrayDeque;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$lookup:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->access$200(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
