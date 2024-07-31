.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntChannel"
.end annotation


# instance fields
.field public data:[I

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V
    .locals 1
    .param p1, "this$0"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
    .param p2, "id"    # I
    .param p3, "strideSize"    # I
    .param p4, "size"    # I

    .line 107
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 108
    mul-int v0, p4, p3

    new-array v0, v0, [I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    .line 110
    return-void
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 114
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int/2addr v0, v1

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    add-int/2addr v1, v0

    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "c":I
    .end local v2    # "k":I
    :cond_0
    return-void
.end method

.method public setCapacity(I)V
    .locals 4
    .param p1, "requiredCapacity"    # I

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    mul-int/2addr v0, p1

    new-array v0, v0, [I

    .line 134
    .local v0, "newData":[I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "k"    # I

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    mul-int/2addr v0, p1

    .line 123
    .end local p1    # "i":I
    .local v0, "i":I
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    mul-int/2addr p1, p2

    .line 124
    .end local p2    # "k":I
    .local p1, "k":I
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->strideSize:I

    add-int/2addr p2, v0

    .local p2, "c":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;->data:[I

    aget v2, v1, v0

    .line 126
    .local v2, "t":I
    aget v3, v1, p1

    aput v3, v1, v0

    .line 127
    aput v2, v1, p1

    .line 124
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "t":I
    .end local p2    # "c":I
    :cond_0
    return-void
.end method
