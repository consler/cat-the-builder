.class public final Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;
.super Ljava/lang/Object;
.source "ActivityRecyclerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomBar:Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

.field public final fragmentContainer:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toolbar:Lorg/catrobat/catroid/databinding/ToolbarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;Landroid/widget/FrameLayout;Lorg/catrobat/catroid/databinding/ToolbarBinding;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "bottomBar"    # Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    .param p3, "fragmentContainer"    # Landroid/widget/FrameLayout;
    .param p4, "toolbar"    # Lorg/catrobat/catroid/databinding/ToolbarBinding;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->bottomBar:Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

    .line 35
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 36
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->toolbar:Lorg/catrobat/catroid/databinding/ToolbarBinding;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    const v0, 0x7f0a0061

    .line 67
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "bottomBar":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 71
    invoke-static {v1}, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

    move-result-object v2

    .line 73
    .local v2, "binding_bottomBar":Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    const v0, 0x7f0a03b7

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 75
    .local v3, "fragmentContainer":Landroid/widget/FrameLayout;
    if-eqz v3, :cond_1

    .line 79
    const v0, 0x7f0a0617

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, "toolbar":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 84
    invoke-static {v4}, Lorg/catrobat/catroid/databinding/ToolbarBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ToolbarBinding;

    move-result-object v5

    .line 86
    .local v5, "binding_toolbar":Lorg/catrobat/catroid/databinding/ToolbarBinding;
    new-instance v6, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;

    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-direct {v6, v7, v2, v3, v5}, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;-><init>(Landroid/widget/LinearLayout;Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;Landroid/widget/FrameLayout;Lorg/catrobat/catroid/databinding/ToolbarBinding;)V

    return-object v6

    .line 82
    .end local v5    # "binding_toolbar":Lorg/catrobat/catroid/databinding/ToolbarBinding;
    :cond_0
    goto :goto_0

    .line 76
    .end local v4    # "toolbar":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "binding_bottomBar":Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    .end local v3    # "fragmentContainer":Landroid/widget/FrameLayout;
    :cond_2
    nop

    .line 89
    .end local v1    # "bottomBar":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    const v0, 0x7f0d0027

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ActivityRecyclerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
