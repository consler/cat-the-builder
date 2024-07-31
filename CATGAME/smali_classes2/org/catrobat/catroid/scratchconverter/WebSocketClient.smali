.class public final Lorg/catrobat/catroid/scratchconverter/WebSocketClient;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lorg/catrobat/catroid/scratchconverter/Client;
.implements Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;",
        ":",
        "Lcom/koushikdutta/async/http/WebSocket$StringCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/catrobat/catroid/scratchconverter/Client;",
        "Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;",
        "Lcom/koushikdutta/async/callback/CompletedCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private asyncHttpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private clientID:J

.field private connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

.field private convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

.field private final messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lorg/catrobat/catroid/scratchconverter/Client$State;

.field private webSocket:Lcom/koushikdutta/async/http/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLorg/catrobat/catroid/scratchconverter/protocol/MessageListener;)V
    .locals 1
    .param p1, "clientID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    .local p3, "messageListener":Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->asyncHttpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 67
    iput-wide p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    .line 68
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/Client$State;->NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    .line 69
    invoke-interface {p3, p0}, Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;->setBaseMessageHandler(Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;)V

    .line 70
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    .line 72
    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    .line 73
    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lorg/catrobat/catroid/scratchconverter/Client$State;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    return-object v0
.end method

.method static synthetic access$002(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lorg/catrobat/catroid/scratchconverter/Client$State;)Lorg/catrobat/catroid/scratchconverter/Client$State;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;
    .param p1, "x1"    # Lorg/catrobat/catroid/scratchconverter/Client$State;

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    return-object p1
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    return-object v0
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lcom/koushikdutta/async/http/WebSocket;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/WebSocket;

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    return-object p1
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->authenticate()V

    return-void
.end method

.method private authenticate()V
    .locals 4

    .line 147
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 149
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/AuthenticateCommand;

    iget-wide v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/command/AuthenticateCommand;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->sendCommand(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;)V

    .line 150
    return-void
.end method

.method private connect(Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;)V
    .locals 5
    .param p1, "connectCallback"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;

    .line 99
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v0, v1, :cond_0

    .line 100
    invoke-interface {p1}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;->onSuccess()V

    .line 101
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->asyncHttpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 106
    move-object v0, p0

    .line 107
    .local v0, "client":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->asyncHttpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    const/4 v2, 0x0

    new-instance v3, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;

    invoke-direct {v3, p0, p1, v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;-><init>(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)V

    const-string v4, "wss://scratch2.catrob.at/convertersocket"

    invoke-virtual {v1, v4, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    .line 128
    return-void
.end method

.method private sendCommand(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;)V
    .locals 4
    .param p1, "command"    # Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;

    .line 283
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 284
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 285
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 287
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "dataToSend":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/WebSocket;->send(Ljava/lang/String;)V

    .line 290
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 139
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 142
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/Client$State;->NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->close()V

    .line 144
    return-void
.end method

.method public connectAndAuthenticate(Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;)V
    .locals 2
    .param p1, "connectAuthCallback"    # Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    .line 153
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    .line 155
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$3;->$SwitchMap$org$catrobat$catroid$scratchconverter$Client$State:[I

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/Client$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    const-string v1, "Already authenticated!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    invoke-interface {p1, v0, v1}, Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;->onSuccess(J)V

    goto :goto_0

    .line 172
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    const-string v1, "Already connected to WebSocket server!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->authenticate()V

    .line 174
    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;-><init>(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connect(Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;)V

    .line 169
    nop

    .line 181
    :goto_0
    return-void
.end method

.method public convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;ZZ)V
    .locals 6
    .param p1, "jobID"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "image"    # Lcom/google/android/gms/common/images/WebImage;
    .param p5, "verbose"    # Z
    .param p6, "force"    # Z

    .line 203
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 204
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 205
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;-><init>(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;)V

    .line 207
    .local v0, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    if-nez v1, :cond_2

    goto :goto_2

    .line 212
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    invoke-interface {v1, v0, p6, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;->scheduleJob(Lorg/catrobat/catroid/scratchconverter/protocol/Job;ZLorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 213
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot schedule job since another job of the same Scratch program is already running (job ID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    new-instance v2, Lorg/catrobat/catroid/scratchconverter/ClientException;

    const-string v3, "Cannot start this job since the job already exists and is in progress! Set force-flag to true to restart the conversion while it is running!"

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/scratchconverter/ClientException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionFailure(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    .line 218
    return-void

    .line 221
    :cond_3
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling new job with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Lorg/catrobat/catroid/scratchconverter/protocol/command/ScheduleJobCommand;

    invoke-direct {v1, p1, p2, p6, p5}, Lorg/catrobat/catroid/scratchconverter/protocol/command/ScheduleJobCommand;-><init>(JZZ)V

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->sendCommand(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;)V

    .line 223
    return-void

    .line 208
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    new-instance v2, Lorg/catrobat/catroid/scratchconverter/ClientException;

    const-string v3, "Not connected!"

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/scratchconverter/ClientException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionFailure(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    .line 209
    return-void
.end method

.method public getNumberOfJobsInProgress()I
    .locals 1

    .line 197
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;->getNumberOfJobsInProgress()I

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 2

    .line 87
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 82
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 2

    .line 77
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isJobInProgress(J)Z
    .locals 1
    .param p1, "jobID"    # J

    .line 192
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;->isJobInProgress(J)Z

    move-result v0

    return v0
.end method

.method public onBaseMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;)V
    .locals 8
    .param p1, "baseMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;

    .line 234
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 235
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;

    .line 236
    .local v0, "infoMessage":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;->getCatrobatLanguageVersion()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;->getJobList()[Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onInfo(D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 238
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;->getJobList()[Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v2

    .line 239
    .local v2, "jobs":[Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 240
    .local v4, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    iget-object v5, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    iget-object v6, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    invoke-interface {v5, v4, v6}, Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;->restoreJobIfRunning(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    move-result-object v5

    .line 241
    .local v5, "downloadCallback":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    if-eqz v5, :cond_0

    .line 242
    iget-object v6, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getDownloadURL()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v5, v7}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionAlreadyFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;)V

    .line 239
    .end local v4    # "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .end local v5    # "downloadCallback":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return-void

    .line 248
    .end local v0    # "infoMessage":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;
    .end local v2    # "jobs":[Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    :cond_2
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 249
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;

    .line 250
    .local v0, "errorMessage":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v3, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v3, v4, :cond_4

    .line 253
    iget-object v3, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 254
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    new-instance v2, Lorg/catrobat/catroid/scratchconverter/ClientException;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/scratchconverter/ClientException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;->onAuthenticationFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    goto :goto_1

    .line 255
    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v1, v2, :cond_5

    .line 256
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    const/4 v2, 0x0

    new-instance v3, Lorg/catrobat/catroid/scratchconverter/ClientException;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/scratchconverter/ClientException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionFailure(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    goto :goto_1

    .line 258
    :cond_5
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onError(Ljava/lang/String;)V

    .line 260
    :goto_1
    return-void

    .line 263
    .end local v0    # "errorMessage":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;
    :cond_6
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-ne v0, v3, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 266
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;

    .line 267
    .local v0, "clientIDMessage":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;
    iget-wide v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    .line 268
    .local v1, "oldClientID":J
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;->getClientID()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    .line 270
    cmp-long v3, v3, v1

    if-eqz v3, :cond_8

    .line 271
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Client ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_8
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    iput-object v3, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    .line 275
    iget-object v3, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    iget-wide v4, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    invoke-interface {v3, v4, v5}, Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;->onSuccess(J)V

    .line 276
    return-void

    .line 279
    .end local v0    # "clientIDMessage":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;
    .end local v1    # "oldClientID":J
    :cond_9
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No handler implemented for base message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 134
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/Client$State;->NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    .line 135
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ClientException;

    invoke-direct {v1, p1}, Lorg/catrobat/catroid/scratchconverter/ClientException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;->onConnectionClosed(Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    .line 136
    return-void
.end method

.method public onUserCanceledConversion(J)V
    .locals 6
    .param p1, "jobID"    # J

    .line 227
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 228
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 229
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->messageListener:Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;->onUserCanceledConversion(J)V

    .line 230
    return-void
.end method

.method public retrieveInfo()V
    .locals 6

    .line 185
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->state:Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 186
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->clientID:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 187
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/RetrieveInfoCommand;

    invoke-direct {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/command/RetrieveInfoCommand;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->sendCommand(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;)V

    .line 188
    return-void
.end method

.method public setAsyncHttpClient(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 0
    .param p1, "asyncHttpClient"    # Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 91
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->asyncHttpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 92
    return-void
.end method

.method public setConvertCallback(Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 95
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient<TT;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->convertCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 96
    return-void
.end method
