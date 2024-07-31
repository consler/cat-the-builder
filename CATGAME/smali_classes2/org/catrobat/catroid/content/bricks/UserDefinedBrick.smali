.class public Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "UserDefinedBrick.java"


# static fields
.field public static final ADD_INPUT_OR_LABEL_BUNDLE_ARGUMENT:Ljava/lang/String; = "addInputOrLabel"

.field public static final USER_BRICK_BUNDLE_ARGUMENT:Ljava/lang/String; = "user_brick"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public transient currentUserDefinedDataTextView:Landroid/widget/TextView;

.field public transient formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public transient horizontalSpacing:I

.field private isCallingBrick:Z
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "callingBrick"
    .end annotation
.end field

.field private userDefinedBrickDataList:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userDefinedBrickDataList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;",
            ">;"
        }
    .end annotation
.end field

.field private userDefinedBrickID:Ljava/util/UUID;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userDefinedBrickID"
    .end annotation
.end field

.field private transient userDefinedBrickLayout:Lorg/catrobat/catroid/ui/BrickLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 76
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    .line 81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickID:Ljava/util/UUID;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "userBrickDataList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;>;"
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 76
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    .locals 1
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 84
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 76
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    .line 85
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->copyUserDefinedDataList(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V

    .line 86
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickID:Ljava/util/UUID;

    .line 87
    iget-boolean v0, p1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isCallingBrick:Z

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isCallingBrick:Z

    .line 88
    return-void
.end method

.method private addTextViewForUserData(Landroid/content/Context;Landroid/widget/TextView;Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "dataType"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 252
    invoke-direct {p0, p1, p3}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getDefaultText(Landroid/content/Context;Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    .line 254
    new-instance v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f130142

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object p2, v1

    .line 255
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    invoke-virtual {v1, p2}, Lorg/catrobat/catroid/ui/BrickLayout;->addView(Landroid/view/View;)V

    .line 256
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->setEditText(Z)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->lastContentIsLabel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_1
    new-instance v1, Landroid/widget/TextView;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f130143

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object p2, v1

    .line 262
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    invoke-virtual {v1, p2}, Lorg/catrobat/catroid/ui/BrickLayout;->addView(Landroid/view/View;)V

    .line 265
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    iget v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->horizontalSpacing:I

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->setHorizontalSpacing(I)V

    .line 266
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->currentUserDefinedDataTextView:Landroid/widget/TextView;

    .line 268
    return-void
.end method

.method private copyFormulaOfInput(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)V
    .locals 4
    .param p1, "oldInput"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    .param p2, "newInput"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 120
    invoke-virtual {p1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getInputFormulaField()Lorg/catrobat/catroid/userbrick/InputFormulaField;

    move-result-object v0

    .line 121
    .local v0, "formulaField":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 122
    .local v1, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {p2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getInputFormulaField()Lorg/catrobat/catroid/userbrick/InputFormulaField;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private copyUserDefinedDataList(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    .locals 5
    .param p1, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    .line 105
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 106
    .local v1, "data":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    instance-of v2, v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    if-eqz v2, :cond_1

    .line 107
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 108
    .local v2, "oldInput":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    new-instance v3, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    invoke-direct {v3, v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;-><init>(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)V

    .line 109
    .local v3, "newInput":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-boolean v4, p1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isCallingBrick:Z

    if-eqz v4, :cond_0

    .line 111
    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->copyFormulaOfInput(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)V

    .line 113
    .end local v2    # "oldInput":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    .end local v3    # "newInput":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    :cond_0
    goto :goto_1

    .line 114
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    new-instance v3, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    move-object v4, v1

    check-cast v4, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;-><init>(Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v1    # "data":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    :goto_1
    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method private getDefaultText(Landroid/content/Context;Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataTypeToAdd"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    .line 272
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .line 275
    .local v0, "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    sget-object v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    if-ne p2, v1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultText":Ljava/lang/String;
    goto :goto_0

    .line 278
    .end local v1    # "defaultText":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .restart local v1    # "defaultText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDataListAsStrings(Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 281
    return-object v1
.end method

.method private lastContentIsLabel()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    invoke-virtual {v0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->isLabel()Z

    move-result v0

    return v0
.end method

.method private updateUserDefinedBrickDataValues()V
    .locals 4

    .line 290
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 291
    .local v1, "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->isInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 293
    .local v2, "input":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getInputFormulaField()Lorg/catrobat/catroid/userbrick/InputFormulaField;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->setValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 295
    .end local v1    # "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    .end local v2    # "input":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 336
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->updateUserDefinedBrickDataValues()V

    .line 337
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickInputs()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickID:Ljava/util/UUID;

    .line 337
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createUserBrickAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Ljava/util/List;Ljava/util/UUID;)Lorg/catrobat/catroid/content/actions/EventAction;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 339
    return-void
.end method

.method protected addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 285
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method public addInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    new-instance v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    invoke-direct {v1, p1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public addLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->removeLastLabel()V

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    new-instance v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    invoke-direct {v1, p1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 97
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 98
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickID:Ljava/util/UUID;

    .line 99
    iget-boolean v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isCallingBrick:Z

    iput-boolean v1, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isCallingBrick:Z

    .line 100
    return-object v0
.end method

.method public containsInputs()Z
    .locals 3

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 169
    .local v1, "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->isInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v0, 0x1

    return v0

    .line 172
    .end local v1    # "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getBrickFieldFromTextView(Landroid/widget/TextView;)Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .line 326
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method

.method public getTextView(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Landroid/widget/TextView;
    .locals 1
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 331
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getUserDataListAsStrings(Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;)Ljava/util/List;
    .locals 4
    .param p1, "dataType"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "userDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 179
    .local v2, "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->getType()Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 180
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v2    # "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    return-object v0
.end method

.method public getUserDefinedBrickDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    return-object v0
.end method

.method public getUserDefinedBrickID()Ljava/util/UUID;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickID:Ljava/util/UUID;

    return-object v0
.end method

.method public getUserDefinedBrickInputs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "userDefinedBrickInputs":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 160
    .local v2, "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->isInput()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v2    # "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    :cond_0
    goto :goto_0

    .line 164
    :cond_1
    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 217
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->view:Landroid/view/View;

    const v1, 0x7f0a02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/BrickLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 219
    nop

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->horizontalSpacing:I

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 224
    .local v2, "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->isInput()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    new-instance v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f130142

    invoke-direct {v3, p1, v4, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v0, v3

    goto :goto_1

    .line 227
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f130143

    invoke-direct {v4, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    .line 229
    :goto_1
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->isInput()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isCallingBrick:Z

    if-eqz v3, :cond_1

    .line 231
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    invoke-virtual {v3}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getInputFormulaField()Lorg/catrobat/catroid/userbrick/InputFormulaField;

    move-result-object v3

    .line 232
    .local v3, "formulaField":Lorg/catrobat/catroid/userbrick/InputFormulaField;
    invoke-virtual {p0, v3, v0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Landroid/widget/TextView;)V

    .line 233
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getTrimmedFormulaString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v3    # "formulaField":Lorg/catrobat/catroid/userbrick/InputFormulaField;
    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/ui/BrickLayout;->addView(Landroid/view/View;)V

    .line 236
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;->isInput()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->setEditText(Z)V

    .line 239
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;

    iget v4, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->horizontalSpacing:I

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;->setHorizontalSpacing(I)V

    .line 240
    .end local v2    # "userDefinedBrickData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    goto :goto_0

    .line 242
    :cond_3
    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 243
    .local v1, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v2, v1, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    if-eqz v2, :cond_4

    .line 244
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->getDataTypeToAdd()Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    move-result-object v2

    .line 245
    .local v2, "dataTypeToAdd":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
    invoke-direct {p0, p1, v0, v2}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->addTextViewForUserData(Landroid/content/Context;Landroid/widget/TextView;Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;)V

    .line 248
    .end local v2    # "dataTypeToAdd":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;
    :cond_4
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 322
    const v0, 0x7f0d00fc

    return v0
.end method

.method public hasEditableFormulaField()Z
    .locals 1

    .line 300
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->containsInputs()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isUserDefinedBrickDataEqual(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 7
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 194
    instance-of v0, p1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    return v1

    .line 197
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    .line 198
    .local v0, "other":Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 199
    return v1

    .line 201
    :cond_1
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    :goto_0
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 202
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 203
    .local v3, "thisData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    iget-object v4, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    .line 205
    .local v4, "otherData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    return v1

    .line 208
    :cond_2
    instance-of v5, v3, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 209
    return v1

    .line 201
    .end local v3    # "thisData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    .end local v4    # "otherData":Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "dataIndex":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public removeLastLabel()V
    .locals 2

    .line 140
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->lastContentIsLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->userDefinedBrickDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 143
    :cond_0
    return-void
.end method

.method public setCallingBrick(Z)V
    .locals 0
    .param p1, "callingBrick"    # Z

    .line 127
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isCallingBrick:Z

    .line 128
    return-void
.end method

.method public setClickListeners()V
    .locals 3

    .line 305
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 306
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Landroid/widget/TextView;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 307
    .local v2, "brickFieldView":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Landroid/widget/TextView;>;"
    .end local v2    # "brickFieldView":Landroid/widget/TextView;
    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 313
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->formulaFieldToTextViewMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getBrickFieldFromTextView(Landroid/widget/TextView;)Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 318
    :goto_0
    return-void
.end method
