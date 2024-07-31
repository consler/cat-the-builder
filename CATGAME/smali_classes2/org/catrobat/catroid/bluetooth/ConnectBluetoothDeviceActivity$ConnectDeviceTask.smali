.class Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;
.super Landroid/os/AsyncTask;
.source "ConnectBluetoothDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectDeviceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;",
        ">;"
    }
.end annotation


# instance fields
.field btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

.field private connectingProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;
    .param p2, "x1"    # Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$1;

    .line 192
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;-><init>(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 192
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->doInBackground([Ljava/lang/String;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;
    .locals 5
    .param p1, "addresses"    # [Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "Try connect to device which is not implemented!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->NOT_CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    return-object v0

    .line 209
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$400()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    iget-object v1, v1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->getDeviceType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    iget-object v3, v3, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    .line 210
    invoke-interface {v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->getBluetoothDeviceUUID()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v4}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 209
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnectionFactory;->createBTConnectionForDevice(Ljava/lang/Class;Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 212
    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->connect()Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p1, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->onPostExecute(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;)V

    return-void
.end method

.method protected onPostExecute(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;)V
    .locals 4
    .param p1, "connectionState"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->connectingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "result":I
    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;->CONNECTED:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection$State;

    if-ne p1, v1, :cond_0

    .line 223
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    iget-object v1, v1, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->btDevice:Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->setConnection(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V

    .line 224
    const/4 v0, -0x1

    .line 227
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    iget-object v2, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->access$500(Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "exception":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 232
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    const v2, 0x7f12019a

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 235
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->setResult(I)V

    .line 236
    iget-object v1, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->finish()V

    .line 237
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->this$0:Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;

    .line 200
    invoke-virtual {v0}, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/bluetooth/ConnectBluetoothDeviceActivity$ConnectDeviceTask;->connectingProgressDialog:Landroid/app/ProgressDialog;

    .line 201
    return-void
.end method
