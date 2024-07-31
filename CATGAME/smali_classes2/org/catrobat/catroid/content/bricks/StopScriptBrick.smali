.class public Lorg/catrobat/catroid/content/bricks/StopScriptBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "StopScriptBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private spinnerSelection:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "spinnerSelection"    # I

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 49
    iput p1, p0, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;->spinnerSelection:I

    .line 50
    return-void
.end method

.method private createArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    .local v0, "values":[Ljava/lang/String;
    const v1, 0x7f12015b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 73
    const v1, 0x7f120155

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    const v1, 0x7f120157

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 76
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 77
    .local v1, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 84
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;->spinnerSelection:I

    .line 85
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2, p1}, Lorg/catrobat/catroid/content/ActionFactory;->createStopScriptAction(ILorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 86
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;->view:Landroid/view/View;

    const v1, 0x7f0a027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 61
    .local v0, "spinner":Landroid/widget/Spinner;
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;->createArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 62
    iget v1, p0, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;->spinnerSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 63
    new-instance v1, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v2, Lorg/catrobat/catroid/content/bricks/-$$Lambda$StopScriptBrick$g4rHO5KKXprDB8X0j55oa2youd4;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$StopScriptBrick$g4rHO5KKXprDB8X0j55oa2youd4;-><init>(Lorg/catrobat/catroid/content/bricks/StopScriptBrick;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 67
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 54
    const v0, 0x7f0d00f1

    return v0
.end method

.method public synthetic lambda$getView$0$StopScriptBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 1
    .param p1, "position"    # Ljava/lang/Integer;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;->spinnerSelection:I

    .line 65
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
