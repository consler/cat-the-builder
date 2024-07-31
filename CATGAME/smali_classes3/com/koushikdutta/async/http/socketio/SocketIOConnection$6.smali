.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportConnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 2
    .param p1, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 275
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    return-void

    .line 277
    :cond_0
    iget-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connected:Z

    if-nez v0, :cond_2

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connected:Z

    .line 280
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connectCallback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    .line 281
    .local v0, "callback":Lcom/koushikdutta/async/http/socketio/ConnectCallback;
    if-eqz v0, :cond_1

    .line 282
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/koushikdutta/async/http/socketio/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    .line 283
    .end local v0    # "callback":Lcom/koushikdutta/async/http/socketio/ConnectCallback;
    :cond_1
    goto :goto_0

    .line 284
    :cond_2
    iget-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    if-eqz v0, :cond_3

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    .line 287
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->reconnectCallback:Lcom/koushikdutta/async/http/socketio/ReconnectCallback;

    .line 288
    .local v0, "callback":Lcom/koushikdutta/async/http/socketio/ReconnectCallback;
    if-eqz v0, :cond_3

    .line 289
    invoke-interface {v0}, Lcom/koushikdutta/async/http/socketio/ReconnectCallback;->onReconnect()V

    .line 295
    .end local v0    # "callback":Lcom/koushikdutta/async/http/socketio/ReconnectCallback;
    :cond_3
    :goto_0
    return-void
.end method
