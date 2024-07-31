.class public Lcom/badlogic/gdx/utils/BinaryHeap;
.super Ljava/lang/Object;
.source "BinaryHeap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/utils/BinaryHeap$Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isMaxHeap:Z

.field private nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;-><init>(IZ)V

    .line 30
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "isMaxHeap"    # Z

    .line 32
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    .line 34
    new-array v0, p1, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 35
    return-void
.end method

.method private down(I)V
    .locals 14
    .param p1, "index"    # I

    .line 144
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 145
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .line 147
    .local v1, "size":I
    aget-object v2, v0, p1

    .line 148
    .local v2, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v3, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 151
    .local v3, "value":F
    :goto_0
    shl-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 152
    .local v4, "leftIndex":I
    if-lt v4, v1, :cond_0

    goto :goto_7

    .line 153
    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 156
    .local v6, "rightIndex":I
    aget-object v7, v0, v4

    .line 157
    .local v7, "leftNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v8, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 162
    .local v8, "leftValue":F
    if-lt v6, v1, :cond_2

    .line 163
    const/4 v9, 0x0

    .line 164
    .local v9, "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget-boolean v10, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    if-eqz v10, :cond_1

    const v10, -0x800001

    goto :goto_1

    :cond_1
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .local v10, "rightValue":F
    :goto_1
    goto :goto_2

    .line 166
    .end local v9    # "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .end local v10    # "rightValue":F
    :cond_2
    aget-object v9, v0, v6

    .line 167
    .restart local v9    # "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v10, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 171
    .restart local v10    # "rightValue":F
    :goto_2
    cmpg-float v11, v8, v10

    const/4 v12, 0x0

    if-gez v11, :cond_3

    move v11, v5

    goto :goto_3

    :cond_3
    move v11, v12

    :goto_3
    iget-boolean v13, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v11, v13

    if-eqz v11, :cond_6

    .line 172
    cmpl-float v11, v8, v3

    if-eqz v11, :cond_9

    cmpl-float v11, v8, v3

    if-lez v11, :cond_4

    goto :goto_4

    :cond_4
    move v5, v12

    :goto_4
    iget-boolean v11, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v5, v11

    if-eqz v5, :cond_5

    goto :goto_7

    .line 173
    :cond_5
    aput-object v7, v0, p1

    .line 174
    iput p1, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 175
    move p1, v4

    goto :goto_6

    .line 177
    :cond_6
    cmpl-float v11, v10, v3

    if-eqz v11, :cond_9

    cmpl-float v11, v10, v3

    if-lez v11, :cond_7

    goto :goto_5

    :cond_7
    move v5, v12

    :goto_5
    iget-boolean v11, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v5, v11

    if-eqz v5, :cond_8

    goto :goto_7

    .line 178
    :cond_8
    aput-object v9, v0, p1

    .line 179
    iput p1, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 180
    move p1, v6

    .line 182
    .end local v4    # "leftIndex":I
    .end local v6    # "rightIndex":I
    .end local v7    # "leftNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .end local v8    # "leftValue":F
    .end local v9    # "rightNode":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .end local v10    # "rightValue":F
    :goto_6
    goto :goto_0

    .line 184
    :cond_9
    :goto_7
    aput-object v2, v0, p1

    .line 185
    iput p1, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 186
    return-void
.end method

.method private remove(I)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 91
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    aget-object v1, v0, p1

    .line 92
    .local v1, "removed":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aget-object v3, v0, v2

    aput-object v3, v0, p1

    .line 93
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 94
    if-lez v2, :cond_0

    if-ge p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    .line 95
    :cond_0
    return-object v1
.end method

.method private up(I)V
    .locals 7
    .param p1, "index"    # I

    .line 126
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 127
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    aget-object v1, v0, p1

    .line 128
    .local v1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v2, v1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 129
    .local v2, "value":F
    :goto_0
    if-lez p1, :cond_1

    .line 130
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    .line 131
    .local v3, "parentIndex":I
    aget-object v5, v0, v3

    .line 132
    .local v5, "parent":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget v6, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v4, v6

    if-eqz v4, :cond_1

    .line 133
    aput-object v5, v0, p1

    .line 134
    iput p1, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 135
    move p1, v3

    .line 138
    .end local v3    # "parentIndex":I
    .end local v5    # "parent":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    goto :goto_0

    .line 139
    :cond_1
    aput-object v1, v0, p1

    .line 140
    iput p1, v1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 141
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 41
    shl-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 42
    .local v2, "newNodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 46
    .end local v2    # "newNodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iput v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aput-object p1, v0, v1

    .line 48
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    .line 49
    return-object p1
.end method

.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 4

    .line 109
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 110
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 111
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .line 113
    return-void
.end method

.method public contains(Lcom/badlogic/gdx/utils/BinaryHeap$Node;Z)Z
    .locals 7
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    if-eqz p1, :cond_4

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 64
    .local v5, "n":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    if-ne v5, p1, :cond_0

    return v1

    .line 63
    .end local v5    # "n":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 67
    .local v5, "other":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    .line 66
    .end local v5    # "other":Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 69
    :cond_3
    return v0

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    instance-of v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/BinaryHeap;

    .line 192
    .local v0, "other":Lcom/badlogic/gdx/utils/BinaryHeap;
    iget v2, v0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-eq v2, v3, :cond_1

    return v1

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .local v2, "nodes1":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    iget-object v3, v0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 194
    .local v3, "nodes2":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .local v5, "n":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 195
    aget-object v6, v2, v4

    iget v6, v6, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    aget-object v7, v3, v4

    iget v7, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    return v1

    .line 194
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 200
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    const/4 v0, 0x1

    .line 201
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 202
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v0, v3, v4

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 105
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 100
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The heap is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->remove(I)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->remove(I)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)V
    .locals 3
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    .local p1, "node":Lcom/badlogic/gdx/utils/BinaryHeap$Node;, "TT;"
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 118
    .local v0, "oldValue":F
    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 119
    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 120
    iget v1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    goto :goto_1

    .line 122
    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    .line 123
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 207
    .local p0, "this":Lcom/badlogic/gdx/utils/BinaryHeap;, "Lcom/badlogic/gdx/utils/BinaryHeap<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 209
    .local v0, "nodes":[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 210
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 211
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 212
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-ge v2, v3, :cond_1

    .line 213
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 214
    aget-object v3, v0, v2

    iget v3, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 217
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
