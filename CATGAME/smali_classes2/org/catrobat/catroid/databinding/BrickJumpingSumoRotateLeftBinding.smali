.class public final Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;
.super Ljava/lang/Object;
.source "BrickJumpingSumoRotateLeftBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickJumpingSumoChangeLeftVariableEditText:Landroid/widget/TextView;

.field public final brickJumpingSumoRotateLeftLabel:Landroid/widget/TextView;

.field public final brickJumpingSumoRotateLeftLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickJumpingSumoRotateLeftText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickJumpingSumoChangeLeftVariableEditText"    # Landroid/widget/TextView;
    .param p4, "brickJumpingSumoRotateLeftLabel"    # Landroid/widget/TextView;
    .param p5, "brickJumpingSumoRotateLeftLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p6, "brickJumpingSumoRotateLeftText"    # Landroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 45
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->brickJumpingSumoChangeLeftVariableEditText:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->brickJumpingSumoRotateLeftLabel:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->brickJumpingSumoRotateLeftLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 48
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->brickJumpingSumoRotateLeftText:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    const v0, 0x7f0a00a9

    .line 79
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 80
    .local v1, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_4

    .line 84
    const v0, 0x7f0a0148

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 86
    .local v9, "brickJumpingSumoChangeLeftVariableEditText":Landroid/widget/TextView;
    if-eqz v9, :cond_3

    .line 90
    const v0, 0x7f0a015d

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 92
    .local v10, "brickJumpingSumoRotateLeftLabel":Landroid/widget/TextView;
    if-eqz v10, :cond_2

    .line 96
    const v0, 0x7f0a015e

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 98
    .local v11, "brickJumpingSumoRotateLeftLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v11, :cond_1

    .line 102
    const v0, 0x7f0a015f

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 104
    .local v12, "brickJumpingSumoRotateLeftText":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 108
    new-instance v13, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;)V

    return-object v13

    .line 105
    :cond_0
    goto :goto_0

    .line 99
    .end local v12    # "brickJumpingSumoRotateLeftText":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 93
    .end local v11    # "brickJumpingSumoRotateLeftLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_2
    goto :goto_0

    .line 87
    .end local v10    # "brickJumpingSumoRotateLeftLabel":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 81
    .end local v9    # "brickJumpingSumoChangeLeftVariableEditText":Landroid/widget/TextView;
    :cond_4
    nop

    .line 112
    .end local v1    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    const v0, 0x7f0d0092

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoRotateLeftBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
