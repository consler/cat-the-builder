.class public Lcom/thoughtworks/xstream/security/WildcardTypePermission;
.super Lcom/thoughtworks/xstream/security/RegExpTypePermission;
.source "WildcardTypePermission.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;->getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private static getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 40
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 41
    aget-object v3, p0, v2

    .line 42
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v5, "(?u)"

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    .line 46
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x24

    if-eq v7, v8, :cond_3

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_3

    const/16 v9, 0x3f

    if-eq v7, v9, :cond_2

    const/16 v8, 0x7c

    if-eq v7, v8, :cond_3

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    .line 76
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_0
    add-int/lit8 v7, v6, 0x1

    if-ge v7, v5, :cond_1

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_1

    const-string v6, "[\\P{C}]*"

    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v7

    goto :goto_2

    :cond_1
    const-string v7, "[\\P{C}&&[^.]]*"

    .line 71
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    :pswitch_1
    const/16 v8, 0x5c

    .line 58
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
