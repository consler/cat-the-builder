.class public Lorg/catrobat/catroid/content/actions/ClearBackgroundAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ClearBackgroundAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected update(F)V
    .locals 1
    .param p1, "delta"    # F

    .line 33
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->clearBackground()V

    .line 34
    return-void
.end method
