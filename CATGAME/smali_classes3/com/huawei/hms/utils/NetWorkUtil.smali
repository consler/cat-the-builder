.class public abstract Lcom/huawei/hms/utils/NetWorkUtil;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/utils/NetWorkUtil$NetType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/NetworkInfo;)I
    .locals 2

    .line 55
    nop

    .line 56
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 87
    const/4 v0, 0x6

    goto :goto_0

    .line 83
    :pswitch_0
    const/4 v0, 0x4

    .line 84
    goto :goto_0

    .line 78
    :pswitch_1
    const/4 v0, 0x3

    .line 79
    goto :goto_0

    .line 65
    :pswitch_2
    const/4 v0, 0x2

    .line 66
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    .line 38
    nop

    .line 39
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 40
    nop

    .line 41
    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    return-object p0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/huawei/hms/utils/NetWorkUtil;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/utils/NetWorkUtil;->a(Landroid/net/NetworkInfo;)I

    move-result p0

    return p0
.end method
