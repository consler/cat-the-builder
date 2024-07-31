.class public final Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ChangeBrightnessByNAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "brightness",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getBrightness",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setBrightness",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "update",
        "",
        "percent",
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
.field private brightness:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBrightness()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->brightness:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final setBrightness(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->brightness:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-eqz v0, :cond_1

    .line 37
    .local v0, "notNullScope":Lorg/catrobat/catroid/content/Scope;
    nop

    .line 38
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->brightness:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39
    .local v1, "newChangeBrightness":F
    :goto_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/content/Look;->changeBrightnessInUserInterfaceDimensionUnit(F)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "newChangeBrightness":F
    goto :goto_1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    nop

    .line 43
    return-void

    .line 36
    .end local v0    # "notNullScope":Lorg/catrobat/catroid/content/Scope;
    :cond_1
    return-void
.end method
