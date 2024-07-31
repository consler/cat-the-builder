.class Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;
.super Ljava/lang/Object;
.source "ConnectBluetoothDeviceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 125
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSelectedBluetoothAddress(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 128
    const v0, 0x7f0a005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    .local v0, "textViewAddresses":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 134
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;->getSelectedBluetoothAddress(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "address":Ljava/lang/String;
    const/4 v1, 0x0

    .line 137
    .local v1, "pair":Landroid/util/Pair;
    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$000(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/Pair;

    .line 141
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-static {v2, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$100(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Ljava/lang/String;)V

    .line 144
    :cond_2
    return-void
.end method
