.class public Lorg/catrobat/catroid/content/actions/SetPenColorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetPenColorAction.java"


# instance fields
.field private blue:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private green:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private red:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setBlue(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "blue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 69
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->blue:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 70
    return-void
.end method

.method public setGreen(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "green"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->green:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 66
    return-void
.end method

.method public setRed(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "red"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->red:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 62
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 57
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 58
    return-void
.end method

.method protected update(F)V
    .locals 10
    .param p1, "delta"    # F

    .line 45
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->red:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->red:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 46
    .local v0, "newRed":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->green:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->green:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 47
    .local v2, "newGreen":I
    :goto_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->blue:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v3, :cond_2

    :goto_2
    goto :goto_3

    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->blue:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 48
    .local v1, "newBlue":I
    :goto_3
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    .line 49
    .local v3, "color":Lcom/badlogic/gdx/graphics/Color;
    const/16 v4, 0xff

    invoke-static {v4, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/Color;->argb8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 50
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    new-instance v5, Lorg/catrobat/catroid/content/PenColor;

    iget v6, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v7, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v9, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/catrobat/catroid/content/PenColor;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/PenConfiguration;->setPenColor(Lorg/catrobat/catroid/content/PenColor;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "newRed":I
    .end local v1    # "newBlue":I
    .end local v2    # "newGreen":I
    .end local v3    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_4

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_4
    return-void
.end method
