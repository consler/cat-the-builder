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
    value = "SMAP\nDefaultWorkspace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultWorkspace.kt\norg/catrobat/paintroid/tools/implementation/DefaultWorkspace\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001=B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u0002012\u0006\u00103\u001a\u000201H\u0016J\u0008\u00104\u001a\u00020\tH\u0016J\u0010\u00105\u001a\u0002012\u0006\u00106\u001a\u000201H\u0016J\u0010\u00107\u001a\u00020/2\u0006\u00108\u001a\u000209H\u0016J\u0008\u0010:\u001a\u00020;H\u0016J\u0008\u0010<\u001a\u00020;H\u0016R\u001c\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020 8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010#R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0018R\u0014\u0010*\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0018R\u0014\u0010,\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0018\u00a8\u0006>"
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
        "serializationHelper",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;)V",
        "bitmapLisOfAllLayers",
        "",
        "Landroid/graphics/Bitmap;",
        "getBitmapLisOfAllLayers",
        "()Ljava/util/List;",
        "bitmapOfAllLayers",
        "getBitmapOfAllLayers",
        "()Landroid/graphics/Bitmap;",
        "bitmapOfCurrentLayer",
        "getBitmapOfCurrentLayer",
        "currentLayerIndex",
        "",
        "getCurrentLayerIndex",
        "()I",
        "height",
        "getHeight",
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
        "getCommandSerializationHelper",
        "getSurfacePointFromCanvasPoint",
        "coordinate",
        "intersectsWith",
        "rectF",
        "Landroid/graphics/RectF;",
        "invalidate",
        "",
        "resetPerspective",
        "Listener",
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
.field private final layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private final listener:Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;

.field private perspective:Lorg/catrobat/paintroid/ui/Perspective;

.field private final serializationHelper:Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/Perspective;Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;)V
    .locals 1
    .param p1, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .param p2, "perspective"    # Lorg/catrobat/paintroid/ui/Perspective;
    .param p3, "listener"    # Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;
    .param p4, "serializationHelper"    # Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    const-string v0, "layerModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perspective"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializationHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    iput-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->listener:Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;

    iput-object p4, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->serializationHelper:Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    return-void
.end method


# virtual methods
.method public contains(Landroid/graphics/PointF;)Z
    .locals 4
    .param p1, "point"    # Landroid/graphics/PointF;

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBitmapLisOfAllLayers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/catrobat/paintroid/model/LayerModel;->Companion:Lorg/catrobat/paintroid/model/LayerModel$Companion;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/model/LayerModel$Companion;->getBitmapListOfAllLayers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapOfAllLayers()Landroid/graphics/Bitmap;
    .locals 2

    .line 49
    sget-object v0, Lorg/catrobat/paintroid/model/LayerModel;->Companion:Lorg/catrobat/paintroid/model/LayerModel$Companion;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/model/LayerModel$Companion;->getBitmapOfAllLayersToSave(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapOfCurrentLayer()Landroid/graphics/Bitmap;
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$a$-let-DefaultWorkspace$bitmapOfCurrentLayer$1":I
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-DefaultWorkspace$bitmapOfCurrentLayer$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCanvasPointFromSurfacePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "surfacePoint"    # Landroid/graphics/PointF;

    const-string v0, "surfacePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->getCanvasPointFromSurfacePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCommandSerializationHelper()Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->serializationHelper:Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    return-object v0
.end method

.method public getCurrentLayerIndex()I
    .locals 4

    .line 59
    const/4 v0, -0x1

    .line 60
    .local v0, "index":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-let-DefaultWorkspace$currentLayerIndex$1":I
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v3, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v0

    .line 62
    nop

    .line 60
    .end local v1    # "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v2    # "$i$a$-let-DefaultWorkspace$currentLayerIndex$1":I
    nop

    .line 63
    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPerspective()Lorg/catrobat/paintroid/ui/Perspective;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleForCenterBitmap()F
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->getScaleForCenterBitmap()F

    move-result v0

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceHeight:I

    return v0
.end method

.method public getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->getSurfacePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/paintroid/ui/Perspective;->surfaceWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getWidth()I

    move-result v0

    return v0
.end method

.method public intersectsWith(Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "rectF"    # Landroid/graphics/RectF;

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    int-to-float v1, v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->listener:Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;->invalidate()V

    .line 88
    return-void
.end method

.method public resetPerspective()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/ui/Perspective;->setBitmapDimensions(II)V

    .line 77
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->resetScaleAndTranslation()V

    .line 78
    return-void
.end method

.method public setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/Perspective;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "zoomFactor"    # F

    .line 72
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace;->getPerspective()Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->setScale(F)V

    .line 73
    return-void
.end method
