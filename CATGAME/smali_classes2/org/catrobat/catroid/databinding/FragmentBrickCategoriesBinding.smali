.class public final Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;
.super Ljava/lang/Object;
.source "FragmentBrickCategoriesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCategoryList:Landroid/widget/ListView;

.field private final rootView:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ListView;
    .param p2, "brickCategoryList"    # Landroid/widget/ListView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;->rootView:Landroid/widget/ListView;

    .line 25
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;->brickCategoryList:Landroid/widget/ListView;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 51
    if-eqz p0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Landroid/widget/ListView;

    .line 57
    .local v0, "brickCategoryList":Landroid/widget/ListView;
    new-instance v1, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/ListView;

    invoke-direct {v1, v2, v0}, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;-><init>(Landroid/widget/ListView;Landroid/widget/ListView;)V

    return-object v1

    .line 52
    .end local v0    # "brickCategoryList":Landroid/widget/ListView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 42
    const v0, 0x7f0d015d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;->getRoot()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ListView;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FragmentBrickCategoriesBinding;->rootView:Landroid/widget/ListView;

    return-object v0
.end method
