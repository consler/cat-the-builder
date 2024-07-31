.class Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$3;
.super Landroid/widget/ArrayAdapter;
.source "ConnectBluetoothDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .line 274
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$3;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 277
    if-nez p2, :cond_0

    .line 278
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0032

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 282
    :cond_0
    const v0, 0x7f0a005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    .local v0, "textViewDevices":Landroid/widget/TextView;
    const v1, 0x7f0a005c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 285
    .local v1, "textViewAddresses":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-object p2
.end method
