.class Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;
.super Landroid/os/AsyncTask;
.source "AsyncRPiTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncDisconnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 101
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner$AsyncDisconnectTask;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPi: Exception during disconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
