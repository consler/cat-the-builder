.class public final Lcom/huawei/hms/common/util/a;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 1

    .line 58
    if-eqz p0, :cond_0

    .line 59
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 33
    if-eqz p0, :cond_0

    .line 34
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    return-object v0
.end method
