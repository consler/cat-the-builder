.class public final Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;
.super Ljava/lang/Object;
.source "BrickChangeTransparencyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickChangeTransparencyBy:Landroid/widget/TextView;

.field public final brickChangeTransparencyEditText:Landroid/widget/TextView;

.field public final brickChangeTransparencyLabel:Landroid/widget/TextView;

.field public final brickChangeTransparencyLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickCheckbox:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickChangeTransparencyBy"    # Landroid/widget/TextView;
    .param p3, "brickChangeTransparencyEditText"    # Landroid/widget/TextView;
    .param p4, "brickChangeTransparencyLabel"    # Landroid/widget/TextView;
    .param p5, "brickChangeTransparencyLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p6, "brickCheckbox"    # Landroid/widget/CheckBox;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->brickChangeTransparencyBy:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->brickChangeTransparencyEditText:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->brickChangeTransparencyLabel:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->brickChangeTransparencyLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 48
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    const v0, 0x7f0a0098

    .line 79
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "brickChangeTransparencyBy":Landroid/widget/TextView;
    if-eqz v1, :cond_4

    .line 84
    const v0, 0x7f0a0099

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 86
    .local v9, "brickChangeTransparencyEditText":Landroid/widget/TextView;
    if-eqz v9, :cond_3

    .line 90
    const v0, 0x7f0a009a

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 92
    .local v10, "brickChangeTransparencyLabel":Landroid/widget/TextView;
    if-eqz v10, :cond_2

    .line 96
    const v0, 0x7f0a009b

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 98
    .local v11, "brickChangeTransparencyLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v11, :cond_1

    .line 102
    const v0, 0x7f0a00a9

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/CheckBox;

    .line 104
    .local v12, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v12, :cond_0

    .line 108
    new-instance v13, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/CheckBox;)V

    return-object v13

    .line 105
    :cond_0
    goto :goto_0

    .line 99
    .end local v12    # "brickCheckbox":Landroid/widget/CheckBox;
    :cond_1
    goto :goto_0

    .line 93
    .end local v11    # "brickChangeTransparencyLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_2
    goto :goto_0

    .line 87
    .end local v10    # "brickChangeTransparencyLabel":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 81
    .end local v9    # "brickChangeTransparencyEditText":Landroid/widget/TextView;
    :cond_4
    nop

    .line 112
    .end local v1    # "brickChangeTransparencyBy":Landroid/widget/TextView;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    const v0, 0x7f0d0057

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickChangeTransparencyBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
