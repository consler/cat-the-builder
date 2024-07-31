.class public Lorg/catrobat/paintroid/model/Layer;
.super Ljava/lang/Object;
.source "Layer.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$Layer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Layer.kt\norg/catrobat/paintroid/model/Layer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u001a\u0010\u0008\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0004\u00a8\u0006\u0013"
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
        "transparentBitmap",
        "getTransparentBitmap",
        "setTransparentBitmap",
        "switchBitmaps",
        "",
        "isUnhide",
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
.field private bitmap:Landroid/graphics/Bitmap;

.field private isVisible:Z

.field private transparentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/model/Layer;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/model/Layer;->isVisible:Z

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$apply":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 31
    .local v1, "$i$a$-apply-Layer$1":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/model/Layer;->setTransparentBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    nop

    .line 30
    .end local v0    # "$this$apply":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-apply-Layer$1":I
    nop

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/catrobat/paintroid/model/Layer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTransparentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/catrobat/paintroid/model/Layer;->transparentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/catrobat/paintroid/model/Layer;->isVisible:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/Bitmap;

    .line 25
    iput-object p1, p0, Lorg/catrobat/paintroid/model/Layer;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTransparentBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/Bitmap;

    .line 26
    iput-object p1, p0, Lorg/catrobat/paintroid/model/Layer;->transparentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 27
    iput-boolean p1, p0, Lorg/catrobat/paintroid/model/Layer;->isVisible:Z

    return-void
.end method

.method public switchBitmaps(Z)V
    .locals 5
    .param p1, "isUnhide"    # Z

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 45
    .local v1, "$this$apply":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 36
    .local v2, "$i$a$-apply-Layer$switchBitmaps$tmpBitmap$1":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .end local v1    # "$this$apply":Landroid/graphics/Bitmap;
    .end local v2    # "$i$a$-apply-Layer$switchBitmaps$tmpBitmap$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    .local v0, "tmpBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/model/Layer;->setTransparentBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/model/Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0}, Lorg/catrobat/paintroid/model/Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 42
    :cond_1
    return-void
.end method
