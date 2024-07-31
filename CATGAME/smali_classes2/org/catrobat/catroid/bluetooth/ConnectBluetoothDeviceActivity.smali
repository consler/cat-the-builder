.class public Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ConnectBluetoothDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;,
        Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;
    }
.end annotation


# static fields
.field public static final DEVICE_TO_CONNECT:Ljava/lang/String; = "org.catrobat.catroid.bluetooth.DEVICE"

.field public static final TAG:Ljava/lang/String;

.field private static btConnectionFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

.field private static btDeviceFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;


# instance fields
.field protected btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

.field private btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

.field private deviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private handler:Landroid/os/Handler;

.field isDiscovering:Ljava/lang/Boolean;

.field private newDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private pairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;

.field scanButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->isDiscovering:Ljava/lang/Boolean;

    .line 125
    new-instance v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->deviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 147
    new-instance v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->newDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->connectDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    .line 79
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->handleScanButtonClicked()V

    return-void
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Lorg/catrobat/catroid/bluetooth/BluetoothManager;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method static synthetic access$400()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;
    .locals 1

    .line 79
    invoke-static {}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getConnectionFactory()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/OutputStream;

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setDeviceConnected(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$700(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private activateBluetooth()I
    .locals 2

    .line 467
    new-instance v0, Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    .line 469
    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->activateBluetooth()I

    move-result v0

    .line 470
    .local v0, "bluetoothState":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 471
    const v1, 0x7f1205c6

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 472
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setResult(I)V

    .line 473
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->finish()V

    .line 476
    :cond_0
    return v0
.end method

.method private activateBluetoothVisibility()V
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    instance-of v0, v0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 403
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelDiscovery()V
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 464
    :cond_0
    return-void
.end method

.method private connectDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 433
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->cancelDiscovery()V

    .line 434
    new-instance v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 435
    return-void
.end method

.method private static getConnectionFactory()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;
    .locals 1

    .line 109
    sget-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btConnectionFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionFactoryImpl;

    invoke-direct {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothConnectionFactoryImpl;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btConnectionFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

    .line 113
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btConnectionFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

    return-object v0
.end method

.method private static getDeviceFactory()Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;
    .locals 1

    .line 101
    sget-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDeviceFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceFactoryImpl;

    invoke-direct {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothDeviceFactoryImpl;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDeviceFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;

    .line 105
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDeviceFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;

    return-object v0
.end method

.method private handleScanButtonClicked()V
    .locals 2

    .line 387
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->isDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->scanButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f08025a

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 389
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->isDiscovering:Ljava/lang/Boolean;

    .line 390
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->cancelDiscovery()V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->scanButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 393
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->isDiscovering:Ljava/lang/Boolean;

    .line 394
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->doDiscovery()V

    .line 396
    :goto_0
    return-void
.end method

.method private listAndSelectDevices()V
    .locals 6

    .line 413
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 415
    .local v0, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 416
    const v1, 0x7f0a005e

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 418
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    .local v3, "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->pairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 420
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 422
    :cond_0
    const v1, 0x7f0a049e

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setDynamicListViewHeight(Landroid/widget/ListView;)V

    .line 424
    :cond_1
    return-void
.end method

.method public static setConnectionFactory(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;)V
    .locals 0
    .param p0, "connectionFactory"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

    .line 122
    sput-object p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btConnectionFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

    .line 123
    return-void
.end method

.method private setDeviceConnected(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 241
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 243
    .local v0, "btDeviceService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    instance-of v1, v1, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    check-cast v1, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->setStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 247
    :cond_0
    if-eqz v0, :cond_1

    .line 248
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->deviceConnected(Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_1
    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "exception":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    const v2, 0x7f12019a

    invoke-static {p0, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 253
    .end local v1    # "exception":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method

.method public static setDeviceFactory(Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;)V
    .locals 0
    .param p0, "deviceFactory"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;

    .line 118
    sput-object p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDeviceFactory:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;

    .line 119
    return-void
.end method

.method public static setDynamicListViewHeight(Landroid/widget/ListView;)V
    .locals 7
    .param p0, "listView"    # Landroid/widget/ListView;

    .line 480
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 481
    .local v0, "listViewAdapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    const/4 v1, 0x0

    .line 486
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 487
    .local v2, "desiredWidth":I
    const/4 v4, 0x0

    .local v4, "element":I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 488
    const/4 v5, 0x0

    invoke-interface {v0, v4, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 489
    .local v5, "listItem":Landroid/view/View;
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 490
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 487
    .end local v5    # "listItem":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 493
    .end local v4    # "element":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 494
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 495
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 497
    return-void
.end method

.method private showMultiplayerInformationDialog()V
    .locals 4

    .line 362
    const v0, 0x7f0d0131

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 366
    const v2, 0x7f1204c6

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/bluetooth/-$$Lambda$ConnectBluetoothDeviceActivity$gQuWgQUkP_lLPpjsIVFxTmAQz3w;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/bluetooth/-$$Lambda$ConnectBluetoothDeviceActivity$gQuWgQUkP_lLPpjsIVFxTmAQz3w;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 375
    return-void
.end method

.method private startAcceptThread()V
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    instance-of v0, v0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$AcceptThread;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V

    .line 408
    .local v0, "acceptThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 410
    .end local v0    # "acceptThread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAndSetDeviceService()V
    .locals 3

    .line 427
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.catrobat.catroid.bluetooth.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 429
    .local v0, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;>;"
    invoke-static {}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getDeviceFactory()Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;->createDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    .line 430
    return-void
.end method

.method protected doDiscovery()V
    .locals 2

    .line 448
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->newDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 449
    const v0, 0x7f0a0484

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setDynamicListViewHeight(Landroid/widget/ListView;)V

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 453
    const v0, 0x7f0a0342

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->cancelDiscovery()V

    .line 457
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 458
    return-void
.end method

.method protected initBluetooth()V
    .locals 2

    .line 378
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->activateBluetooth()I

    move-result v0

    .line 379
    .local v0, "bluetoothState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 380
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->listAndSelectDevices()V

    .line 381
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->startAcceptThread()V

    .line 382
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->activateBluetoothVisibility()V

    .line 384
    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$ConnectBluetoothDeviceActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 270
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->handleScanButtonClicked()V

    return-void
.end method

.method public synthetic lambda$showMultiplayerInformationDialog$1$ConnectBluetoothDeviceActivity(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 367
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 369
    const-string v1, "showMultiplayerBluetoothDialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->initBluetooth()V

    .line 372
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 501
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 502
    sget-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth activation activity returned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    const v0, 0x7f1205c6

    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setResult(I)V

    .line 513
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->finish()V

    goto :goto_0

    .line 506
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->listAndSelectDevices()V

    .line 507
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->startAcceptThread()V

    .line 508
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->activateBluetoothVisibility()V

    .line 509
    nop

    .line 516
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 257
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->createAndSetDeviceService()V

    .line 261
    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setContentView(I)V

    .line 263
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 264
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12005c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 265
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setResult(I)V

    .line 269
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->scanButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 270
    new-instance v2, Lorg/catrobat/catroid/bluetooth/-$$Lambda$ConnectBluetoothDeviceActivity$fjp0VGseoTpgccr53I02cA5c-wY;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/bluetooth/-$$Lambda$ConnectBluetoothDeviceActivity$fjp0VGseoTpgccr53I02cA5c-wY;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->handler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$3;

    const v2, 0x7f0d0032

    invoke-direct {v0, p0, p0, v2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$3;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->pairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 292
    new-instance v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$4;

    invoke-direct {v0, p0, p0, v2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$4;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->newDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 310
    const v0, 0x7f0a049e

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 311
    .local v0, "pairedListView":Landroid/widget/ListView;
    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->pairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->deviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 314
    const v2, 0x7f0a0484

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 315
    .local v2, "newDevicesListView":Landroid/widget/ListView;
    iget-object v3, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->newDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    iget-object v3, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->deviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 318
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.FOUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 319
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 322
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 325
    const-string v5, "showMultiplayerBluetoothDialog"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 327
    .local v1, "showMultiplayerInformationDialog":Z
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    instance-of v4, v4, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 328
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->showMultiplayerInformationDialog()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->initBluetooth()V

    .line 332
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 336
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btManager:Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->cancelDiscovery()V

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 444
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 445
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a05be

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setResult(I)V

    .line 354
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->finish()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->onBackPressed()V

    .line 351
    nop

    .line 358
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 342
    const v0, 0x7f0a05be

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
