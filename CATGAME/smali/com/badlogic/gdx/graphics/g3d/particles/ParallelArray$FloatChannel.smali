.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatChannel"
.end annotation


# instance fields
.field public data:[F

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V
    .locals 1
    .param p1, "this$0"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
    .param p2, "id"    # I
    .param p3, "strideSize"    # I
    .param p4, "size"    # I

    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 73
    mul-int v0, p4, p3

    new-array v0, v0, [F

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    .line 75
    return-void
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int/2addr v0, v1

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v0

    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    .end local v1    # "c":I
    .end local v2    # "k":I
    :cond_0
    return-void
.end method

.method public setCapacity(I)V
    .locals 4
    .param p1, "requiredCapacity"    # I

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    .line 99
    .local v0, "newData":[F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "k"    # I

    .line 87
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v0, p1

    .line 88
    .end local p1    # "i":I
    .local v0, "i":I
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr p1, p2

    .line 89
    .end local p2    # "k":I
    .local p1, "k":I
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr p2, v0

    .local p2, "c":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v2, v1, v0

    .line 91
    .local v2, "t":F
    aget v3, v1, p1

    aput v3, v1, v0

    .line 92
    aput v2, v1, p1

    .line 89
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "t":F
    .end local p2    # "c":I
    :cond_0
    return-void
.end method
