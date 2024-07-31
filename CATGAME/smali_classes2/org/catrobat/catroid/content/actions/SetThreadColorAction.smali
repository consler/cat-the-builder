.class public Lorg/catrobat/catroid/content/actions/SetThreadColorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetThreadColorAction.java"


# instance fields
.field private color:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 73
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 65
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 68
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 69
    return-void
.end method

.method protected update(F)V
    .locals 9
    .param p1, "delta"    # F

    .line 43
    const-string v0, "0x"

    :try_start_0
    const-string v1, "0xff0000"

    .line 44
    .local v1, "colorStringInterpretation":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "red":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "green":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "blue":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 52
    .local v4, "redInt":I
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 53
    .local v5, "greenInt":I
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 55
    .local v6, "blueInt":I
    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    .line 56
    .local v7, "colorInterpretation":Lcom/badlogic/gdx/graphics/Color;
    const/16 v8, 0xff

    invoke-static {v8, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-static {v7, v8}, Lcom/badlogic/gdx/graphics/Color;->argb8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 57
    iget-object v8, p0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v8, v7}, Lorg/catrobat/catroid/content/Sprite;->setEmbroideryThreadColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "blue":Ljava/lang/String;
    .end local v1    # "colorStringInterpretation":Ljava/lang/String;
    .end local v2    # "red":Ljava/lang/String;
    .end local v3    # "green":Ljava/lang/String;
    .end local v4    # "redInt":I
    .end local v5    # "greenInt":I
    .end local v6    # "blueInt":I
    .end local v7    # "colorInterpretation":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
