.class public Lcom/thoughtworks/xstream/converters/basic/LongConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "LongConverter.java"


# static fields
.field static synthetic class$java$lang$Long:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 22
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/LongConverter;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/basic/LongConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/LongConverter;->class$java$lang$Long:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 27
    .local v0, "len":I
    if-eqz v0, :cond_6

    .line 30
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 31
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 33
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 34
    .local v2, "c0":C
    const/16 v3, 0x30

    const/16 v4, 0x23

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    .line 35
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 37
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 40
    .local v5, "c1":C
    const/16 v6, 0x20

    const/16 v7, 0x10

    if-ne v2, v4, :cond_2

    if-ne v0, v1, :cond_2

    .line 41
    const/16 v4, 0x9

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    shl-long/2addr v8, v6

    .line 42
    .local v8, "high":J
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .local v3, "low":J
    goto :goto_0

    .line 43
    .end local v3    # "low":J
    .end local v8    # "high":J
    :cond_2
    const/16 v1, 0x78

    if-eq v5, v1, :cond_3

    const/16 v1, 0x58

    if-ne v5, v1, :cond_4

    :cond_3
    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    .line 44
    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    shl-long/2addr v8, v6

    .line 45
    .restart local v8    # "high":J
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .restart local v3    # "low":J
    goto :goto_0

    .line 46
    .end local v3    # "low":J
    .end local v8    # "high":J
    :cond_4
    const/16 v1, 0x17

    if-ne v0, v1, :cond_5

    const/16 v4, 0x31

    if-ne v5, v4, :cond_5

    .line 47
    const/16 v4, 0xc

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    invoke-static {v3, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    const/16 v3, 0x21

    shl-long v8, v7, v3

    .line 48
    .restart local v8    # "high":J
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 52
    .restart local v3    # "low":J
    :goto_0
    or-long v6, v8, v3

    .line 53
    .local v6, "num":J
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v6, v7}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 50
    .end local v3    # "low":J
    .end local v6    # "num":J
    .end local v8    # "high":J
    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 28
    .end local v2    # "c0":C
    .end local v5    # "c1":C
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "For input string: \"\""

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
