.class public final enum Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
.super Ljava/lang/Enum;
.source "BluetoothDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectDeviceResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

.field public static final enum ALREADY_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

.field public static final enum CONNECTION_REQUESTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    const-string v1, "ALREADY_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->ALREADY_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    .line 36
    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    const-string v1, "CONNECTION_REQUESTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->CONNECTION_REQUESTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    .line 34
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    sget-object v4, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->ALREADY_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->$VALUES:[Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;
    .locals 1

    .line 34
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->$VALUES:[Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    return-object v0
.end method
