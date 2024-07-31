.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->transform([Ljava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    .line 204
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 208
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    new-instance v1, Lcom/koushikdutta/async/http/ConnectionFailedException;

    const-string v2, "Unable to connect to remote address"

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->setComplete(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget v4, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$port:I

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v6, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-virtual/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 213
    :cond_1
    return-void
.end method
