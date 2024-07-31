.class public final Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$start$1;
.super Ljava/lang/Thread;
.source "Multiplayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "org/catrobat/catroid/devices/multiplayer/Multiplayer$start$1",
        "Ljava/lang/Thread;",
        "run",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$start$1;->this$0:Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 116
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 117
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 118
    .local v1, "numberOfBytes":I
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$start$1;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    nop

    .line 120
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$start$1;->this$0:Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    invoke-static {v2}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->access$getInputStream$p(Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 121
    if-lez v1, :cond_1

    .line 122
    iget-object v2, p0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$start$1;->this$0:Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->getChangedMultiplayerVariables([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    nop

    .line 118
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "exception":Ljava/io/IOException;
    invoke-static {}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "Input stream was disconnected"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v3, p0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$start$1;->this$0:Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    const/4 v4, 0x0

    check-cast v4, Ljava/io/InputStream;

    invoke-static {v3, v4}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->access$setInputStream$p(Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;Ljava/io/InputStream;)V

    .line 130
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_2
    return-void
.end method
