.class public interface abstract Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Lorg/catrobat/catroid/stage/StageResourceInterface;


# static fields
.field public static final ARDUINO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/catrobat/catroid/devices/arduino/Arduino;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEGO_EV3:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEGO_NXT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTIPLAYER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHIRO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    .line 37
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    .line 38
    const-class v0, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    .line 39
    const-class v0, Lorg/catrobat/catroid/devices/arduino/Arduino;

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->ARDUINO:Ljava/lang/Class;

    .line 40
    const-class v0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->MULTIPLAYER:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract getBluetoothDeviceUUID()Ljava/util/UUID;
.end method

.method public abstract getDeviceType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isAlive()Z
.end method

.method public abstract setConnection(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V
.end method
