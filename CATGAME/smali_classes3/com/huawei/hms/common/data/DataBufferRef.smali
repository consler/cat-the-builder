.class public Lcom/huawei/hms/common/data/DataBufferRef;
.super Ljava/lang/Object;
.source "DataBufferRef.java"


# instance fields
.field private a:I

.field protected final mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

.field protected mDataRow:I


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/data/DataHolder;I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "dataHolder cannot be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    .line 29
    invoke-virtual {p0, p2}, Lcom/huawei/hms/common/data/DataBufferRef;->getWindowIndex(I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/huawei/hms/common/data/DataHolder;->copyToBuffer(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V

    .line 116
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 127
    instance-of v0, p1, Lcom/huawei/hms/common/data/DataBufferRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 128
    check-cast p1, Lcom/huawei/hms/common/data/DataBufferRef;

    .line 129
    iget v0, p1, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 132
    :cond_1
    return v1
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_boolean"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 71
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getByteArray(Ljava/lang/String;)[B
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_byte_array"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    .line 103
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getDataRow()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    return v0
.end method

.method protected getDouble(Ljava/lang/String;)D
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_double"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 95
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_float"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 87
    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected getInteger(Ljava/lang/String;)I
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_int"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 63
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected getLong(Ljava/lang/String;)J
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_long"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 55
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_string"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 79
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected final getWindowIndex(I)V
    .locals 2

    .line 37
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/huawei/hms/common/data/DataHolder;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "rowNum is out of index"

    invoke-static {v0, v1}, Lcom/huawei/hms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    iput p1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    .line 39
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/data/DataHolder;->getWindowIndex(I)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    .line 40
    return-void
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/data/DataHolder;->hasColumn(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected hasNull(Ljava/lang/String;)Z
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/hms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/huawei/hms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/huawei/hms/common/data/DataHolder;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataHolder:Lcom/huawei/hms/common/data/DataHolder;

    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->mDataRow:I

    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:I

    const-string v3, "type_string"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/huawei/hms/common/data/DataHolder;->getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
