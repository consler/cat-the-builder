.class public final Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;
.super Ljava/lang/Object;
.source "BrickWhenClonedBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickWhenClonedLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickWhenClonedLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;->rootView:Landroid/widget/LinearLayout;

    .line 31
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 32
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;->brickWhenClonedLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 33
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 62
    const v0, 0x7f0a00a9

    .line 63
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 64
    .local v1, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_1

    .line 68
    const v0, 0x7f0a02b8

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 70
    .local v2, "brickWhenClonedLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v2, :cond_0

    .line 74
    new-instance v3, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1, v2}, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;)V

    return-object v3

    .line 71
    :cond_0
    goto :goto_0

    .line 65
    .end local v2    # "brickWhenClonedLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_1
    nop

    .line 77
    .end local v1    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 49
    const v0, 0x7f0d0107

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickWhenClonedBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
