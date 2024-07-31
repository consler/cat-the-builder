.class public Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;
.super Ljava/lang/Thread;
.source "ConnectBluetoothDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcceptThread"
.end annotation


# instance fields
.field private serverSocket:Landroid/bluetooth/BluetoothServerSocket;

.field final synthetic this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V
    .locals 3
    .param p1, "this$0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    .line 521
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 523
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const v1, 0x7f12004c

    .line 524
    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    invoke-interface {v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->getBluetoothDeviceUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "exception":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    const-string v2, "Creating ServerSocket failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .end local v0    # "exception":Ljava/io/IOException;
    :goto_0
    iget-object v0, p1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    check-cast v0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->setAcceptThread(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;)V

    .line 530
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 565
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "exception":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v0    # "exception":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$run$0$ConnectBluetoothDeviceActivity$AcceptThread()V
    .locals 2

    .line 551
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setResult(I)V

    .line 552
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->finish()V

    .line 553
    return-void
.end method

.method public run()V
    .locals 4

    .line 533
    const/4 v0, 0x0

    .line 536
    .local v0, "socket":Landroid/bluetooth/BluetoothSocket;
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    return-void

    .line 541
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    move-object v0, v1

    .line 542
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_1
    goto :goto_1

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "exception":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_2

    .line 550
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$700(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/bluetooth/-$$Lambda$ConnectBluetoothDeviceActivity$AcceptThread$-hlbnpn68PDYJ_toD8jgc5UAnqE;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/bluetooth/-$$Lambda$ConnectBluetoothDeviceActivity$AcceptThread$-hlbnpn68PDYJ_toD8jgc5UAnqE;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    :try_start_1
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    iget-object v1, v1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    check-cast v1, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->setBluetoothSocket(Landroid/bluetooth/BluetoothSocket;)V

    .line 557
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$500(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    goto :goto_2

    .line 558
    :catch_1
    move-exception v1

    .line 559
    .restart local v1    # "exception":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_2
    return-void

    .line 548
    :cond_2
    goto :goto_0
.end method
