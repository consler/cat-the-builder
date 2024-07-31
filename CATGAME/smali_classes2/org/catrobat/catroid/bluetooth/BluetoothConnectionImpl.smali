.class public Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;
.super Ljava/lang/Object;
.source "BluetoothConnectionImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;


# static fields
.field private static final REFLECTION_METHOD_NAME:Ljava/lang/String; = "createRfcommSocket"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private final macAddress:Ljava/lang/String;

.field private state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->macAddress:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->uuid:Ljava/util/UUID;

    .line 54
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    .line 55
    return-void
.end method


# virtual methods
.method public connect()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    .locals 3

    .line 58
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 59
    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_BLUETOOTH_NOT_SUPPORTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 63
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_ADAPTER:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 66
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Got Adapter and Adapter was on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 69
    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_DEVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 73
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Got remote device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 87
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Socket was created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl$1;->$SwitchMap$org$catrobat$catroid$bluetooth$base$BluetoothConnection$State:[I

    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->connectSocket(Landroid/bluetooth/BluetoothSocket;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 97
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "This should never happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 94
    :cond_3
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "error connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_SOCKET:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 91
    :cond_4
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ioException":Ljava/io/IOException;
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 79
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_NOT_BONDED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v1

    .line 80
    :cond_5
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    .line 81
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_STILL_BONDING:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v1

    .line 83
    :cond_6
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_SOCKET:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v1
.end method

.method public connectSocket(Landroid/bluetooth/BluetoothSocket;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    .locals 7
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .line 103
    if-nez p1, :cond_0

    .line 104
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 111
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 133
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ioException":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v1, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Try connecting again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createRfcommSocket"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 118
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    .local v1, "mMethod":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothSocket;

    iput-object v2, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 120
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 121
    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v2, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 128
    .end local v1    # "mMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 129
    .local v1, "secondIOException":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v1    # "secondIOException":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 127
    .local v1, "illegalAccessException":Ljava/lang/IllegalAccessException;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "illegalAccessException":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 124
    :catch_3
    move-exception v1

    .line 125
    .local v1, "invocationTargetException":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "invocationTargetException":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 122
    :catch_4
    move-exception v1

    .line 123
    .local v1, "noSuchMethodException":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "noSuchMethodException":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 131
    :goto_1
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_SOCKET:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v1
.end method

.method public disconnect()V
    .locals 3

    .line 137
    sget-object v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "disconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ioException":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "ioException":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;->state:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0
.end method
