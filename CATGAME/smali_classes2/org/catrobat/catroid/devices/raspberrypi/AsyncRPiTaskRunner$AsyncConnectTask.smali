.class Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;
.super Landroid/os/AsyncTask;
.source "AsyncRPiTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "connection"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 70
    iput-object p2, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->host:Ljava/lang/String;

    .line 71
    iput p3, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->port:I

    .line 72
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->host:Ljava/lang/String;

    iget v2, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->connect(Ljava/lang/String;I)V

    .line 79
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getPinInterrupts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 80
    .local v1, "pin":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->activatePinInterrupt(I)V

    .line 81
    .end local v1    # "pin":Ljava/lang/Integer;
    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RPi: Connection timeout!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    goto :goto_1

    .line 85
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/net/ConnectException;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RPi: Could not connect!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/net/ConnectException;
    goto :goto_1

    .line 83
    :catch_3
    move-exception v0

    .line 84
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RPi: Host not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_1
    nop

    .line 92
    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
