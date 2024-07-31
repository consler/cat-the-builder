.class public Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "PhiroMotorMoveBackwardBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private motor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 52
    sget-object v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->MOTOR_LEFT:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->motor:Ljava/lang/String;

    .line 53
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0190

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;I)V
    .locals 2
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;
    .param p2, "speed"    # I

    .line 57
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;
    .param p2, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 61
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;-><init>()V

    .line 62
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->motor:Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 64
    return-void
.end method

.method private isSpeedOnlyANumber()Z
    .locals 2

    .line 103
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 115
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->motor:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 115
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createPhiroMotorMoveBackwardActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 117
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 109
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 110
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 111
    return-void
.end method

.method public getCustomView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v2, 0x7f120623

    invoke-direct {v0, p0, v1, v2}, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;-><init>(Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;I)V

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 79
    const v0, 0x7f030006

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 81
    .local v0, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 83
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->view:Landroid/view/View;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 84
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroMotorMoveBackwardBrick$lv-LG_7L0p6sxT7tVSn2Yz4C_zc;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroMotorMoveBackwardBrick$lv-LG_7L0p6sxT7tVSn2Yz4C_zc;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->motor:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 90
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 73
    const v0, 0x7f0d00a8

    return v0
.end method

.method public synthetic lambda$getView$0$PhiroMotorMoveBackwardBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 86
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->values()[Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->motor:Ljava/lang/String;

    .line 87
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 95
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;->isSpeedOnlyANumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-static {v0, p0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showCustomFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 100
    :goto_0
    return-void
.end method
