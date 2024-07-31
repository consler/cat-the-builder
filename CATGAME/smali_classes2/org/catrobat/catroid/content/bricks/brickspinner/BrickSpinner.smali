.class public Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
.super Ljava/lang/Object;
.source "BrickSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;,
        Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/catrobat/catroid/common/Nameable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "TT;>.BrickSpinnerAdapter;"
        }
    .end annotation
.end field

.field private onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private previousItem:Lorg/catrobat/catroid/common/Nameable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private spinner:Landroid/widget/Spinner;

.field private spinnerid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;ILjava/util/List;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "spinnerLayout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/Nameable;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinnerid:Ljava/lang/Integer;

    .line 63
    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3, p4}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;-><init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    .line 65
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "parent"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/Nameable;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    const v0, 0x1090008

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;ILjava/util/List;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinnerid:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    return-object v0
.end method

.method private consolidateSpinnerSelection(I)I
    .locals 3
    .param p1, "position"    # I

    .line 151
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->containsNewOption()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->containsEditOption()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    move v1, v2

    :cond_0
    move p1, v1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    move v1, v2

    :cond_2
    move p1, v1

    goto :goto_0

    .line 159
    :cond_3
    const/4 p1, 0x0

    .line 162
    :cond_4
    :goto_0
    return p1
.end method

.method private getScriptFragment(Landroid/view/View;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 190
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    const/4 v0, 0x0

    .line 191
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz p1, :cond_0

    .line 192
    invoke-static {p1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 194
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 195
    return-object v1

    .line 198
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a03b7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 199
    .local v2, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v3, v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v3, :cond_2

    .line 200
    move-object v1, v2

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    return-object v1

    .line 202
    :cond_2
    return-object v1
.end method

.method private onSelectionChanged(Landroid/view/View;Lorg/catrobat/catroid/common/Nameable;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lorg/catrobat/catroid/common/Nameable;

    .line 100
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->previousItem:Lorg/catrobat/catroid/common/Nameable;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->showUndo(Landroid/view/View;)V

    .line 103
    :cond_0
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->previousItem:Lorg/catrobat/catroid/common/Nameable;

    .line 104
    return-void
.end method

.method private onSelectionSet(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 3
    .param p1, "selectedItem"    # Lorg/catrobat/catroid/common/Nameable;

    .line 166
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/catrobat/catroid/content/bricks/brickspinner/EditOption;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinnerid:Ljava/lang/Integer;

    invoke-interface {p1}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;->onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 173
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinnerid:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;->onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto :goto_1

    .line 168
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinnerid:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;->onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 169
    return-void

    .line 177
    :cond_3
    :goto_1
    return-void
.end method

.method private showUndo(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 180
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->getScriptFragment(Landroid/view/View;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    move-result-object v0

    .line 181
    .local v0, "scriptFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->copyProjectForUndoOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showUndo(Z)V

    .line 183
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/Brick;

    if-eqz v2, :cond_0

    .line 184
    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->setUndoBrickPosition(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    .local p1, "item":Lorg/catrobat/catroid/common/Nameable;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->add(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()Ljava/lang/Object;
    .locals 1

    .line 147
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    .line 82
    .local v0, "item":Lorg/catrobat/catroid/common/Nameable;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/content/bricks/brickspinner/EditOption;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, p2, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onSelectionChanged(Landroid/view/View;Lorg/catrobat/catroid/common/Nameable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinnerid:Ljava/lang/Integer;

    invoke-interface {v0}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;->onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 94
    return-void

    .line 96
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinnerid:Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;->onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 97
    return-void

    .line 87
    :cond_3
    :goto_0
    return-void

    .line 83
    :cond_4
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    .local p1, "onItemSelectedListener":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<TT;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onItemSelectedListener:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    .line 76
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 119
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemName"    # Ljava/lang/String;

    .line 123
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "position":I
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->consolidateSpinnerSelection(I)I

    move-result v0

    .line 128
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 129
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onSelectionSet(Lorg/catrobat/catroid/common/Nameable;)V

    .line 130
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    return-void
.end method

.method public setSelection(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    .local p1, "item":Lorg/catrobat/catroid/common/Nameable;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 137
    .local v0, "position":I
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->consolidateSpinnerSelection(I)I

    move-result v0

    .line 139
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 141
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->adapter:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->onSelectionSet(Lorg/catrobat/catroid/common/Nameable;)V

    .line 142
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setSpinnerFontColor(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .line 206
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 207
    return-void
.end method
