.class public Lorg/catrobat/catroid/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field public static final BLUETOOTH_ACTIVATING:I = 0x0

.field public static final BLUETOOTH_ALREADY_ON:I = 0x1

.field public static final BLUETOOTH_NOT_SUPPORTED:I = -0x1

.field public static final REQUEST_ENABLE_BT:I = 0x7d0


# instance fields
.field private final activity:Landroid/app/Activity;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method


# virtual methods
.method public activateBluetooth()I
    .locals 3

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 49
    const/4 v0, -0x1

    return v0

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "enableBtIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->activity:Landroid/app/Activity;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    const/4 v1, 0x0

    return v1

    .line 56
    .end local v0    # "enableBtIntent":Landroid/content/Intent;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method
