.class public Lcom/huawei/updatesdk/service/otaupdate/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(II)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/16 p1, 0x64

    if-le p0, p1, :cond_1

    move p0, p1

    :cond_1
    return p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "upsdk_storage_utils"

    if-nez v0, :cond_0

    invoke-static {p0, v3}, Lcom/huawei/updatesdk/service/otaupdate/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "0"

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/32 v4, 0x19999

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "###.#"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x28f5

    cmp-long v4, p1, v4

    if-lez v4, :cond_2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "###.##"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    long-to-double p1, p1

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v4

    invoke-static {p0, v3}, Lcom/huawei/updatesdk/service/otaupdate/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {p0, v3}, Lcom/huawei/updatesdk/service/otaupdate/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "0.01"

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
