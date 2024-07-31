.class public Lcom/koushikdutta/async/http/socketio/SocketIOClient;
.super Lcom/koushikdutta/async/http/socketio/EventEmitter;
.source "SocketIOClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field connectCallback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

.field connected:Z

.field connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field disconnectCallback:Lcom/koushikdutta/async/http/socketio/DisconnectCallback;

.field disconnected:Z

.field endpoint:Ljava/lang/String;

.field errorCallback:Lcom/koushikdutta/async/http/socketio/ErrorCallback;

.field exceptionCallback:Lcom/koushikdutta/async/http/socketio/ExceptionCallback;

.field jsonCallback:Lcom/koushikdutta/async/http/socketio/JSONCallback;

.field reconnectCallback:Lcom/koushikdutta/async/http/socketio/ReconnectCallback;

.field stringCallback:Lcom/koushikdutta/async/http/socketio/StringCallback;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)V
    .locals 0
    .param p1, "connection"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection;
    .param p2, "endpoint"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    .line 159
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/EventEmitter;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 162
    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connectCallback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    .line 163
    return-void
.end method

.method public static connect(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/socketio/SocketIORequest;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 6
    .param p0, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "request"    # Lcom/koushikdutta/async/http/socketio/SocketIORequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/socketio/ConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpClient;",
            "Lcom/koushikdutta/async/http/socketio/SocketIORequest;",
            "Lcom/koushikdutta/async/http/socketio/ConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/socketio/SocketIOClient;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 75
    .local v0, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Lcom/koushikdutta/async/http/socketio/SocketIOClient;>;"
    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/socketio/SocketIORequest;)V

    .line 77
    .local v1, "connection":Lcom/koushikdutta/async/http/socketio/SocketIOConnection;
    new-instance v2, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIORequest;Lcom/koushikdutta/async/http/socketio/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    .line 102
    .local v2, "wrappedCallback":Lcom/koushikdutta/async/http/socketio/ConnectCallback;
    iget-object v3, v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    new-instance v4, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    const-string v5, ""

    invoke-direct {v4, v1, v5, v2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnect(Lcom/koushikdutta/async/future/DependentCancellable;)V

    .line 105
    return-object v0
.end method

.method public static connect(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .param p0, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/socketio/ConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpClient;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/socketio/ConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/socketio/SocketIOClient;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connect(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/socketio/SocketIORequest;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method private emitRaw(ILjava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->emitRaw(ILcom/koushikdutta/async/http/socketio/SocketIOClient;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 20
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->disconnect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    .line 171
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnectCallback:Lcom/koushikdutta/async/http/socketio/DisconnectCallback;

    .line 172
    .local v0, "disconnectCallback":Lcom/koushikdutta/async/http/socketio/DisconnectCallback;
    if-eqz v0, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/socketio/DisconnectCallback;->onDisconnect(Ljava/lang/Exception;)V

    .line 175
    :cond_0
    return-void
.end method

.method public emit(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    check-cast v0, Lcom/koushikdutta/async/http/socketio/Acknowledge;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emit(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 28
    return-void
.end method

.method public emit(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .line 46
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emitRaw(ILjava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 47
    return-void
.end method

.method public emit(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emit(Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 24
    return-void
.end method

.method public emit(Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v0, "event":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "args"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const/4 v1, 0x5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emitRaw(ILjava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 43
    :goto_0
    return-void
.end method

.method public emit(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonMessage"    # Lorg/json/JSONObject;

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emit(Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 32
    return-void
.end method

.method public emit(Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 2
    .param p1, "jsonMessage"    # Lorg/json/JSONObject;
    .param p2, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emitRaw(ILjava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 51
    return-void
.end method

.method public emitEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emitEvent(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 55
    return-void
.end method

.method public emitEvent(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v0, "event":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const/4 v1, 0x5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emitRaw(ILjava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 65
    :goto_0
    return-void
.end method

.method public getDisconnectCallback()Lcom/koushikdutta/async/http/socketio/DisconnectCallback;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnectCallback:Lcom/koushikdutta/async/http/socketio/DisconnectCallback;

    return-object v0
.end method

.method public getErrorCallback()Lcom/koushikdutta/async/http/socketio/ErrorCallback;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->errorCallback:Lcom/koushikdutta/async/http/socketio/ErrorCallback;

    return-object v0
.end method

.method public getExceptionCallback()Lcom/koushikdutta/async/http/socketio/ExceptionCallback;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->exceptionCallback:Lcom/koushikdutta/async/http/socketio/ExceptionCallback;

    return-object v0
.end method

.method public getJSONCallback()Lcom/koushikdutta/async/http/socketio/JSONCallback;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->jsonCallback:Lcom/koushikdutta/async/http/socketio/JSONCallback;

    return-object v0
.end method

.method public getReconnectCallback()Lcom/koushikdutta/async/http/socketio/ReconnectCallback;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->reconnectCallback:Lcom/koushikdutta/async/http/socketio/ReconnectCallback;

    return-object v0
.end method

.method public getStringCallback()Lcom/koushikdutta/async/http/socketio/StringCallback;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->stringCallback:Lcom/koushikdutta/async/http/socketio/StringCallback;

    return-object v0
.end method

.method public getTransport()Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public of(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)V
    .locals 2
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "connectCallback"    # Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    .line 178
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    invoke-direct {v1, v0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    .line 179
    return-void
.end method

.method public reconnect()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnect(Lcom/koushikdutta/async/future/DependentCancellable;)V

    .line 183
    return-void
.end method

.method public setDisconnectCallback(Lcom/koushikdutta/async/http/socketio/DisconnectCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/DisconnectCallback;

    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnectCallback:Lcom/koushikdutta/async/http/socketio/DisconnectCallback;

    .line 131
    return-void
.end method

.method public setErrorCallback(Lcom/koushikdutta/async/http/socketio/ErrorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/ErrorCallback;

    .line 122
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->errorCallback:Lcom/koushikdutta/async/http/socketio/ErrorCallback;

    .line 123
    return-void
.end method

.method public setExceptionCallback(Lcom/koushikdutta/async/http/socketio/ExceptionCallback;)V
    .locals 0
    .param p1, "exceptionCallback"    # Lcom/koushikdutta/async/http/socketio/ExceptionCallback;

    .line 110
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->exceptionCallback:Lcom/koushikdutta/async/http/socketio/ExceptionCallback;

    .line 111
    return-void
.end method

.method public setJSONCallback(Lcom/koushikdutta/async/http/socketio/JSONCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/JSONCallback;

    .line 146
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->jsonCallback:Lcom/koushikdutta/async/http/socketio/JSONCallback;

    .line 147
    return-void
.end method

.method public setReconnectCallback(Lcom/koushikdutta/async/http/socketio/ReconnectCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/ReconnectCallback;

    .line 138
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->reconnectCallback:Lcom/koushikdutta/async/http/socketio/ReconnectCallback;

    .line 139
    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/socketio/StringCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/StringCallback;

    .line 154
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->stringCallback:Lcom/koushikdutta/async/http/socketio/StringCallback;

    .line 155
    return-void
.end method
