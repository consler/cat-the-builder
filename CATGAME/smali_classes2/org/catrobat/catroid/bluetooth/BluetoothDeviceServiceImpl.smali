.class public Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
.super Ljava/lang/Object;
.source "BluetoothDeviceServiceImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized isDeviceConnectedAndAlive(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;)Z"
        }
    .end annotation

    .local p1, "deviceToConnect":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;>;"
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v0, "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 77
    :try_start_1
    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->start()V
    :try_end_1
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 83
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    :cond_0
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :try_start_2
    sget-object v2, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->disconnect()V

    .line 85
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 72
    .end local v0    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    .end local p1    # "deviceToConnect":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public connectDevice(Ljava/lang/Class;Landroid/app/Activity;I)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;",
            "Landroid/app/Activity;",
            "I)",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;"
        }
    .end annotation

    .line 48
    .local p1, "deviceToConnect":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->isDeviceConnectedAndAlive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->ALREADY_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->createStartIntent(Ljava/lang/Class;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->CONNECTION_REQUESTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    return-object v1
.end method

.method public connectDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;"
        }
    .end annotation

    .line 62
    .local p1, "deviceToConnect":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->isDeviceConnectedAndAlive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->ALREADY_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->createStartIntent(Ljava/lang/Class;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->CONNECTION_REQUESTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    return-object v1
.end method

.method protected createStartIntent(Ljava/lang/Class;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 115
    .local p1, "deviceToConnect":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.catrobat.catroid.bluetooth.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    .line 144
    .local v1, "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v1    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    goto :goto_0

    .line 146
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceConnected(Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->getDeviceType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {p1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    .end local p1    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnectDevices()V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    .line 99
    .local v1, "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->disconnect()V

    .line 100
    .end local v1    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    goto :goto_0

    .line 102
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "btDevice":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .local v0, "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 108
    monitor-exit p0

    return-object v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 105
    .end local v0    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    .end local p1    # "btDevice":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initialise()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    .line 123
    .local v1, "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->initialise()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v1    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    goto :goto_0

    .line 125
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    .line 137
    .local v1, "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v1    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    goto :goto_0

    .line 139
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    .line 130
    .local v1, "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v1    # "device":Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    goto :goto_0

    .line 132
    .end local p0    # "this":Lorg/catrobat/catroid/bluetooth/BluetoothDeviceServiceImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
