.class public Lorg/catrobat/catroid/content/bricks/SetTextBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetTextBrick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a023c

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a023d

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 40
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a023b

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "xDestinationValue"    # I
    .param p2, "yDestinationValue"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v2, p3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "xDestination"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "yDestination"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;-><init>()V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 51
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 61
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 62
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 63
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 64
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetTextBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 62
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createSetTextAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 65
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 56
    const v0, 0x7f0d00df

    return v0
.end method
