.class public final Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;
.super Ljava/lang/Object;
.source "DefaultWorkspace.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/Workspace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultWorkspace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultWorkspace.kt\norg/catrobat/paintroid/tools/implementation/DefaultWorkspace\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001>B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u0002032\u0006\u00105\u001a\u000203H\u0016J\u0010\u00106\u001a\u0002032\u0006\u00107\u001a\u000203H\u0016J\u0010\u00108\u001a\u0002012\u0006\u00109\u001a\u00020:H\u0016J\u0008\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020<H\u0016R\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u000b8VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020\"8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010%R\u0014\u0010*\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0018R\u0014\u0010,\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0018R\u0014\u0010.\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u0018\u00a8\u0006?"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "perspective",
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "listener",
        "Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;)V",
        "bitmapListOfAllLayers",
        "",
        "Landroid/graphics/Bitmap;",
        "getBitmapListOfAllLayers",
        "()Ljava/util/List;",
        "bitmapOfAllLayers",
        "getBitmapOfAllLayers",
        "()Landroid/graphics/Bitmap;",
        "bitmapOfCurrentLayer",
        "getBitmapOfCurrentLayer",
        "setBitmapOfCurrentLayer",
        "(Landroid/graphics/Bitmap;)V",
        "currentLayerIndex",
        "",
        "getCurrentLayerIndex",
        "()I",
        "height",
        "getHeight",
        "getLayerModel",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "getPerspective",
        "()Lorg/catrobat/paintroid/ui/Perspective;",
        "setPerspective",
        "(Lorg/catrobat/paintroid/ui/Perspective;)V",
        "zoomFactor",
        "",
        "scale",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "scaleForCenterBitmap",
        "getScaleForCenterBitmap",
        "surfaceHeight",
        "getSurfaceHeight",
        "surfaceWidth",
        "getSurfaceWidth",
        "width",
        "getWidth",
        "contains",
        "",
        "point",
        "Landroid/graphics/PointF;",
        "getCanvasPointFromSurfacePoint",
        "surfacePoint",
        "getSurfacePointFromCanvasPoint",
        "coordinate",
        "intersectsWith",
        "rectF",
        "Landroid/graphics/RectF;",
        "invalidate",
        "",
        "resetPerspective",
        "Listener",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private bitmapOfCurrentLayer:Landroid/graphics/Bitmap;

.field private final layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private final listener:Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;

.field private perspective:Lorg/catrobat/paintroid/ui/Perspective;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;)V
    .locals 1

    const-string v0, "layerModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perspective"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 30
    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    .line 31
    iput-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->listener:Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;

    return-void
.end method


# virtual methods
.method public contains(Landroid/graphics/PointF;)Z
    .locals 3

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBitmapListOfAllLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getBitmapListOfAllLayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapOfAllLayers()Landroid/graphics/Bitmap;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapOfCurrentLayer()Landroid/graphics/Bitmap;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCanvasPointFromSurfacePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "surfacePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->getCanvasPointFromSurfacePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentLayerIndex()I
    .locals 2

    .line 57
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-object v0
.end method

.method public getPerspective()Lorg/catrobat/paintroid/ui/Perspective;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleForCenterBitmap()F
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->getScaleForCenterBitmap()F

    move-result v0

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceHeight:I

    return v0
.end method

.method public getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v0

    return v0
.end method

.method public intersectsWith(Landroid/graphics/RectF;)Z
    .locals 3

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget v0, p1, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->listener:Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;->invalidate()V

    return-void
.end method

.method public resetPerspective()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/ui/Perspective;->setBitmapDimensions(II)V

    .line 74
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->resetScaleAndTranslation()V

    return-void
.end method

.method public setBitmapOfCurrentLayer(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->bitmapOfCurrentLayer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->setScale(F)V

    return-void
.end method
