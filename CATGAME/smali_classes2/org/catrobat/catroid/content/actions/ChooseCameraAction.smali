.class public final Lorg/catrobat/catroid/content/actions/ChooseCameraAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ChooseCameraAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/ChooseCameraAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/ChooseCameraAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "cameraFacing",
        "",
        "setBackCamera",
        "",
        "setFrontCamera",
        "update",
        "percent",
        "",
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
.field private static final BACK:I = 0x0

.field public static final Companion:Lorg/catrobat/catroid/content/actions/ChooseCameraAction$Companion;

.field private static final FRONT:I = 0x1


# instance fields
.field private cameraFacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/ChooseCameraAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;->Companion:Lorg/catrobat/catroid/content/actions/ChooseCameraAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;->cameraFacing:I

    return-void
.end method


# virtual methods
.method public final setBackCamera()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;->cameraFacing:I

    .line 46
    return-void
.end method

.method public final setFrontCamera()V
    .locals 1

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;->cameraFacing:I

    .line 42
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 32
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v0

    .line 33
    .local v0, "cameraManager":Lorg/catrobat/catroid/camera/CameraManager;
    iget v1, p0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;->cameraFacing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 34
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->switchToFrontCamera()V

    goto :goto_0

    .line 36
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->switchToBackCamera()V

    .line 37
    :cond_1
    :goto_0
    nop

    .line 38
    return-void
.end method
