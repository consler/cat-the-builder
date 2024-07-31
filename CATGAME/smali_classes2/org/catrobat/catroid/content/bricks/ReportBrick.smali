.class public Lorg/catrobat/catroid/content/bricks/ReportBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "ReportBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->REPORT_BRICK:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01db

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ReportBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 4
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 46
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;-><init>()V

    .line 47
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->REPORT_BRICK:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 48
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/bricks/ReportBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    .line 47
    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/catrobat/catroid/content/ActionFactory;->createReportAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 46
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 49
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 41
    const v0, 0x7f0d00c6

    return v0
.end method
