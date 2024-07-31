.class public abstract Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "FormulaBrick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public transient brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "formulaList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 58
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 61
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method private getScriptFragment(Landroid/view/View;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz p1, :cond_0

    .line 225
    invoke-static {p1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 228
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 229
    return-object v1

    .line 232
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a03b7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 233
    .local v2, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v3, v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v3, :cond_2

    .line 234
    move-object v1, v2

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    return-object v1

    .line 237
    :cond_2
    return-object v1
.end method

.method private saveCodeFile(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 215
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getScriptFragment(Landroid/view/View;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    move-result-object v0

    .line 216
    .local v0, "scriptFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->copyProjectForUndoOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 218
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->setUndoBrickPosition(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method protected addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V
    .locals 3
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .param p2, "textViewResourceId"    # I

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 2
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 89
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 90
    .local v1, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->addRequiredResources(Ljava/util/Set;)V

    .line 91
    .end local v1    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 104
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 105
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->clone()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 106
    return-object v0
.end method

.method public getBrickFieldFromTextViewId(I)Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 2
    .param p1, "textViewId"    # I

    .line 174
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method

.method public getCustomView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no custom view for the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method

.method public getFormulaMap()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    return-object v0
.end method

.method public getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 3
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible Brick Field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have BrickField."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormulas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/Formula;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTextView(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Landroid/widget/TextView;
    .locals 2
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->view:Landroid/view/View;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

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

    .line 113
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->view:Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, "formulaFieldView":Landroid/widget/TextView;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->clone()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getTrimmedFormulaString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Ljava/lang/Integer;>;"
    .end local v2    # "formulaFieldView":Landroid/widget/TextView;
    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public hasEditableFormulaField()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public highlightTextView(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V
    .locals 4
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 140
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getTextView(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Landroid/widget/TextView;

    move-result-object v0

    .line 142
    .local v0, "formulaTextField":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->view:Landroid/view/View;

    .line 143
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 144
    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    return-void
.end method

.method isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z
    .locals 1
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 166
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->isNumber()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 149
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->saveCodeFile(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public replaceFormulaBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V
    .locals 2
    .param p1, "oldFormulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .param p2, "newFormulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 97
    .local v0, "brickFormula":Lorg/catrobat/catroid/formulaeditor/Formula;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v1, p2, v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v0    # "brickFormula":Lorg/catrobat/catroid/formulaeditor/Formula;
    :cond_0
    return-void
.end method

.method public setClickListeners()V
    .locals 4

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

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

    .line 121
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->view:Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, "formulaFieldView":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Ljava/lang/Integer;>;"
    .end local v2    # "formulaFieldView":Landroid/widget/TextView;
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 3
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .param p2, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible Brick Field: Cannot set BrickField."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 178
    const v0, 0x7f0a01e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 181
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->isNumber()Z

    move-result v2

    const v3, 0x7f100024

    if-eqz v2, :cond_0

    .line 183
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    .line 184
    .local v2, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    new-instance v4, Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v5

    .line 185
    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 186
    .local v4, "scope":Lorg/catrobat/catroid/content/Scope;
    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v5, p2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v5, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v5

    .line 187
    .local v5, "formulaValue":Ljava/lang/Double;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 188
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/catrobat/catroid/utils/Utils;->convertDoubleToPluralInteger(D)I

    move-result v7

    .line 187
    invoke-virtual {v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 190
    .end local v2    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .end local v4    # "scope":Lorg/catrobat/catroid/content/Scope;
    .end local v5    # "formulaValue":Ljava/lang/Double;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Interpretation of formula failed, fallback to quantity \"other\" for \"second(s)\" label."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v2    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0xbb6bc

    .line 197
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getBrickFieldFromTextViewId(I)Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 159
    :goto_0
    return-void
.end method

.method public updateUserDataReference(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;Z)V
    .locals 3
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p4, "renameAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;Z)V"
        }
    .end annotation

    .line 202
    .local p3, "item":Lorg/catrobat/catroid/formulaeditor/UserData;, "Lorg/catrobat/catroid/formulaeditor/UserData<*>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 203
    .local v1, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    if-eqz p4, :cond_0

    .line 204
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;->updateVariableName(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;->updateUserlistName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_0
    instance-of v2, p3, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;->updateVariableName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/formulaeditor/Formula;->updateUserlistName(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v1    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    :goto_1
    goto :goto_0

    .line 212
    :cond_2
    return-void
.end method
