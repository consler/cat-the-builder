.class public Lorg/catrobat/paintroid/model/Layer;
.super Ljava/lang/Object;
.source "Layer.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$Layer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u001a\u0010\u0008\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/paintroid/model/Layer;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/graphics/Bitmap;)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "isVisible",
        "",
        "()Z",
        "setVisible",
        "(Z)V",
        "opacityPercentage",
        "",
        "getOpacityPercentage",
        "()I",
        "setOpacityPercentage",
        "(I)V",
        "getValueForOpacityPercentage",
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
.field private bitmap:Landroid/graphics/Bitmap;

.field private isVisible:Z

.field private opacityPercentage:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/model/Layer;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/Layer;->isVisible:Z

    const/16 p1, 0x64

    .line 29
    iput p1, p0, Lorg/catrobat/paintroid/model/Layer;->opacityPercentage:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/model/Layer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacityPercentage()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/catrobat/paintroid/model/Layer;->opacityPercentage:I

    return v0
.end method

.method public getValueForOpacityPercentage()I
    .locals 2

    .line 31
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/Layer;->getOpacityPercentage()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/Layer;->isVisible:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/catrobat/paintroid/model/Layer;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOpacityPercentage(I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/catrobat/paintroid/model/Layer;->opacityPercentage:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/Layer;->isVisible:Z

    return-void
.end method
