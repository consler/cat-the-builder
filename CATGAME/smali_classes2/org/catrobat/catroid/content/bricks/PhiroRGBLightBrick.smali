.class public Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "PhiroRGBLightBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;,
        Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private eye:Ljava/lang/String;

.field private final transient showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 57
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a019b

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 58
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0199

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 59
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0198

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 60
    sget-object v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->BOTH:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->eye:Ljava/lang/String;

    .line 62
    new-instance v0, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;III)V
    .locals 4
    .param p1, "eyeEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;
    .param p2, "red"    # I
    .param p3, "green"    # I
    .param p4, "blue"    # I

    .line 66
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "eyeEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;
    .param p2, "redFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "greenFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "blueFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;-><init>()V

    .line 71
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->eye:Ljava/lang/String;

    .line 72
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 73
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 74
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p4}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 75
    return-void
.end method

.method static synthetic access$101(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;
    .param p1, "x1"    # Landroid/view/View;

    .line 44
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    return-void
.end method

.method private areAllBrickFieldsNumbers()Z
    .locals 1

    .line 116
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 117
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 118
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 7
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 129
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->eye:Ljava/lang/String;

    .line 130
    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 131
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 132
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 133
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v6

    .line 129
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/catrobat/catroid/content/ActionFactory;->createPhiroRgbLedEyeActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 134
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 123
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 124
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 125
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 112
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 86
    const v0, 0x7f030005

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 88
    .local v0, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 90
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->view:Landroid/view/View;

    const v2, 0x7f0a01a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 91
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroRGBLightBrick$iKxUycLh-cox9JUTjYlTwByYvOg;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroRGBLightBrick$iKxUycLh-cox9JUTjYlTwByYvOg;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->eye:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 97
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 79
    const v0, 0x7f0d00ac

    return v0
.end method

.method public synthetic lambda$getView$0$PhiroRGBLightBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 93
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->values()[Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->eye:Ljava/lang/String;

    .line 94
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 102
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->areAllBrickFieldsNumbers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$1;)V

    .line 104
    .local v0, "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    invoke-interface {v1, p1, v0}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;->showFormulaEditorToEditFormula(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    .line 105
    .end local v0    # "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 108
    :goto_0
    return-void
.end method
