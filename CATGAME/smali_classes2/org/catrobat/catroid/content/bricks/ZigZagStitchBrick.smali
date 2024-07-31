.class public Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "ZigZagStitchBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ZIGZAG_EMBROIDERY_LENGTH:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a02ce

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ZIGZAG_EMBROIDERY_WIDTH:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a02cf

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "length"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "width"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;-><init>()V

    .line 41
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ZIGZAG_EMBROIDERY_LENGTH:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 42
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ZIGZAG_EMBROIDERY_WIDTH:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 57
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ZIGZAG_EMBROIDERY_LENGTH:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 58
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ZIGZAG_EMBROIDERY_WIDTH:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 59
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 57
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createZigZagStitchAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 60
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ZIGZAG_EMBROIDERY_LENGTH:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 52
    const v0, 0x7f0d0110

    return v0
.end method
