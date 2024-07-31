.class public final enum Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
.super Ljava/lang/Enum;
.source "BluetoothConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_ADAPTER:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_BLUETOOTH_NOT_ON:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_BLUETOOTH_NOT_SUPPORTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_CLOSING:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_DEVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_NOT_BONDED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_SOCKET:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum ERROR_STILL_BONDING:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

.field public static final enum NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 34
    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "NOT_CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_BLUETOOTH_NOT_SUPPORTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_BLUETOOTH_NOT_SUPPORTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_BLUETOOTH_NOT_ON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_BLUETOOTH_NOT_ON:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_ADAPTER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_ADAPTER:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_DEVICE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_DEVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_SOCKET"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_SOCKET:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_STILL_BONDING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_STILL_BONDING:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_NOT_BONDED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_NOT_BONDED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    new-instance v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    const-string v1, "ERROR_CLOSING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_CLOSING:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    .line 33
    const/16 v1, 0xa

    new-array v1, v1, [Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    sget-object v12, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v12, v1, v2

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_BLUETOOTH_NOT_SUPPORTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_BLUETOOTH_NOT_ON:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_ADAPTER:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_DEVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_SOCKET:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_STILL_BONDING:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->ERROR_NOT_BONDED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->$VALUES:[Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    .locals 1

    .line 33
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->$VALUES:[Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0
.end method
