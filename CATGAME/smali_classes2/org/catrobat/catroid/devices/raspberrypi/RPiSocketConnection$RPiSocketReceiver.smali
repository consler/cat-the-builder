.class Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;
.super Ljava/lang/Object;
.source "RPiSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RPiSocketReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;->this$0:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    .param p2, "x1"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$1;

    .line 210
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;-><init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "receiverSocket":Ljava/net/Socket;
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;->this$0:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-static {v2}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->access$100(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;->this$0:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-static {v3}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->access$200(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    .line 217
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 218
    .local v1, "receiverReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "receivedLine":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 221
    goto :goto_1

    .line 223
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$RPiSocketReceiver;->this$0:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    invoke-static {v3, v2}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->access$400(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V

    .line 225
    .end local v2    # "receivedLine":Ljava/lang/String;
    goto :goto_0

    .line 226
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 227
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RPiSocketReceiver closed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    nop

    .end local v1    # "receiverReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
