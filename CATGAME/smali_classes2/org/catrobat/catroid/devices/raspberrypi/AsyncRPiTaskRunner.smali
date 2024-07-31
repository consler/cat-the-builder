.class public Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;
.super Ljava/lang/Object;
.source "AsyncRPiTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;,
        Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connected:Z

.field private connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-direct {v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 43
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;I)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->connected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .line 50
    const/4 v0, 0x1

    return v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RPi connecting took too long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v0
.end method

.method public disconnect()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->connected:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    :cond_0
    return-void
.end method

.method public getConnection()Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    return-object v0
.end method
