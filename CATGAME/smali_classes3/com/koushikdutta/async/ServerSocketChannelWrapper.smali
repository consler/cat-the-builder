.class Lcom/koushikdutta/async/ServerSocketChannelWrapper;
.super Lcom/koushikdutta/async/ChannelWrapper;
.source "ServerSocketChannelWrapper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mChannel:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ChannelWrapper;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    .line 28
    iput-object p1, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 29
    return-void
.end method


# virtual methods
.method public getLocalPort()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 40
    nop

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const-string v0, "Can\'t read ServerSocketChannel"

    .line 34
    .local v0, "msg":Ljava/lang/String;
    nop

    .line 35
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t read ServerSocketChannel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 3
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-string v0, "Can\'t read ServerSocketChannel"

    .line 66
    .local v0, "msg":Ljava/lang/String;
    nop

    .line 67
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t read ServerSocketChannel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 3
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const-string v0, "Can\'t read ServerSocketChannel"

    .line 73
    .local v0, "msg":Ljava/lang/String;
    nop

    .line 74
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t read ServerSocketChannel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 2
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public shutdownInput()V
    .locals 0

    .line 19
    return-void
.end method

.method public shutdownOutput()V
    .locals 0

    .line 15
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const-string v0, "Can\'t write ServerSocketChannel"

    .line 47
    .local v0, "msg":Ljava/lang/String;
    nop

    .line 48
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t write ServerSocketChannel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "src"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const-string v0, "Can\'t write ServerSocketChannel"

    .line 59
    .local v0, "msg":Ljava/lang/String;
    nop

    .line 60
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t write ServerSocketChannel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
