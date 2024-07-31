.class public final Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;
.super Ljava/lang/Object;
.source "BrickDroneMoveForwardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickDroneMoveForwardEditTextPower:Landroid/widget/TextView;

.field public final brickDroneMoveForwardEditTextSecond:Landroid/widget/TextView;

.field public final brickDroneMoveForwardLabel:Landroid/widget/TextView;

.field public final brickDroneMoveForwardLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickDroneMoveForwardPercent:Landroid/widget/TextView;

.field public final brickDroneMoveForwardPower:Landroid/widget/TextView;

.field public final brickDroneMoveForwardTextWith:Landroid/widget/TextView;

.field public final brickSecondsLabel:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickDroneMoveForwardEditTextPower"    # Landroid/widget/TextView;
    .param p4, "brickDroneMoveForwardEditTextSecond"    # Landroid/widget/TextView;
    .param p5, "brickDroneMoveForwardLabel"    # Landroid/widget/TextView;
    .param p6, "brickDroneMoveForwardLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p7, "brickDroneMoveForwardPercent"    # Landroid/widget/TextView;
    .param p8, "brickDroneMoveForwardPower"    # Landroid/widget/TextView;
    .param p9, "brickDroneMoveForwardTextWith"    # Landroid/widget/TextView;
    .param p10, "brickSecondsLabel"    # Landroid/widget/TextView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 59
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickDroneMoveForwardEditTextPower:Landroid/widget/TextView;

    .line 60
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickDroneMoveForwardEditTextSecond:Landroid/widget/TextView;

    .line 61
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickDroneMoveForwardLabel:Landroid/widget/TextView;

    .line 62
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickDroneMoveForwardLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 63
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickDroneMoveForwardPercent:Landroid/widget/TextView;

    .line 64
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickDroneMoveForwardPower:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickDroneMoveForwardTextWith:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->brickSecondsLabel:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 96
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 97
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 98
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_8

    .line 102
    const v1, 0x7f0a00d2

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 104
    .local v14, "brickDroneMoveForwardEditTextPower":Landroid/widget/TextView;
    if-eqz v14, :cond_7

    .line 108
    const v1, 0x7f0a00d3

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 110
    .local v15, "brickDroneMoveForwardEditTextSecond":Landroid/widget/TextView;
    if-eqz v15, :cond_6

    .line 114
    const v1, 0x7f0a00d4

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 116
    .local v16, "brickDroneMoveForwardLabel":Landroid/widget/TextView;
    if-eqz v16, :cond_5

    .line 120
    const v1, 0x7f0a00d5

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 122
    .local v17, "brickDroneMoveForwardLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v17, :cond_4

    .line 126
    const v1, 0x7f0a00d6

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 128
    .local v18, "brickDroneMoveForwardPercent":Landroid/widget/TextView;
    if-eqz v18, :cond_3

    .line 132
    const v1, 0x7f0a00d7

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 134
    .local v19, "brickDroneMoveForwardPower":Landroid/widget/TextView;
    if-eqz v19, :cond_2

    .line 138
    const v1, 0x7f0a00d8

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 140
    .local v20, "brickDroneMoveForwardTextWith":Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 144
    const v1, 0x7f0a01e9

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 146
    .local v21, "brickSecondsLabel":Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 150
    new-instance v22, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v22

    .line 147
    :cond_0
    goto :goto_0

    .line 141
    .end local v21    # "brickSecondsLabel":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 135
    .end local v20    # "brickDroneMoveForwardTextWith":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 129
    .end local v19    # "brickDroneMoveForwardPower":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 123
    .end local v18    # "brickDroneMoveForwardPercent":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 117
    .end local v17    # "brickDroneMoveForwardLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_5
    goto :goto_0

    .line 111
    .end local v16    # "brickDroneMoveForwardLabel":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 105
    .end local v15    # "brickDroneMoveForwardEditTextSecond":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 99
    .end local v14    # "brickDroneMoveForwardEditTextPower":Landroid/widget/TextView;
    :cond_8
    nop

    .line 155
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 83
    const v0, 0x7f0d0069

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveForwardBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
