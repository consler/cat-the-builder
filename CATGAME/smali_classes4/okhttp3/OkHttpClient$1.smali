.class Lokhttp3/OkHttpClient$1;
.super Lokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lokhttp3/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 134
    return-void
.end method

.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lokhttp3/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 138
    return-void
.end method

.method public apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lokhttp3/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .line 154
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 155
    return-void
.end method

.method public code(Lokhttp3/Response$Builder;)I
    .locals 1
    .param p1, "responseBuilder"    # Lokhttp3/Response$Builder;

    .line 149
    iget v0, p1, Lokhttp3/Response$Builder;->code:I

    return v0
.end method

.method public equalsNonHost(Lokhttp3/Address;Lokhttp3/Address;)Z
    .locals 1
    .param p1, "a"    # Lokhttp3/Address;
    .param p2, "b"    # Lokhttp3/Address;

    .line 145
    invoke-virtual {p1, p2}, Lokhttp3/Address;->equalsNonHost(Lokhttp3/Address;)Z

    move-result v0

    return v0
.end method

.method public exchange(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 167
    iget-object v0, p1, Lokhttp3/Response;->exchange:Lokhttp3/internal/connection/Exchange;

    return-object v0
.end method

.method public initExchange(Lokhttp3/Response$Builder;Lokhttp3/internal/connection/Exchange;)V
    .locals 0
    .param p1, "responseBuilder"    # Lokhttp3/Response$Builder;
    .param p2, "exchange"    # Lokhttp3/internal/connection/Exchange;

    .line 163
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->initExchange(Lokhttp3/internal/connection/Exchange;)V

    .line 164
    return-void
.end method

.method public newWebSocketCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;
    .locals 1
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lokhttp3/Request;

    .line 158
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public realConnectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RealConnectionPool;
    .locals 1
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;

    .line 141
    iget-object v0, p1, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    return-object v0
.end method
