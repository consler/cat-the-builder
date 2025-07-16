.class public Lcom/koushikdutta/async/http/WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/WebSocket;


# static fields
.field static final MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# instance fields
.field private mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mParser:Lcom/koushikdutta/async/http/HybiParser;

.field private mPingCallback:Lcom/koushikdutta/async/http/WebSocket$PingCallback;

.field private mPongCallback:Lcom/koushikdutta/async/http/WebSocket$PongCallback;

.field mSink:Lcom/koushikdutta/async/BufferedDataSink;

.field private mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field private mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

.field private pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 162
    new-instance p1, Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 4

    .line 122
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 124
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Origin"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x65

    .line 129
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 130
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "WebSocket"

    const-string v3, "Upgrade"

    invoke-virtual {v1, v3, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 131
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 132
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 133
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 139
    :cond_0
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->writeHead()V

    const/4 p1, 0x0

    .line 141
    invoke-direct {p0, p1, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->setupParser(ZZ)V

    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 39
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "iso-8859-1"

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 41
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 42
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->addAndEmit(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object p0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PingCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mPingCallback:Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PongCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mPongCallback:Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    return-object p0
.end method

.method private addAndEmit(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 55
    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 56
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->isPaused()Z

    move-result p1

    if-nez p1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    .line 65
    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 66
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    :cond_3
    return-void
.end method

.method public static addWebSocketUpgradeHeaders(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->toByteArray(Ljava/util/UUID;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    .line 147
    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v2, "Sec-WebSocket-Key"

    .line 148
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Sec-WebSocket-Extensions"

    const-string v2, "x-webkit-deflate-frame"

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Connection"

    const-string v2, "Upgrade"

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v1, "websocket"

    .line 151
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    if-eqz p1, :cond_0

    const-string v1, "Sec-WebSocket-Protocol"

    .line 153
    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_0
    const-string p1, "Pragma"

    const-string v1, "no-cache"

    .line 154
    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Cache-Control"

    .line 155
    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 156
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p0

    const-string p1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_1
    return-void
.end method

.method public static finishHandshake(Lcom/koushikdutta/async/http/Headers;Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 168
    :cond_0
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->code()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    return-object v0

    .line 170
    :cond_1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Upgrade"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "websocket"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 173
    :cond_2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "Sec-WebSocket-Key"

    .line 176
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    .line 179
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Lcom/koushikdutta/async/http/WebSocketImpl;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Sec-WebSocket-Extensions"

    .line 183
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    const-string v1, "x-webkit-deflate-frame"

    .line 186
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v0

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    .line 194
    :goto_0
    new-instance v1, Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->detachSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 195
    invoke-direct {v1, v0, p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->setupParser(ZZ)V

    return-object v1
.end method

.method private setupParser(ZZ)V
    .locals 2

    .line 74
    new-instance v0, Lcom/koushikdutta/async/http/WebSocketImpl$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl$1;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/DataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    .line 113
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/HybiParser;->setMasking(Z)V

    .line 114
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/HybiParser;->setDeflate(Z)V

    .line 115
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    :cond_0
    return-void
.end method

.method private static toByteArray(Ljava/util/UUID;)[B
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 31
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    return-object v0
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void
.end method

.method public end()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->end()V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getPongCallback()Lcom/koushikdutta/async/http/WebSocket$PongCallback;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mPongCallback:Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getStringCallback()Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->pause()V

    return-void
.end method

.method public ping(Ljava/lang/String;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/http/HybiParser;->pingFrame(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public pong(Ljava/lang/String;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/http/HybiParser;->pongFrame(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v2, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/HybiParser;->frame(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public send([B)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v2, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/HybiParser;->frame([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public send([BII)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v2, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2, p1, p2, p3}, Lcom/koushikdutta/async/http/HybiParser;->frame([BII)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setPingCallback(Lcom/koushikdutta/async/http/WebSocket$PingCallback;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mPingCallback:Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    return-void
.end method

.method public setPongCallback(Lcom/koushikdutta/async/http/WebSocket$PongCallback;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mPongCallback:Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 303
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllByteArray()[B

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->send([B)V

    return-void
.end method
