.class public final Lorg/catrobat/catroid/databinding/ToolbarBinding;
.super Ljava/lang/Object;
.source "ToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/appcompat/widget/Toolbar;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/appcompat/widget/Toolbar;
    .param p2, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ToolbarBinding;->rootView:Landroidx/appcompat/widget/Toolbar;

    .line 24
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ToolbarBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 25
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ToolbarBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 50
    if-eqz p0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 56
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    new-instance v1, Lorg/catrobat/catroid/databinding/ToolbarBinding;

    move-object v2, p0

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v1, v2, v0}, Lorg/catrobat/catroid/databinding/ToolbarBinding;-><init>(Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/Toolbar;)V

    return-object v1

    .line 51
    .end local v0    # "toolbar":Landroidx/appcompat/widget/Toolbar;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ToolbarBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ToolbarBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ToolbarBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 41
    const v0, 0x7f0d01e3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ToolbarBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ToolbarBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ToolbarBinding;->getRoot()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ToolbarBinding;->rootView:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method
