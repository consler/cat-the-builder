.class Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectBluetoothDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    .line 147
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 154
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_6

    .line 156
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v3, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 157
    :cond_0
    new-instance v4, Landroid/util/Pair;

    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 158
    .local v3, "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v4}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 159
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v4}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 162
    .end local v3    # "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 163
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "deviceInfoBLE":Ljava/lang/String;
    new-instance v3, Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .restart local v3    # "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v4}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_6

    .line 166
    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v4}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 170
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceInfoBLE":Ljava/lang/String;
    .end local v3    # "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :cond_4
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->isDiscovering:Ljava/lang/Boolean;

    .line 172
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$200(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V

    .line 173
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 175
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    const v4, 0x7f0a0342

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$300(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Lorg/catrobat/catroid/bluetooth/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/bluetooth/BluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 178
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->initBluetooth()V

    .line 179
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_1

    .line 181
    :cond_5
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 182
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1205c0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "noDevices":Ljava/lang/String;
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    .line 184
    .local v2, "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v3}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    .end local v1    # "noDevices":Ljava/lang/String;
    .end local v2    # "listElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :cond_6
    :goto_0
    nop

    .line 188
    :cond_7
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$2;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    const v2, 0x7f0a0484

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setDynamicListViewHeight(Landroid/widget/ListView;)V

    .line 189
    return-void
.end method
