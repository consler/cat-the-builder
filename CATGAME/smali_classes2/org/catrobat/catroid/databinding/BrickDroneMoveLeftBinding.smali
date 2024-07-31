.class public final Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;
.super Ljava/lang/Object;
.source "BrickDroneMoveLeftBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickDroneMoveLeftEditTextPower:Landroid/widget/TextView;

.field public final brickDroneMoveLeftEditTextSecond:Landroid/widget/TextView;

.field public final brickDroneMoveLeftLabel:Landroid/widget/TextView;

.field public final brickDroneMoveLeftLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickDroneMoveLeftPercent:Landroid/widget/TextView;

.field public final brickDroneMoveLeftPower:Landroid/widget/TextView;

.field public final brickDroneMoveLeftTextWith:Landroid/widget/TextView;

.field public final brickSecondsLabel:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickDroneMoveLeftEditTextPower"    # Landroid/widget/TextView;
    .param p4, "brickDroneMoveLeftEditTextSecond"    # Landroid/widget/TextView;
    .param p5, "brickDroneMoveLeftLabel"    # Landroid/widget/TextView;
    .param p6, "brickDroneMoveLeftLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p7, "brickDroneMoveLeftPercent"    # Landroid/widget/TextView;
    .param p8, "brickDroneMoveLeftPower"    # Landroid/widget/TextView;
    .param p9, "brickDroneMoveLeftTextWith"    # Landroid/widget/TextView;
    .param p10, "brickSecondsLabel"    # Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->rootView:Landroid/widget/LinearLayout;

    .line 57
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 58
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickDroneMoveLeftEditTextPower:Landroid/widget/TextView;

    .line 59
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickDroneMoveLeftEditTextSecond:Landroid/widget/TextView;

    .line 60
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickDroneMoveLeftLabel:Landroid/widget/TextView;

    .line 61
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickDroneMoveLeftLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 62
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickDroneMoveLeftPercent:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickDroneMoveLeftPower:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickDroneMoveLeftTextWith:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->brickSecondsLabel:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 95
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 96
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 97
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_8

    .line 101
    const v1, 0x7f0a00d9

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 103
    .local v14, "brickDroneMoveLeftEditTextPower":Landroid/widget/TextView;
    if-eqz v14, :cond_7

    .line 107
    const v1, 0x7f0a00da

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 109
    .local v15, "brickDroneMoveLeftEditTextSecond":Landroid/widget/TextView;
    if-eqz v15, :cond_6

    .line 113
    const v1, 0x7f0a00db

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 115
    .local v16, "brickDroneMoveLeftLabel":Landroid/widget/TextView;
    if-eqz v16, :cond_5

    .line 119
    const v1, 0x7f0a00dc

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 121
    .local v17, "brickDroneMoveLeftLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v17, :cond_4

    .line 125
    const v1, 0x7f0a00dd

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 127
    .local v18, "brickDroneMoveLeftPercent":Landroid/widget/TextView;
    if-eqz v18, :cond_3

    .line 131
    const v1, 0x7f0a00de

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 133
    .local v19, "brickDroneMoveLeftPower":Landroid/widget/TextView;
    if-eqz v19, :cond_2

    .line 137
    const v1, 0x7f0a00df

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 139
    .local v20, "brickDroneMoveLeftTextWith":Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 143
    const v1, 0x7f0a01e9

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 145
    .local v21, "brickSecondsLabel":Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 149
    new-instance v22, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;

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

    invoke-direct/range {v3 .. v13}, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v22

    .line 146
    :cond_0
    goto :goto_0

    .line 140
    .end local v21    # "brickSecondsLabel":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 134
    .end local v20    # "brickDroneMoveLeftTextWith":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 128
    .end local v19    # "brickDroneMoveLeftPower":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 122
    .end local v18    # "brickDroneMoveLeftPercent":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 116
    .end local v17    # "brickDroneMoveLeftLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_5
    goto :goto_0

    .line 110
    .end local v16    # "brickDroneMoveLeftLabel":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 104
    .end local v15    # "brickDroneMoveLeftEditTextSecond":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 98
    .end local v14    # "brickDroneMoveLeftEditTextPower":Landroid/widget/TextView;
    :cond_8
    nop

    .line 154
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 82
    const v0, 0x7f0d006a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickDroneMoveLeftBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
