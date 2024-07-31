.class public final Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
.super Ljava/lang/Object;
.source "BitmapReturnValue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0008\u0016\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u0011\u0008\u0016\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB3\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\r\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0013\u0010\u000e\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0007H\u00c6\u0003J?\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0012\u0008\u0002\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;",
        "",
        "bitmapList",
        "",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "toBeScaled",
        "",
        "(Ljava/util/List;Landroid/graphics/Bitmap;Z)V",
        "model",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "(Lorg/catrobat/paintroid/model/CommandManagerModel;)V",
        "(Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public model:Lorg/catrobat/paintroid/model/CommandManagerModel;

.field public toBeScaled:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmapList"    # Ljava/util/List;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "toBeScaled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Z)V"
        }
    .end annotation

    .line 34
    nop

    .line 35
    nop

    .line 36
    nop

    .line 37
    nop

    .line 38
    nop

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
    .locals 2
    .param p1, "model"    # Lorg/catrobat/paintroid/model/CommandManagerModel;

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "model"    # Lorg/catrobat/paintroid/model/CommandManagerModel;
    .param p2, "bitmapList"    # Ljava/util/List;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "toBeScaled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/model/CommandManagerModel;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Z)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;ZILjava/lang/Object;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->copy(Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;Z)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    return v0
.end method

.method public final copy(Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;Z)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/model/CommandManagerModel;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;"
        }
    .end annotation

    new-instance v0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Lorg/catrobat/paintroid/model/CommandManagerModel;Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    iget-object v1, p1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    iget-object v1, p1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    iget-boolean p1, p1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapReturnValue(model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmapList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmapList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toBeScaled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;->toBeScaled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
