.class public abstract Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;
.super Ljava/lang/Object;
.source "MindstormsReply.java"


# instance fields
.field protected data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    .line 31
    return-void
.end method


# virtual methods
.method public getByte(I)B
    .locals 1
    .param p1, "number"    # I

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public abstract getCommandByte()B
.end method

.method public getData()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getData(II)[B
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "a":[B
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    array-length v1, v1

    sub-int/2addr v1, p2

    if-gt p1, v1, :cond_0

    .line 49
    new-array v0, p2, [B

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 51
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    add-int v3, v1, p1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 75
    .local v0, "value":I
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    array-length v0, v0

    return v0
.end method

.method public getShort(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->data:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 65
    .local v0, "value":I
    int-to-short v1, v0

    return v1
.end method

.method public abstract getStatusByte()B
.end method

.method public abstract hasError()Z
.end method
