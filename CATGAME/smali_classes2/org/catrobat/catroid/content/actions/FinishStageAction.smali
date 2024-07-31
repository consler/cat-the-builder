.class public final Lorg/catrobat/catroid/content/actions/FinishStageAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "FinishStageAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/FinishStageAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/FinishStageAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "silent",
        "",
        "getSilent",
        "()Z",
        "setSilent",
        "(Z)V",
        "update",
        "",
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
.field public static final Companion:Lorg/catrobat/catroid/content/actions/FinishStageAction$Companion;

.field private static final SUCCESS_MESSAGE:Ljava/lang/String; = "Success"


# instance fields
.field private silent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/FinishStageAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/FinishStageAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/FinishStageAction;->Companion:Lorg/catrobat/catroid/content/actions/FinishStageAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSilent()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/FinishStageAction;->silent:Z

    return v0
.end method

.method public final setSilent(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 30
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/FinishStageAction;->silent:Z

    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 33
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/FinishStageAction;->silent:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->finishStage()V

    goto :goto_0

    .line 36
    :cond_0
    nop

    .line 37
    new-instance v0, Lorg/catrobat/catroid/stage/TestResult;

    const/16 v1, 0x1e61

    const-string v2, "Success"

    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/stage/TestResult;-><init>(Ljava/lang/String;I)V

    .line 36
    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageActivity;->finishTestWithResult(Lorg/catrobat/catroid/stage/TestResult;)V

    .line 39
    :goto_0
    nop

    .line 40
    return-void
.end method
