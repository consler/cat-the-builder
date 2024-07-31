.class public Lcom/thoughtworks/xstream/security/WildcardTypePermission;
.super Lcom/thoughtworks/xstream/security/RegExpTypePermission;
.source "WildcardTypePermission.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;->getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "wildcards"    # [Ljava/lang/String;

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    .local v0, "regexps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 41
    aget-object v2, p0, v1

    .line 42
    .local v2, "wildcardExpression":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 43
    .local v3, "result":Ljava/lang/StringBuffer;
    const-string v4, "(?u)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 45
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 47
    .local v6, "ch":C
    const/16 v7, 0x24

    if-eq v6, v7, :cond_3

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_3

    const/16 v8, 0x3f

    if-eq v6, v8, :cond_2

    const/16 v8, 0x7c

    if-eq v6, v8, :cond_3

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    .line 76
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 67
    :pswitch_0
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v4, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_1

    .line 68
    const-string v7, "[\\P{C}]*"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 71
    :cond_1
    const-string v8, "[\\P{C}&&[^"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v7, "]]*"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    goto :goto_2

    .line 58
    :cond_3
    :pswitch_1
    const/16 v7, 0x5c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    nop

    .line 45
    .end local v6    # "ch":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 80
    .end local v5    # "j":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 40
    .end local v2    # "wildcardExpression":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/StringBuffer;
    .end local v4    # "length":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
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
