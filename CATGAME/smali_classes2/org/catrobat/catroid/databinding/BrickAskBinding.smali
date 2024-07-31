.class public final Lorg/catrobat/catroid/databinding/BrickAskBinding;
.super Ljava/lang/Object;
.source "BrickAskBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickAskLabel:Landroid/widget/TextView;

.field public final brickAskQuestionEditText:Landroid/widget/TextView;

.field public final brickAskSpinner:Landroid/widget/Spinner;

.field public final brickAskStoreLabel:Landroid/widget/TextView;

.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickSetVariableLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickAskLabel"    # Landroid/widget/TextView;
    .param p3, "brickAskQuestionEditText"    # Landroid/widget/TextView;
    .param p4, "brickAskSpinner"    # Landroid/widget/Spinner;
    .param p5, "brickAskStoreLabel"    # Landroid/widget/TextView;
    .param p6, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p7, "brickSetVariableLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->brickAskLabel:Landroid/widget/TextView;

    .line 48
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->brickAskQuestionEditText:Landroid/widget/TextView;

    .line 49
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->brickAskSpinner:Landroid/widget/Spinner;

    .line 50
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->brickAskStoreLabel:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 52
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->brickSetVariableLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickAskBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 82
    move-object/from16 v0, p0

    const v1, 0x7f0a0072

    .line 83
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, "brickAskLabel":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    .line 88
    const v1, 0x7f0a0073

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 90
    .local v11, "brickAskQuestionEditText":Landroid/widget/TextView;
    if-eqz v11, :cond_4

    .line 94
    const v1, 0x7f0a0077

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Spinner;

    .line 96
    .local v12, "brickAskSpinner":Landroid/widget/Spinner;
    if-eqz v12, :cond_3

    .line 100
    const v1, 0x7f0a0078

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 102
    .local v13, "brickAskStoreLabel":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 106
    const v1, 0x7f0a00a9

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/CheckBox;

    .line 108
    .local v14, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v14, :cond_1

    .line 112
    const v1, 0x7f0a0245

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 114
    .local v15, "brickSetVariableLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v15, :cond_0

    .line 118
    new-instance v16, Lorg/catrobat/catroid/databinding/BrickAskBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/databinding/BrickAskBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;)V

    return-object v16

    .line 115
    :cond_0
    goto :goto_0

    .line 109
    .end local v15    # "brickSetVariableLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_1
    goto :goto_0

    .line 103
    .end local v14    # "brickCheckbox":Landroid/widget/CheckBox;
    :cond_2
    goto :goto_0

    .line 97
    .end local v13    # "brickAskStoreLabel":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 91
    .end local v12    # "brickAskSpinner":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 85
    .end local v11    # "brickAskQuestionEditText":Landroid/widget/TextView;
    :cond_5
    nop

    .line 121
    .end local v2    # "brickAskLabel":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickAskBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickAskBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickAskBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickAskBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 69
    const v0, 0x7f0d0037

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickAskBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickAskBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickAskBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickAskBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
