.class public Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;
.super Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;
.source "SocketSerialAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private address:Ljava/lang/String;

.field private port:I

.field private transient socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 17
    invoke-direct {p0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->address:Ljava/lang/String;

    .line 19
    iput p2, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->port:I

    .line 20
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 25
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->address:Ljava/lang/String;

    iget v2, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->socket:Ljava/net/Socket;

    .line 26
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->setInStream(Ljava/io/InputStream;)V

    .line 27
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->setOutStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    nop

    .line 31
    invoke-super {p0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->start()V

    .line 32
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lname/antonsmirnov/firmata/serial/SerialException;

    invoke-direct {v1, v0}, Lname/antonsmirnov/firmata/serial/SerialException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->setStopReading()V

    .line 39
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/SocketSerialAdapter;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    nop

    .line 44
    invoke-super {p0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->stop()V

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lname/antonsmirnov/firmata/serial/SerialException;

    invoke-direct {v1, v0}, Lname/antonsmirnov/firmata/serial/SerialException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
