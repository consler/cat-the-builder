.class public final Lorg/catrobat/catroid/stage/CameraPositioner;
.super Ljava/lang/Object;
.source "CameraPositioner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/CameraPositioner$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0002J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000e\"\u0004\u0008\u001b\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000e\"\u0004\u0008\u001d\u0010\u0010\u00a8\u0006%"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/CameraPositioner;",
        "",
        "camera",
        "Lcom/badlogic/gdx/graphics/OrthographicCamera;",
        "virtualHeightHalf",
        "",
        "virtualWidthHalf",
        "(Lcom/badlogic/gdx/graphics/OrthographicCamera;FF)V",
        "getCamera",
        "()Lcom/badlogic/gdx/graphics/OrthographicCamera;",
        "setCamera",
        "(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V",
        "horizontalFlex",
        "getHorizontalFlex",
        "()F",
        "setHorizontalFlex",
        "(F)V",
        "spriteToFocusOn",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getSpriteToFocusOn",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSpriteToFocusOn",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "verticalFlex",
        "getVerticalFlex",
        "setVerticalFlex",
        "getVirtualHeightHalf",
        "setVirtualHeightHalf",
        "getVirtualWidthHalf",
        "setVirtualWidthHalf",
        "convertLimitOnNegativeDifference",
        "difference",
        "limit",
        "reset",
        "",
        "updateCameraPositionForFocusedSprite",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final CALCULATE_PERCENT:I = 0x64

.field public static final Companion:Lorg/catrobat/catroid/stage/CameraPositioner$Companion;


# instance fields
.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field private horizontalFlex:F

.field private spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

.field private verticalFlex:F

.field private virtualHeightHalf:F

.field private virtualWidthHalf:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/stage/CameraPositioner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/stage/CameraPositioner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/stage/CameraPositioner;->Companion:Lorg/catrobat/catroid/stage/CameraPositioner$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;FF)V
    .locals 1
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .param p2, "virtualHeightHalf"    # F
    .param p3, "virtualWidthHalf"    # F

    const-string v0, "camera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iput p2, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualHeightHalf:F

    iput p3, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualWidthHalf:F

    return-void
.end method

.method private final convertLimitOnNegativeDifference(FF)F
    .locals 1
    .param p1, "difference"    # F
    .param p2, "limit"    # F

    .line 67
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method


# virtual methods
.method public final getCamera()Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    return-object v0
.end method

.method public final getHorizontalFlex()F
    .locals 1

    .line 37
    iget v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->horizontalFlex:F

    return v0
.end method

.method public final getSpriteToFocusOn()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final getVerticalFlex()F
    .locals 1

    .line 38
    iget v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->verticalFlex:F

    return v0
.end method

.method public final getVirtualHeightHalf()F
    .locals 1

    .line 33
    iget v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualHeightHalf:F

    return v0
.end method

.method public final getVirtualWidthHalf()F
    .locals 1

    .line 34
    iget v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualWidthHalf:F

    return v0
.end method

.method public final reset()V
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    check-cast v0, Lorg/catrobat/catroid/content/Sprite;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 74
    return-void

    .line 70
    :cond_0
    return-void
.end method

.method public final setCamera(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    return-void
.end method

.method public final setHorizontalFlex(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 37
    iput p1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->horizontalFlex:F

    return-void
.end method

.method public final setSpriteToFocusOn(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method

.method public final setVerticalFlex(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 38
    iput p1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->verticalFlex:F

    return-void
.end method

.method public final setVirtualHeightHalf(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 33
    iput p1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualHeightHalf:F

    return-void
.end method

.method public final setVirtualWidthHalf(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 34
    iput p1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualWidthHalf:F

    return-void
.end method

.method public final updateCameraPositionForFocusedSprite()V
    .locals 11

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    .line 42
    .local v0, "spritePositionX":F
    iget-object v1, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 43
    .local v1, "spritePositionY":F
    iget v2, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualWidthHalf:F

    iget v3, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->horizontalFlex:F

    const/16 v4, 0x64

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 44
    .local v2, "limitX":F
    iget v3, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->virtualHeightHalf:F

    iget v5, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->verticalFlex:F

    div-float/2addr v5, v4

    mul-float/2addr v3, v5

    .line 45
    .local v3, "limitY":F
    iget-object v4, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    const-string v5, "camera.position"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .local v4, "currentPos":Lcom/badlogic/gdx/math/Vector3;
    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v5, v0, v5

    .line 48
    .local v5, "currentXDifference":F
    iget v6, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v6, v1, v6

    .line 50
    .local v6, "currentYDifference":F
    iget-object v7, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 51
    .local v7, "newCameraXPos":F
    iget-object v8, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 52
    .local v8, "newCameraYPos":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_0

    .line 53
    nop

    .line 54
    invoke-direct {p0, v5, v2}, Lorg/catrobat/catroid/stage/CameraPositioner;->convertLimitOnNegativeDifference(FF)F

    move-result v9

    sub-float v7, v0, v9

    .line 56
    :cond_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v3

    if-lez v9, :cond_1

    .line 57
    nop

    .line 58
    invoke-direct {p0, v6, v3}, Lorg/catrobat/catroid/stage/CameraPositioner;->convertLimitOnNegativeDifference(FF)F

    move-result v9

    sub-float v8, v1, v9

    .line 60
    :cond_1
    iget-object v9, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v9, v7, v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v9, v8, v9

    if-eqz v9, :cond_3

    .line 61
    :cond_2
    iget-object v9, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v8, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 62
    iget-object v9, p0, Lorg/catrobat/catroid/stage/CameraPositioner;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 64
    :cond_3
    return-void

    .line 42
    .end local v1    # "spritePositionY":F
    .end local v2    # "limitX":F
    .end local v3    # "limitY":F
    .end local v4    # "currentPos":Lcom/badlogic/gdx/math/Vector3;
    .end local v5    # "currentXDifference":F
    .end local v6    # "currentYDifference":F
    .end local v7    # "newCameraXPos":F
    .end local v8    # "newCameraYPos":F
    :cond_4
    return-void

    .line 41
    .end local v0    # "spritePositionX":F
    :cond_5
    return-void
.end method
