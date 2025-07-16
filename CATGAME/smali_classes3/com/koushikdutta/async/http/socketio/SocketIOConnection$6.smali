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

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 2

    .line 275
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connected:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connected:Z

    .line 280
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connectCallback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 282
    invoke-interface {v0, v1, p1}, Lcom/koushikdutta/async/http/socketio/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    .line 287
    iget-object p1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->reconnectCallback:Lcom/koushikdutta/async/http/socketio/ReconnectCallback;

    if-eqz p1, :cond_2

    .line 289
    invoke-interface {p1}, Lcom/koushikdutta/async/http/socketio/ReconnectCallback;->onReconnect()V

    :cond_2
    :goto_0
    return-void
.end method
