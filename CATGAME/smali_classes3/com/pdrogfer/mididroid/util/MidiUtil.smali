.class public Lcom/pdrogfer/mididroid/util/MidiUtil;
.super Ljava/lang/Object;
.source "MidiUtil.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bpmToMpqn(F)I
    .locals 1

    const v0, 0x4c64e1c0    # 6.0E7f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 3

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 p0, p0, 0xf

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesEqual([B[BII)Z
    .locals 4

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_3

    .line 98
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 135
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 137
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToInt([BII)I
    .locals 3

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt p2, p1, :cond_0

    .line 65
    aget-byte v2, p0, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static extractBytes([BII)[B
    .locals 3

    .line 112
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 116
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static intToBytes(II)[B
    .locals 5

    .line 74
    new-array v0, p1, [B

    .line 76
    new-array v1, p1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    and-int/lit16 v3, p0, 0xff

    .line 80
    aput v3, v1, v2

    sub-int v4, p1, v2

    add-int/lit8 v4, v4, -0x1

    int-to-byte v3, v3

    .line 81
    aput-byte v3, v0, v4

    shr-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static mpqnToBpm(I)F
    .locals 1

    int-to-float p0, p0

    const v0, 0x4c64e1c0    # 6.0E7f

    div-float/2addr p0, v0

    return p0
.end method

.method public static msToTicks(JFI)D
    .locals 0

    .line 41
    invoke-static {p2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bpmToMpqn(F)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lcom/pdrogfer/mididroid/util/MidiUtil;->msToTicks(JII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static msToTicks(JII)D
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    int-to-double v0, p3

    mul-double/2addr p0, v0

    int-to-double p2, p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static ticksToMs(JFI)J
    .locals 0

    .line 31
    invoke-static {p2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bpmToMpqn(F)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lcom/pdrogfer/mididroid/util/MidiUtil;->ticksToMs(JII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static ticksToMs(JII)J
    .locals 2

    int-to-long v0, p2

    mul-long/2addr p0, v0

    int-to-long p2, p3

    .line 26
    div-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method
