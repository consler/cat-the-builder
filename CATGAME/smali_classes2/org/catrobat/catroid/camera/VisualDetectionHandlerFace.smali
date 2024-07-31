.class public final Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;
.super Ljava/lang/Object;
.source "VisualDetectionHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;",
        "",
        "id",
        "",
        "boundingBox",
        "Landroid/graphics/Rect;",
        "(ILandroid/graphics/Rect;)V",
        "getBoundingBox",
        "()Landroid/graphics/Rect;",
        "getId",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final boundingBox:Landroid/graphics/Rect;

.field private final id:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "boundingBox"    # Landroid/graphics/Rect;

    const-string v0, "boundingBox"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    iput-object p2, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;ILandroid/graphics/Rect;ILjava/lang/Object;)Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->copy(ILandroid/graphics/Rect;)Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    return v0
.end method

.method public final component2()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final copy(ILandroid/graphics/Rect;)Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;
    .locals 1

    const-string v0, "boundingBox"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;-><init>(ILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;

    iget v0, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    iget v1, p1, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    iget-object p1, p1, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualDetectionHandlerFace(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/camera/VisualDetectionHandlerFace;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
