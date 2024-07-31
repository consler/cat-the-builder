.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;
.super Ljava/lang/Object;
.source "Http20Draft13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Http20Draft13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 709
    const-string v0, "DATA"

    const-string v1, "HEADERS"

    const-string v2, "PRIORITY"

    const-string v3, "RST_STREAM"

    const-string v4, "SETTINGS"

    const-string v5, "PUSH_PROMISE"

    const-string v6, "PING"

    const-string v7, "GOAWAY"

    const-string v8, "WINDOW_UPDATE"

    const-string v9, "CONTINUATION"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 726
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 727
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v2, v1

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v2, :cond_0

    .line 731
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "%8s"

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 735
    const-string v1, "END_STREAM"

    aput-object v1, v0, v5

    .line 736
    const/4 v1, 0x2

    const-string v2, "END_SEGMENT"

    aput-object v2, v0, v1

    .line 737
    const-string v1, "END_STREAM|END_SEGMENT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 738
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 741
    .local v1, "prefixFlags":[I
    const-string v5, "PADDED"

    const/16 v6, 0x8

    aput-object v5, v0, v6

    .line 742
    array-length v0, v1

    move v5, v4

    :goto_1
    const-string v7, "|PADDED"

    if-ge v5, v0, :cond_1

    aget v8, v1, v5

    .line 743
    .local v8, "prefixFlag":I
    sget-object v9, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v10, v8, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 742
    .end local v8    # "prefixFlag":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 746
    :cond_1
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/4 v5, 0x4

    const-string v8, "END_HEADERS"

    aput-object v8, v0, v5

    .line 747
    const-string v5, "PRIORITY"

    aput-object v5, v0, v3

    .line 748
    const/16 v3, 0x24

    const-string v5, "END_HEADERS|PRIORITY"

    aput-object v5, v0, v3

    .line 749
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .line 752
    .local v0, "frameFlags":[I
    array-length v2, v0

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_3

    aget v5, v0, v3

    .line 753
    .local v5, "frameFlag":I
    array-length v8, v1

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_2

    aget v10, v1, v9

    .line 754
    .local v10, "prefixFlag":I
    sget-object v11, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v12, v10, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 755
    sget-object v11, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v12, v10, v5

    or-int/2addr v12, v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v15, v15, v10

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 753
    .end local v10    # "prefixFlag":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 752
    .end local v5    # "frameFlag":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 760
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    sget-object v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 761
    aget-object v4, v3, v2

    if-nez v4, :cond_4

    sget-object v4, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 760
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 763
    .end local v0    # "frameFlags":[I
    .end local v1    # "prefixFlags":[I
    .end local v2    # "i":I
    :cond_5
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .line 685
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 686
    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    .line 696
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 698
    .local v0, "result":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 699
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 700
    :cond_2
    if-nez p0, :cond_3

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 701
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 703
    :cond_3
    return-object v0

    .line 689
    .end local v0    # "result":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const-string v0, "ACK"

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_1
    return-object v0

    .line 694
    :cond_6
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .locals 7
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .line 673
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_0

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "0x%02x"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "formattedFlags":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v6, "<<"

    goto :goto_1

    :cond_1
    const-string v6, ">>"

    :goto_1
    aput-object v6, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    aput-object v0, v5, v2

    const/4 v2, 0x4

    aput-object v1, v5, v2

    const-string v2, "%s 0x%08x %5d %-13s %s"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
