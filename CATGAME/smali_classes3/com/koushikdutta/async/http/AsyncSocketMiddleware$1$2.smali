.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


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

.field final synthetic val$address:Ljava/net/InetAddress;

.field final synthetic val$inetSockAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$inetSockAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$address:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attempting connection to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$inetSockAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$address:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget v2, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v4, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget v5, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$port:I

    const/4 v6, 0x0

    new-instance v7, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;

    invoke-direct {v7, p0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 223
    invoke-virtual/range {v2 .. v7}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p2

    .line 222
    invoke-virtual {p1, v0, p2}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method
