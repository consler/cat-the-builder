.class public Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
.super Ljava/lang/Object;
.source "RPiSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;,
        Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;,
        Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private availableGPIOs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clientSocket:Ljava/net/Socket;

.field private host:Ljava/lang/String;

.field private interruptReceiverPort:I

.field private isConnected:Z

.field private outStream:Ljava/io/DataOutputStream;

.field private outToServer:Ljava/io/OutputStream;

.field private reader:Ljava/io/BufferedReader;

.field private receiverThread:Ljava/lang/Thread;

.field private rpiVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 40
    iget v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->interruptReceiverPort:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->callEvent(Ljava/lang/String;)V

    return-void
.end method

.method private callEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "broadcastMessage"    # Ljava/lang/String;

    .line 133
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "messageSegments":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Lorg/catrobat/catroid/content/eventids/RaspiEventId;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/eventids/RaspiEventId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v1, "id":Lorg/catrobat/catroid/content/eventids/RaspiEventId;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/content/EventWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Project;->fireToAllSprites(Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 138
    .end local v1    # "id":Lorg/catrobat/catroid/content/eventids/RaspiEventId;
    :cond_0
    return-void
.end method

.method private processCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->outStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "receivedLine":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v0, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    return-object v0

    .line 126
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error with response"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "receivedLine":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;

    const-string v1, "No active connection!"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v0
.end method

.method private readServerPort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    const-string v0, "serverport"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->processCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "receivedLine":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->interruptReceiverPort:I

    .line 111
    return-void
.end method

.method private respondVersion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    const-string v0, "rev"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->processCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "receivedLine":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->rpiVersion:Ljava/lang/String;

    .line 105
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->rpiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getGpioList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->availableGPIOs:Ljava/util/ArrayList;

    .line 106
    return-void
.end method


# virtual methods
.method public activatePinInterrupt(I)V
    .locals 5
    .param p1, "pin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;,
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->availableGPIOs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "readRequestMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->processCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "receivedLine":Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 194
    return-void

    .line 192
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "readRequest: Error with response"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    .end local v0    # "readRequestMsg":Ljava/lang/String;
    .end local v1    # "receivedLine":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;

    const-string v1, "Pin out of range on this model!"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->disconnect()V

    .line 63
    :cond_0
    iput-object p1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->host:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->clientSocket:Ljava/net/Socket;

    .line 65
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->outToServer:Ljava/io/OutputStream;

    .line 68
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->outToServer:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->outStream:Ljava/io/DataOutputStream;

    .line 69
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->reader:Ljava/io/BufferedReader;

    .line 71
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "hello":Ljava/lang/String;
    const-string v1, "quit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    const-string v1, "hello"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    .line 78
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->respondVersion()V

    .line 79
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->readServerPort()V

    .line 81
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->receiverThread:Ljava/lang/Thread;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 84
    :cond_1
    return-void

    .line 74
    :cond_2
    new-instance v1, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;

    const-string v2, "Server refused to accept our connection!"

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v1
.end method

.method public disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 92
    :cond_0
    :try_start_0
    const-string v0, "quit"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->processCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;
    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->TAG:Ljava/lang/String;

    const-string v2, "Error during quit, this should not happen!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->receiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 100
    return-void
.end method

.method public getPin(I)Z
    .locals 7
    .param p1, "pin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;,
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->availableGPIOs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "readRequestMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->processCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "receivedLine":Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    const-string v5, "readRequest: Error with response"

    if-ne v3, v4, :cond_2

    .line 173
    const/4 v3, 0x2

    aget-object v4, v2, v3

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const/4 v3, 0x1

    return v3

    .line 175
    :cond_0
    aget-object v3, v2, v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const/4 v3, 0x0

    return v3

    .line 178
    :cond_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v0    # "readRequestMsg":Ljava/lang/String;
    .end local v1    # "receivedLine":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;

    const-string v1, "Pin out of range on this model!"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;
        }
    .end annotation

    .line 235
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->rpiVersion:Ljava/lang/String;

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;

    const-string v1, "No active connection!"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    return v0
.end method

.method public setPWM(IDD)V
    .locals 4
    .param p1, "pin"    # I
    .param p2, "frequencyInHz"    # D
    .param p4, "dutyCycleInPercent"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;,
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->availableGPIOs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pwm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "pwmRequestMessage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->processCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "receivedLine":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    return-void

    .line 206
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "pwmRequest: Error with response"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v0    # "pwmRequestMessage":Ljava/lang/String;
    .end local v1    # "receivedLine":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;

    const-string v1, "Pin out of range on this model!"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v0
.end method

.method public setPin(IZ)V
    .locals 6
    .param p1, "pin"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;,
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected:Z

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->availableGPIOs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    int-to-short v0, p2

    .line 151
    .local v0, "valueShort":S
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "setRequestMessage":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->processCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "receivedLine":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "tokens":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 158
    return-void

    .line 156
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "setRequest: Error with response"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    .end local v0    # "valueShort":S
    .end local v1    # "setRequestMessage":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    .end local v3    # "receivedLine":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;

    const-string v1, "Pin out of range on this model!"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;

    const-string v1, "No active connection!"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoConnectionException;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    throw v0
.end method
