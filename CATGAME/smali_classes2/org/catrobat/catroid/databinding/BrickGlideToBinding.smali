.class public final Lorg/catrobat/catroid/databinding/BrickGlideToBinding;
.super Ljava/lang/Object;
.source "BrickGlideToBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickGlideToEditTextDuration:Landroid/widget/TextView;

.field public final brickGlideToEditTextX:Landroid/widget/TextView;

.field public final brickGlideToEditTextY:Landroid/widget/TextView;

.field public final brickGlideToLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickGlideToX:Landroid/widget/TextView;

.field public final brickGlideToY:Landroid/widget/TextView;

.field public final brickSecondsLabel:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickGlideToEditTextDuration"    # Landroid/widget/TextView;
    .param p4, "brickGlideToEditTextX"    # Landroid/widget/TextView;
    .param p5, "brickGlideToEditTextY"    # Landroid/widget/TextView;
    .param p6, "brickGlideToLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p7, "brickGlideToX"    # Landroid/widget/TextView;
    .param p8, "brickGlideToY"    # Landroid/widget/TextView;
    .param p9, "brickSecondsLabel"    # Landroid/widget/TextView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->rootView:Landroid/widget/LinearLayout;

    .line 53
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 54
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickGlideToEditTextDuration:Landroid/widget/TextView;

    .line 55
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickGlideToEditTextX:Landroid/widget/TextView;

    .line 56
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickGlideToEditTextY:Landroid/widget/TextView;

    .line 57
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickGlideToLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 58
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickGlideToX:Landroid/widget/TextView;

    .line 59
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickGlideToY:Landroid/widget/TextView;

    .line 60
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->brickSecondsLabel:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickGlideToBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 90
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 91
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 92
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_7

    .line 96
    const v1, 0x7f0a0126

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 98
    .local v13, "brickGlideToEditTextDuration":Landroid/widget/TextView;
    if-eqz v13, :cond_6

    .line 102
    const v1, 0x7f0a0127

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 104
    .local v14, "brickGlideToEditTextX":Landroid/widget/TextView;
    if-eqz v14, :cond_5

    .line 108
    const v1, 0x7f0a0128

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 110
    .local v15, "brickGlideToEditTextY":Landroid/widget/TextView;
    if-eqz v15, :cond_4

    .line 114
    const v1, 0x7f0a0129

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 116
    .local v16, "brickGlideToLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v16, :cond_3

    .line 120
    const v1, 0x7f0a012a

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 122
    .local v17, "brickGlideToX":Landroid/widget/TextView;
    if-eqz v17, :cond_2

    .line 126
    const v1, 0x7f0a012b

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 128
    .local v18, "brickGlideToY":Landroid/widget/TextView;
    if-eqz v18, :cond_1

    .line 132
    const v1, 0x7f0a01e9

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 134
    .local v19, "brickSecondsLabel":Landroid/widget/TextView;
    if-eqz v19, :cond_0

    .line 138
    new-instance v20, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v20

    .line 135
    :cond_0
    goto :goto_0

    .line 129
    .end local v19    # "brickSecondsLabel":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 123
    .end local v18    # "brickGlideToY":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 117
    .end local v17    # "brickGlideToX":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 111
    .end local v16    # "brickGlideToLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_4
    goto :goto_0

    .line 105
    .end local v15    # "brickGlideToEditTextY":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 99
    .end local v14    # "brickGlideToEditTextX":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 93
    .end local v13    # "brickGlideToEditTextDuration":Landroid/widget/TextView;
    :cond_7
    nop

    .line 142
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickGlideToBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickGlideToBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickGlideToBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 77
    const v0, 0x7f0d0080

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickGlideToBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickGlideToBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
