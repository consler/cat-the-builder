.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectChannel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;"
    }
.end annotation


# instance fields
.field componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;IIILjava/lang/Class;)V
    .locals 1
    .param p1, "this$0"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
    .param p2, "id"    # I
    .param p3, "strideSize"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 145
    mul-int v0, p4, p3

    invoke-static {p5, v0}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V

    .line 146
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->componentType:Ljava/lang/Class;

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    .line 148
    return-void
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 152
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int/2addr v0, v1

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    add-int/2addr v1, v0

    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 153
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    aget-object v4, p2, v2

    aput-object v4, v3, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    .end local v1    # "c":I
    .end local v2    # "k":I
    :cond_0
    return-void
.end method

.method public setCapacity(I)V
    .locals 4
    .param p1, "requiredCapacity"    # I

    .line 171
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->componentType:Ljava/lang/Class;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    mul-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 172
    .local v0, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "k"    # I

    .line 160
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    mul-int/2addr v0, p1

    .line 161
    .end local p1    # "i":I
    .local v0, "i":I
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    mul-int/2addr p1, p2

    .line 162
    .end local p2    # "k":I
    .local p1, "k":I
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    add-int/2addr p2, v0

    .local p2, "c":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 163
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 164
    .local v2, "t":Ljava/lang/Object;, "TT;"
    aget-object v3, v1, p1

    aput-object v3, v1, v0

    .line 165
    aput-object v2, v1, p1

    .line 162
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .end local p2    # "c":I
    :cond_0
    return-void
.end method
