.class public Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;
.super Ljava/lang/Object;
.source "NetJavaServerSocketImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/net/ServerSocket;


# instance fields
.field private protocol:Lcom/badlogic/gdx/Net$Protocol;

.field private server:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)V
    .locals 1
    .param p1, "protocol"    # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "port"    # I
    .param p3, "hints"    # Lcom/badlogic/gdx/net/ServerSocketHints;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)V
    .locals 4
    .param p1, "protocol"    # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "hints"    # Lcom/badlogic/gdx/net/ServerSocketHints;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->protocol:Lcom/badlogic/gdx/Net$Protocol;

    .line 50
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    .line 51
    if-eqz p4, :cond_0

    .line 52
    iget v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefConnectionTime:I

    iget v2, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefLatency:I

    iget v3, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefBandwidth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget-boolean v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->reuseAddress:Z

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->acceptTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v1, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 61
    :cond_0
    if-eqz p2, :cond_1

    .line 62
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v0, "address":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 64
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 67
    .restart local v0    # "address":Ljava/net/InetSocketAddress;
    :goto_0
    if-eqz p4, :cond_2

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v2, p4, Lcom/badlogic/gdx/net/ServerSocketHints;->backlog:I

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :goto_1
    nop

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create a server socket at port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept(Lcom/badlogic/gdx/net/SocketHints;)Lcom/badlogic/gdx/net/Socket;
    .locals 3
    .param p1, "hints"    # Lcom/badlogic/gdx/net/SocketHints;

    .line 85
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;-><init>(Ljava/net/Socket;Lcom/badlogic/gdx/net/SocketHints;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error accepting socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispose()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error closing server."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getProtocol()Lcom/badlogic/gdx/Net$Protocol;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->protocol:Lcom/badlogic/gdx/Net$Protocol;

    return-object v0
.end method
