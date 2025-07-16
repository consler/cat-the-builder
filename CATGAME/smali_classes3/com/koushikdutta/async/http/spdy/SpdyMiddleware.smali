.class public Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;
.super Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
.source "SpdyMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;,
        Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;
    }
.end annotation


# static fields
.field private static final NO_SPDY:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;


# instance fields
.field alpnProtocols:Ljava/lang/reflect/Field;

.field connections:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;",
            ">;"
        }
    .end annotation
.end field

.field initialized:Z

.field nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

.field nativeGetNpnNegotiatedProtocol:Ljava/lang/reflect/Method;

.field npnProtocols:Ljava/lang/reflect/Field;

.field peerHost:Ljava/lang/reflect/Field;

.field peerPort:Ljava/lang/reflect/Field;

.field spdyEnabled:Z

.field sslNativePointer:Ljava/lang/reflect/Field;

.field sslParameters:Ljava/lang/reflect/Field;

.field useSni:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 175
    new-instance v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->NO_SPDY:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    .line 129
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->connections:Ljava/util/Hashtable;

    .line 43
    new-instance p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->addEngineConfigurator(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->configure(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->invokeConnect(Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->noSpdy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->newSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    return-void
.end method

.method static synthetic access$601(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p0

    return-object p0
.end method

.method private canSpdyRequest(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Z
    .locals 0

    .line 301
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static varargs concatLengthPrefixed([Lcom/koushikdutta/async/http/Protocol;)[B
    .locals 6

    const/16 v0, 0x2000

    .line 151
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 152
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 153
    sget-object v5, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/koushikdutta/async/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 158
    new-instance p0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getAllByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private configure(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .locals 7

    .line 57
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->initialized:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->spdyEnabled:Z

    if-eqz v0, :cond_0

    .line 58
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->initialized:Z

    .line 60
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "peerHost"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->peerHost:Ljava/lang/reflect/Field;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "peerPort"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->peerPort:Ljava/lang/reflect/Field;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sslParameters"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    .line 63
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "npnProtocols"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->npnProtocols:Ljava/lang/reflect/Field;

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "alpnProtocols"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->alpnProtocols:Ljava/lang/reflect/Field;

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "useSni"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->useSni:Ljava/lang/reflect/Field;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sslNativePointer"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslNativePointer:Ljava/lang/reflect/Field;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".NativeCrypto"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "SSL_get_npn_negotiated_protocol"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 69
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetNpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    .line 70
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "SSL_get0_alpn_selected"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 71
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->peerHost:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->peerPort:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->npnProtocols:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->alpnProtocols:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->useSni:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslNativePointer:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetNpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    .line 85
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->npnProtocols:Ljava/lang/reflect/Field;

    .line 86
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->alpnProtocols:Ljava/lang/reflect/Field;

    .line 87
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->useSni:Ljava/lang/reflect/Field;

    .line 88
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslNativePointer:Ljava/lang/reflect/Field;

    .line 89
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetNpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    .line 90
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    .line 97
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->canSpdyRequest(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 100
    :cond_1
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_2

    :try_start_1
    new-array p2, v2, [Lcom/koushikdutta/async/http/Protocol;

    .line 102
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->concatLengthPrefixed([Lcom/koushikdutta/async/http/Protocol;)[B

    move-result-object p2

    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->peerHost:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->peerPort:Ljava/lang/reflect/Field;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslParameters:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 110
    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->alpnProtocols:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->useSni:Ljava/lang/reflect/Field;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private invokeConnect(Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->connections:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->originalCancellable:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    :cond_0
    invoke-interface {p2, p3, p4}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    :cond_1
    return-void
.end method

.method private newSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .locals 9

    .line 255
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 257
    iget-object v1, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->protocol:Ljava/lang/String;

    .line 259
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_METHOD:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_PATH:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->requestPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    sget-object v3, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    iget-object v4, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    if-ne v3, v4, :cond_0

    .line 274
    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v4, Lcom/koushikdutta/async/http/spdy/Header;->VERSION:Lcom/koushikdutta/async/http/spdy/ByteString;

    const-string v5, "HTTP/1.1"

    invoke-direct {v3, v4, v5}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v4, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_HOST:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-direct {v3, v4, v2}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    sget-object v3, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    iget-object v4, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    if-ne v3, v4, :cond_5

    .line 277
    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v4, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_AUTHORITY:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-direct {v3, v4, v2}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_0
    new-instance v2, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_SCHEME:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    iget-object v5, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    invoke-static {v5, v4}, Lcom/koushikdutta/async/http/spdy/SpdyTransport;->isProhibitedHeader(Lcom/koushikdutta/async/http/Protocol;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 287
    :cond_2
    invoke-virtual {v2, v4}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 288
    new-instance v7, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 292
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 293
    :goto_3
    invoke-virtual {p2, v1, p1, v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->newStream(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-result-object p1

    const/4 p2, 0x0

    .line 294
    invoke-interface {p3, p2, p1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void

    .line 279
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private noSpdy(Ljava/lang/String;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->connections:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    if-eqz p1, :cond_0

    .line 180
    sget-object v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->NO_SPDY:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->setComplete(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method

.method private static requestPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 163
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected createHandshakeCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
    .locals 2

    .line 191
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "spdykey"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->createHandshakeCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    move-result-object p1

    return-object p1

    .line 195
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    return-object v1
.end method

.method public exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
    .locals 3

    .line 397
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    instance-of v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-nez v0, :cond_0

    .line 398
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z

    move-result p1

    return p1

    .line 400
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->sink(Lcom/koushikdutta/async/DataSink;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 406
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->sendHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 408
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 409
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->headers()Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)V

    .line 410
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;

    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;)V

    .line 429
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 p1, 0x1

    return p1
.end method

.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 4

    .line 329
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 330
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    .line 335
    :cond_0
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->spdyEnabled:Z

    if-nez v2, :cond_1

    .line 336
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    .line 341
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->canSpdyRequest(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 342
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    .line 345
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->connections:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    if-eqz v1, :cond_4

    .line 348
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->tryGetException()Ljava/lang/Exception;

    move-result-object v2

    instance-of v2, v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    if-eqz v2, :cond_3

    .line 349
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    .line 352
    :cond_3
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->tryGet()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->tryGet()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v2, v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v2

    if-nez v2, :cond_4

    .line 354
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->connections:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    :cond_4
    if-nez v1, :cond_7

    .line 361
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v2, "spdykey"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    .line 364
    invoke-interface {p1}, Lcom/koushikdutta/async/future/Cancellable;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lcom/koushikdutta/async/future/Cancellable;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 366
    :cond_5
    new-instance p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    invoke-direct {p1, v3}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;)V

    .line 367
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->connections:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->originalCancellable:Lcom/koushikdutta/async/future/SimpleCancellable;

    :cond_6
    :goto_0
    return-object p1

    .line 371
    :cond_7
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "waiting for potential spdy connection for host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 373
    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/future/SimpleCancellable;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;

    return-object v0
.end method

.method public getSpdyEnabled()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->spdyEnabled:Z

    return v0
.end method

.method public onRequestSent(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V
    .locals 1

    .line 442
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    instance-of v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->sink()Lcom/koushikdutta/async/DataSink;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/DataSink;->end()V

    :cond_1
    return-void
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->initialized:Z

    return-void
.end method

.method public setSpdyEnabled(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->spdyEnabled:Z

    return-void
.end method

.method protected wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
    .locals 0

    .line 306
    invoke-super/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p2

    .line 307
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string p3, "spdykey"

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-object p2

    .line 312
    :cond_0
    new-instance p3, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    return-object p3
.end method
