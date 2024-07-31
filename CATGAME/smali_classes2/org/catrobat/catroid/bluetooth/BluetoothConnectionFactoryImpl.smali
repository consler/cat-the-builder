.class public Lorg/catrobat/catroid/bluetooth/BluetoothConnectionFactoryImpl;
.super Ljava/lang/Object;
.source "BluetoothConnectionFactoryImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBTConnectionForDevice(Ljava/lang/Class;Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;
    .locals 1
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "deviceUUID"    # Ljava/util/UUID;
    .param p4, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Landroid/content/Context;",
            ")",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;"
        }
    .end annotation

    .line 39
    .local p1, "bluetoothDeviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;

    invoke-direct {v0, p2, p3}, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionImpl;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    return-object v0
.end method
