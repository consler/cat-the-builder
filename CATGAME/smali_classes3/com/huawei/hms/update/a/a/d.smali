.class public final Lcom/huawei/hms/update/a/a/d;
.super Ljava/lang/Object;
.source "UpdateStatus.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2

    .line 83
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x834

    if-eq p0, v0, :cond_1

    const/16 v0, 0x835

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :pswitch_0
    const-string p0, "DOWNLOAD_NO_STORAGE"

    return-object p0

    .line 105
    :pswitch_1
    const-string p0, "DOWNLOAD_NO_SPACE"

    return-object p0

    .line 109
    :pswitch_2
    const-string p0, "DOWNLOAD_HASH_ERROR"

    return-object p0

    .line 103
    :pswitch_3
    const-string p0, "DOWNLOAD_FAILURE"

    return-object p0

    .line 93
    :pswitch_4
    const-string p0, "CHECK_NO_SUPPORTED"

    return-object p0

    .line 91
    :pswitch_5
    const-string p0, "CHECK_NO_UPDATE"

    return-object p0

    .line 89
    :pswitch_6
    const-string p0, "CHECK_FAILURE"

    return-object p0

    .line 101
    :cond_0
    const-string p0, "DOWNLOAD_CANCELED"

    return-object p0

    .line 99
    :cond_1
    const-string p0, "DOWNLOADING"

    return-object p0

    .line 97
    :cond_2
    const-string p0, "DOWNLOAD_SUCCESS"

    return-object p0

    .line 87
    :cond_3
    const-string p0, "CHECK_OK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4b1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x899
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
