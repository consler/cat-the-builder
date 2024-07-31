.class public Lcom/koushikdutta/async/dns/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 45
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    .end local v4    # "part":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 49
    return-void
.end method

.method public static lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .param p0, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 17
    .param p0, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "multicast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;)",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;"
        }
    .end annotation

    .line 64
    .local p3, "callback":Lcom/koushikdutta/async/future/FutureCallback;, "Lcom/koushikdutta/async/future/FutureCallback<Lcom/koushikdutta/async/dns/DnsResponse;>;"
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v0, 0x400

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 65
    .local v4, "packet":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-short v5, v0

    .line 66
    .local v5, "id":S
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/koushikdutta/async/dns/Dns;->setQuery(I)I

    move-result v6

    int-to-short v6, v6

    .line 67
    .local v6, "flags":S
    if-nez v2, :cond_0

    .line 68
    invoke-static {v6}, Lcom/koushikdutta/async/dns/Dns;->setRecursion(I)I

    move-result v7

    int-to-short v6, v7

    .line 70
    :cond_0
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 73
    const/4 v7, 0x1

    if-eqz v2, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 81
    invoke-static {v4, v1}, Lcom/koushikdutta/async/dns/Dns;->addName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 83
    if-eqz v2, :cond_2

    const/16 v8, 0xc

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 87
    if-nez v2, :cond_3

    .line 88
    invoke-static {v4, v1}, Lcom/koushikdutta/async/dns/Dns;->addName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 90
    const/16 v8, 0x1c

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 95
    :cond_3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 101
    const-string v8, "224.0.0.251"

    if-nez v2, :cond_4

    .line 102
    :try_start_0
    new-instance v9, Ljava/net/InetSocketAddress;

    const-string v10, "8.8.8.8"

    const/16 v11, 0x35

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v10, p0

    :try_start_1
    invoke-virtual {v10, v9}, Lcom/koushikdutta/async/AsyncServer;->connectDatagram(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object v9

    .local v9, "dgram":Lcom/koushikdutta/async/AsyncDatagramSocket;
    goto :goto_2

    .line 151
    .end local v9    # "dgram":Lcom/koushikdutta/async/AsyncDatagramSocket;
    :catch_0
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_4

    .line 106
    :cond_4
    move-object/from16 v10, p0

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v9

    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v9, v11, v7}, Lcom/koushikdutta/async/AsyncServer;->openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object v9

    .line 107
    .restart local v9    # "dgram":Lcom/koushikdutta/async/AsyncDatagramSocket;
    const-class v11, Ljava/net/DatagramSocket;

    const-string v12, "impl"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 108
    .local v11, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    invoke-virtual {v9}, Lcom/koushikdutta/async/AsyncDatagramSocket;->getSocket()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 110
    .local v12, "impl":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "join"

    new-array v15, v7, [Ljava/lang/Class;

    const-class v16, Ljava/net/InetAddress;

    aput-object v16, v15, v0

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 111
    .local v13, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v13, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    aput-object v15, v14, v0

    invoke-virtual {v13, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v9}, Lcom/koushikdutta/async/AsyncDatagramSocket;->getSocket()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/DatagramSocket;

    invoke-virtual {v14, v7}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 115
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "impl":Ljava/lang/Object;
    .end local v13    # "method":Ljava/lang/reflect/Method;
    :goto_2
    new-instance v11, Lcom/koushikdutta/async/dns/Dns$1;

    invoke-direct {v11, v9}, Lcom/koushikdutta/async/dns/Dns$1;-><init>(Lcom/koushikdutta/async/AsyncDatagramSocket;)V

    .line 123
    .local v11, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Lcom/koushikdutta/async/dns/DnsResponse;>;"
    new-instance v12, Lcom/koushikdutta/async/dns/Dns$2;

    invoke-direct {v12, v9, v2, v11, v3}, Lcom/koushikdutta/async/dns/Dns$2;-><init>(Lcom/koushikdutta/async/AsyncDatagramSocket;ZLcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {v9, v12}, Lcom/koushikdutta/async/AsyncDatagramSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 145
    if-nez v2, :cond_5

    .line 146
    new-instance v8, Lcom/koushikdutta/async/ByteBufferList;

    new-array v7, v7, [Ljava/nio/ByteBuffer;

    aput-object v4, v7, v0

    invoke-direct {v8, v7}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v9, v8}, Lcom/koushikdutta/async/AsyncDatagramSocket;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_3

    .line 148
    :cond_5
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v7, 0x14e9

    invoke-direct {v0, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v0, v4}, Lcom/koushikdutta/async/AsyncDatagramSocket;->send(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_3
    return-object v11

    .line 151
    .end local v9    # "dgram":Lcom/koushikdutta/async/AsyncDatagramSocket;
    .end local v11    # "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Lcom/koushikdutta/async/dns/DnsResponse;>;"
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v7, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v7}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 153
    .local v7, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Lcom/koushikdutta/async/dns/DnsResponse;>;"
    invoke-virtual {v7, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    .line 154
    if-eqz v2, :cond_6

    .line 155
    const/4 v8, 0x0

    invoke-interface {v3, v0, v8}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 156
    :cond_6
    return-object v7
.end method

.method public static lookup(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method public static multicastLookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .param p0, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    .line 56
    .local p2, "callback":Lcom/koushikdutta/async/future/FutureCallback;, "Lcom/koushikdutta/async/future/FutureCallback<Lcom/koushikdutta/async/dns/DnsResponse;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method public static multicastLookup(Ljava/lang/String;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    .line 60
    .local p1, "callback":Lcom/koushikdutta/async/future/FutureCallback;, "Lcom/koushikdutta/async/future/FutureCallback<Lcom/koushikdutta/async/dns/DnsResponse;>;"
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/koushikdutta/async/dns/Dns;->multicastLookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    return-object v0
.end method

.method private static setFlag(III)I
    .locals 1
    .param p0, "flags"    # I
    .param p1, "value"    # I
    .param p2, "offset"    # I

    .line 31
    shl-int v0, p1, p2

    or-int/2addr v0, p0

    return v0
.end method

.method private static setQuery(I)I
    .locals 1
    .param p0, "flags"    # I

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/koushikdutta/async/dns/Dns;->setFlag(III)I

    move-result v0

    return v0
.end method

.method private static setRecursion(I)I
    .locals 2
    .param p0, "flags"    # I

    .line 39
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/dns/Dns;->setFlag(III)I

    move-result v0

    return v0
.end method
