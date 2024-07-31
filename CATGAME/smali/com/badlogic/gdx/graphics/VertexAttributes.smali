.class public final Lcom/badlogic/gdx/graphics/VertexAttributes;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$Usage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/graphics/VertexAttribute;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/graphics/VertexAttributes;",
        ">;"
    }
.end annotation


# instance fields
.field private final attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

.field private iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mask:J

.field public final vertexSize:I


# direct methods
.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 3
    .param p1, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 59
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 61
    array-length v0, p1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 62
    .local v0, "list":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 63
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 66
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->calculateOffsets()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    .line 67
    return-void

    .line 59
    .end local v0    # "list":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateOffsets()I
    .locals 4

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 95
    aget-object v2, v2, v1

    .line 96
    .local v2, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iput v0, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    .line 97
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;->getSizeInBytes()I

    move-result v3

    add-int/2addr v0, v3

    .line 94
    .end local v2    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/VertexAttributes;)I
    .locals 11
    .param p1, "o"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v1, v0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    array-length v0, v0

    array-length v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    .line 177
    .local v0, "m1":J
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v2

    .line 178
    .local v2, "m2":J
    cmp-long v4, v0, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    return v5

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v4

    sub-int/2addr v4, v6

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_9

    .line 180
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v7, v7, v4

    .line 181
    .local v7, "va0":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v8, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v8, v8, v4

    .line 182
    .local v8, "va1":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-eq v9, v10, :cond_3

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    sub-int/2addr v5, v6

    return v5

    .line 183
    :cond_3
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    if-eq v9, v10, :cond_4

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    sub-int/2addr v5, v6

    return v5

    .line 184
    :cond_4
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-eq v9, v10, :cond_5

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    sub-int/2addr v5, v6

    return v5

    .line 185
    :cond_5
    iget-boolean v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-boolean v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    if-eq v9, v10, :cond_7

    iget-boolean v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    if-eqz v9, :cond_6

    move v5, v6

    :cond_6
    return v5

    .line 186
    :cond_7
    iget v9, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget v10, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-eq v9, v10, :cond_8

    iget v5, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    sub-int/2addr v5, v6

    return v5

    .line 179
    .end local v7    # "va0":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v8    # "va1":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 188
    .end local v4    # "i":I
    :cond_9
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->compareTo(Lcom/badlogic/gdx/graphics/VertexAttributes;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 137
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 138
    .local v1, "other":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    return v2

    .line 139
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 140
    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;->equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 139
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 3
    .param p1, "usage"    # I

    .line 86
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    .line 87
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    return-object v2

    .line 87
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 1
    .param p1, "index"    # I

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMask()J
    .locals 5

    .line 157
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 158
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 160
    aget-object v3, v3, v2

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_0
    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 164
    .end local v0    # "result":J
    :cond_1
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    return-wide v0
.end method

.method public getMaskWithSizePacked()J
    .locals 5

    .line 170
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getOffset(I)I
    .locals 1
    .param p1, "usage"    # I

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getOffset(II)I

    move-result v0

    return v0
.end method

.method public getOffset(II)I
    .locals 2
    .param p1, "usage"    # I
    .param p2, "defaultIfNotFound"    # I

    .line 72
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 73
    .local v0, "vertexAttribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v0, :cond_0

    return p2

    .line 74
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public hashCode()I
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3d

    int-to-long v0, v0

    .line 148
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 149
    const-wide/16 v4, 0x3d

    mul-long/2addr v4, v0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;->hashCode()I

    move-result v3

    int-to-long v6, v3

    add-long v0, v4, v6

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 118
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
