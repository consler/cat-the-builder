.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;
    }
.end annotation


# instance fields
.field ackCount:I

.field acknowledges:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/socketio/Acknowledge;",
            ">;"
        }
    .end annotation
.end field

.field clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/socketio/SocketIOClient;",
            ">;"
        }
    .end annotation
.end field

.field connecting:Lcom/koushikdutta/async/future/Cancellable;

.field heartbeat:I

.field httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field reconnectDelay:J

.field request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

.field transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/socketio/SocketIORequest;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledges:Ljava/util/Hashtable;

    .line 40
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 41
    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    .line 42
    iget-object p1, p2, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->config:Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    iget-wide p1, p1, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelay:J

    iput-wide p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportDisconnect(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->attach()V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledge(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportString(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private acknowledge(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;
    .locals 2

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "\\+$"

    const-string v1, ""

    .line 345
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private attach()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->heartbeats()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->setupHeartbeat()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 383
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V

    .line 456
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$14;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$14;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method private delayReconnect()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 212
    iget-boolean v1, v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$4;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$4;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    iget-wide v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    .line 226
    invoke-direct {p0, v2, v3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->nextReconnectDelay(J)J

    move-result-wide v2

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    .line 228
    iget-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->config:Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    iget-wide v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelayMax:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 230
    iget-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    iget-object v2, v2, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->config:Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    iget-wide v2, v2, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelayMax:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    :cond_4
    :goto_1
    return-void
.end method

.method private nextReconnectDelay(J)J
    .locals 4

    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->config:Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->randomizeReconnectDelay:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    shr-long v0, p1, v0

    long-to-double p1, p1

    .line 240
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr p1, v2

    double-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method private reportConnect(Ljava/lang/String;)V
    .locals 1

    .line 272
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method private reportDisconnect(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "socket.io disconnected"

    if-eqz p1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    invoke-virtual {v1, v0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->logi(Ljava/lang/String;)V

    .line 250
    :goto_0
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$5;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$5;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 268
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->delayReconnect()V

    return-void
.end method

.method private reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 331
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method private reportEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1

    .line 322
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method private reportJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1

    .line 300
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method private reportString(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1

    .line 311
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method private select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    if-eqz p1, :cond_1

    .line 198
    iget-object v2, v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    :cond_1
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;->onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public connect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    aput-object p1, v2, v3

    const-string p1, "1::%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    return-void
.end method

.method public disconnect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 76
    iget-object v1, v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    iget-object v4, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 85
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    aput-object p1, v3, v2

    const-string p1, "0::%s"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 91
    invoke-interface {v1, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V

    .line 92
    invoke-interface {v1, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 93
    invoke-interface {v1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->disconnect()V

    .line 94
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    :cond_5
    :goto_1
    return-void
.end method

.method public emitRaw(ILcom/koushikdutta/async/http/socketio/SocketIOClient;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 4

    const-string v0, ""

    if-eqz p4, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->ackCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->ackCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledges:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 58
    :cond_0
    iget-object p4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/4 p1, 0x2

    iget-object p2, p2, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    const-string p1, "%d:%s:%s:%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reconnect(Lcom/koushikdutta/async/future/DependentCancellable;)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/DependentCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    :cond_1
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    const-string v1, "Reconnecting socket.io"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->logi(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    .line 113
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    .line 157
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    if-eqz p1, :cond_3

    .line 172
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/DependentCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    :cond_3
    return-void
.end method

.method setupHeartbeat()V
    .locals 1

    .line 176
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$3;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    .line 189
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
