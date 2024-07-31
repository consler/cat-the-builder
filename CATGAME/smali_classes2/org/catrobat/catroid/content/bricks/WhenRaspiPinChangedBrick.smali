.class public Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;
.super Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.source "WhenRaspiPinChangedBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private script:Lorg/catrobat/catroid/content/RaspiInterruptScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 50
    new-instance v0, Lorg/catrobat/catroid/content/RaspiInterruptScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/RaspiInterruptScript;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/RaspiInterruptScript;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/RaspiInterruptScript;

    .line 53
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 54
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 55
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->commentedOut:Z

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    .line 57
    return-void
.end method

.method private getValueSpinnerArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
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

    .line 121
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 122
    .local v0, "messageAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 123
    const v1, 0x7f120109

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    const v1, 0x7f12010a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 125
    return-object v0
.end method

.method private setupPinSpinner(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->view:Landroid/view/View;

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 83
    .local v0, "pinSpinner":Landroid/widget/Spinner;
    invoke-static {p1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getRaspiRevision(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "revision":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getGpioList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 85
    .local v2, "availableGPIOs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v3, "messageAdapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 88
    .local v5, "gpio":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 89
    .end local v5    # "gpio":Ljava/lang/Integer;
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    new-instance v4, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v5, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$6odF7Gj6DhuBl_Ivti_a3ntqtXk;

    invoke-direct {v5, p0, v0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$6odF7Gj6DhuBl_Ivti_a3ntqtXk;-><init>(Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;Landroid/widget/Spinner;)V

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->getPin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 97
    return-void
.end method

.method private setupValueSpinner(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->view:Landroid/view/View;

    const v1, 0x7f0a01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 103
    .local v0, "valueSpinner":Landroid/widget/Spinner;
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->getValueSpinnerArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 104
    .local v1, "valueAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 105
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$RwtYcQBUFWUEae0jqcxi4zgM548;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$RwtYcQBUFWUEae0jqcxi4zgM548;-><init>(Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/catrobat/catroid/common/BrickValues;->RASPI_EVENTS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 113
    sget-object v3, Lorg/catrobat/catroid/common/BrickValues;->RASPI_EVENTS:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->getEventValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 115
    goto :goto_1

    .line 112
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 140
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 135
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 136
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;

    .line 62
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/RaspiInterruptScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    .line 63
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 64
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/RaspiInterruptScript;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    return-object v0
.end method

.method public bridge synthetic getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->getScript()Lorg/catrobat/catroid/content/RaspiInterruptScript;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 75
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->setupValueSpinner(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->setupPinSpinner(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 69
    const v0, 0x7f0d00bd

    return v0
.end method

.method public synthetic lambda$setupPinSpinner$0$WhenRaspiPinChangedBrick(Landroid/widget/Spinner;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "pinSpinner"    # Landroid/widget/Spinner;
    .param p2, "position"    # Ljava/lang/Integer;

    .line 92
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "selectedMessage":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->setPin(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public synthetic lambda$setupValueSpinner$1$WhenRaspiPinChangedBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 3
    .param p1, "position"    # Ljava/lang/Integer;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/common/BrickValues;->RASPI_EVENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->script:Lorg/catrobat/catroid/content/RaspiInterruptScript;

    sget-object v1, Lorg/catrobat/catroid/common/BrickValues;->RASPI_EVENTS:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->setEventValue(Ljava/lang/String;)V

    .line 109
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
