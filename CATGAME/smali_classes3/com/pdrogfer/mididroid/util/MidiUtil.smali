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
    .param p0, "bpm"    # F

    .line 46
    const v0, 0x4c64e1c0    # 6.0E7f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .line 126
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 127
    .local v0, "high":I
    and-int/lit8 v1, p0, 0xf

    .line 129
    .local v1, "low":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesEqual([B[BII)Z
    .locals 4
    .param p0, "buf1"    # [B
    .param p1, "buf2"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 96
    move v0, p2

    .local v0, "i":I
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

    .line 104
    return v2

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    :goto_1
    return v2

    .line 107
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 137
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytesToInt([BII)I
    .locals 4
    .param p0, "buff"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "num":I
    const/4 v1, 0x0

    .line 62
    .local v1, "shift":I
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 65
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 66
    add-int/lit8 v1, v1, 0x8

    .line 62
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public static extractBytes([BII)[B
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 112
    new-array v0, p2, [B

    .line 114
    .local v0, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 116
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static intToBytes(II)[B
    .locals 5
    .param p0, "val"    # I
    .param p1, "byteCount"    # I

    .line 74
    new-array v0, p1, [B

    .line 76
    .local v0, "buffer":[B
    new-array v1, p1, [I

    .line 78
    .local v1, "ints":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 80
    and-int/lit16 v3, p0, 0xff

    aput v3, v1, v2

    .line 81
    sub-int v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aget v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 83
    shr-int/lit8 p0, p0, 0x8

    .line 85
    if-nez p0, :cond_0

    .line 87
    goto :goto_1

    .line 78
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static mpqnToBpm(I)F
    .locals 2
    .param p0, "mpqn"    # I

    .line 51
    int-to-float v0, p0

    const v1, 0x4c64e1c0    # 6.0E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public static msToTicks(JFI)D
    .locals 2
    .param p0, "ms"    # J
    .param p2, "bpm"    # F
    .param p3, "ppq"    # I

    .line 41
    invoke-static {p2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bpmToMpqn(F)I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/pdrogfer/mididroid/util/MidiUtil;->msToTicks(JII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static msToTicks(JII)D
    .locals 4
    .param p0, "ms"    # J
    .param p2, "mpqn"    # I
    .param p3, "ppq"    # I

    .line 36
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    int-to-double v2, p3

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static ticksToMs(JFI)J
    .locals 2
    .param p0, "ticks"    # J
    .param p2, "bpm"    # F
    .param p3, "resolution"    # I

    .line 31
    invoke-static {p2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bpmToMpqn(F)I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/pdrogfer/mididroid/util/MidiUtil;->ticksToMs(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ticksToMs(JII)J
    .locals 4
    .param p0, "ticks"    # J
    .param p2, "mpqn"    # I
    .param p3, "resolution"    # I

    .line 26
    int-to-long v0, p2

    mul-long/2addr v0, p0

    int-to-long v2, p3

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
