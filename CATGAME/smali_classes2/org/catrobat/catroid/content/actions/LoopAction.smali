.class public abstract Lorg/catrobat/catroid/content/actions/LoopAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
.source "LoopAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/LoopAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008&\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\nH\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0094\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/LoopAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;",
        "()V",
        "currentTime",
        "",
        "getCurrentTime",
        "()F",
        "setCurrentTime",
        "(F)V",
        "isLoopDelay",
        "",
        "()Z",
        "setLoopDelay",
        "(Z)V",
        "isLoopDelayNeeded",
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
.field public static final Companion:Lorg/catrobat/catroid/content/actions/LoopAction$Companion;

.field private static final LOOP_DELAY:F = 0.02f


# instance fields
.field private currentTime:F

.field private isLoopDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/LoopAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/LoopAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/LoopAction;->Companion:Lorg/catrobat/catroid/content/actions/LoopAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/LoopAction;->isLoopDelay:Z

    return-void
.end method


# virtual methods
.method protected getCurrentTime()F
    .locals 1

    .line 31
    iget v0, p0, Lorg/catrobat/catroid/content/actions/LoopAction;->currentTime:F

    return v0
.end method

.method public final isLoopDelay()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/LoopAction;->isLoopDelay:Z

    return v0
.end method

.method protected final isLoopDelayNeeded()Z
    .locals 2

    .line 33
    nop

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;->getCurrentTime()F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/LoopAction;->isLoopDelay:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/catrobat/catroid/utils/LoopUtil;->isAnyStitchRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setCurrentTime(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 31
    iput p1, p0, Lorg/catrobat/catroid/content/actions/LoopAction;->currentTime:F

    return-void
.end method

.method public final setLoopDelay(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 30
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/LoopAction;->isLoopDelay:Z

    return-void
.end method
