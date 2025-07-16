.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->createHandshakeCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "checking spdy handshake"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    if-nez p1, :cond_4

    .line 199
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 206
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslNativePointer:Ljava/lang/reflect/Field;

    invoke-interface {p2}, Lcom/koushikdutta/async/AsyncSSLSocket;->getSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 207
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-nez p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {p1, v1, v2, v0, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$200(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 210
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$300(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 214
    invoke-static {v1}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 215
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/Protocol;->needsSpdyConnection()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    new-instance p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;

    invoke-static {v1}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V

    .line 246
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sendConnectionPreface()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    .line 216
    :cond_3
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {p1, v1, v2, v0, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$200(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 217
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$300(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 222
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 200
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$200(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 201
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$300(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V

    return-void
.end method
