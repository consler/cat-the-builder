.class public final Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;
.super Ljava/lang/Object;
.source "BrickIfOnEdgeBounceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickIfOnEdgeBounceLabel:Landroid/widget/TextView;

.field public final brickIfOnEdgeBounceLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickIfOnEdgeBounceLabel"    # Landroid/widget/TextView;
    .param p4, "brickIfOnEdgeBounceLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->rootView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 37
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->brickIfOnEdgeBounceLabel:Landroid/widget/TextView;

    .line 38
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->brickIfOnEdgeBounceLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 68
    const v0, 0x7f0a00a9

    .line 69
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 70
    .local v1, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_2

    .line 74
    const v0, 0x7f0a013f

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, "brickIfOnEdgeBounceLabel":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 80
    const v0, 0x7f0a0140

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 82
    .local v3, "brickIfOnEdgeBounceLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v3, :cond_0

    .line 86
    new-instance v4, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;)V

    return-object v4

    .line 83
    :cond_0
    goto :goto_0

    .line 77
    .end local v3    # "brickIfOnEdgeBounceLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "brickIfOnEdgeBounceLabel":Landroid/widget/TextView;
    :cond_2
    nop

    .line 89
    .end local v1    # "brickCheckbox":Landroid/widget/CheckBox;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 55
    const v0, 0x7f0d0089

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickIfOnEdgeBounceBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
