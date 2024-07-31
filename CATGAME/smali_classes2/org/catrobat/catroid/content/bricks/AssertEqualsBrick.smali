.class public Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "AssertEqualsBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 34
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASSERT_EQUALS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a007a

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASSERT_EQUALS_EXPECTED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a007c

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 50
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASSERT_EQUALS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 51
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASSERT_EQUALS_EXPECTED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 52
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;->getPositionInformation()Ljava/lang/String;

    move-result-object v5

    .line 50
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createAssertEqualsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 54
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASSERT_EQUALS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 40
    const v0, 0x7f0d0039

    return v0
.end method
