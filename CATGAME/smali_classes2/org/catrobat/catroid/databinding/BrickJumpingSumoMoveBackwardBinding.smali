.class public final Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;
.super Ljava/lang/Object;
.source "BrickJumpingSumoMoveBackwardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickJumpingSumoMoveBackwardEditTextPower:Landroid/widget/TextView;

.field public final brickJumpingSumoMoveBackwardEditTextSecond:Landroid/widget/TextView;

.field public final brickJumpingSumoMoveBackwardLabel:Landroid/widget/TextView;

.field public final brickJumpingSumoMoveBackwardLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickJumpingSumoMoveBackwardSetPercent:Landroid/widget/TextView;

.field public final brickJumpingSumoMoveBackwardSetPower:Landroid/widget/TextView;

.field public final brickJumpingSumoMoveBackwardTextWith:Landroid/widget/TextView;

.field public final brickSecondsLabel:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickJumpingSumoMoveBackwardEditTextPower"    # Landroid/widget/TextView;
    .param p4, "brickJumpingSumoMoveBackwardEditTextSecond"    # Landroid/widget/TextView;
    .param p5, "brickJumpingSumoMoveBackwardLabel"    # Landroid/widget/TextView;
    .param p6, "brickJumpingSumoMoveBackwardLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p7, "brickJumpingSumoMoveBackwardSetPercent"    # Landroid/widget/TextView;
    .param p8, "brickJumpingSumoMoveBackwardSetPower"    # Landroid/widget/TextView;
    .param p9, "brickJumpingSumoMoveBackwardTextWith"    # Landroid/widget/TextView;
    .param p10, "brickSecondsLabel"    # Landroid/widget/TextView;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 60
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickJumpingSumoMoveBackwardEditTextPower:Landroid/widget/TextView;

    .line 61
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickJumpingSumoMoveBackwardEditTextSecond:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickJumpingSumoMoveBackwardLabel:Landroid/widget/TextView;

    .line 63
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickJumpingSumoMoveBackwardLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 64
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickJumpingSumoMoveBackwardSetPercent:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickJumpingSumoMoveBackwardSetPower:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickJumpingSumoMoveBackwardTextWith:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->brickSecondsLabel:Landroid/widget/TextView;

    .line 68
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 97
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 98
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 99
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_8

    .line 103
    const v1, 0x7f0a014e

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 105
    .local v14, "brickJumpingSumoMoveBackwardEditTextPower":Landroid/widget/TextView;
    if-eqz v14, :cond_7

    .line 109
    const v1, 0x7f0a014f

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 111
    .local v15, "brickJumpingSumoMoveBackwardEditTextSecond":Landroid/widget/TextView;
    if-eqz v15, :cond_6

    .line 115
    const v1, 0x7f0a0150

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 117
    .local v16, "brickJumpingSumoMoveBackwardLabel":Landroid/widget/TextView;
    if-eqz v16, :cond_5

    .line 121
    const v1, 0x7f0a0151

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 123
    .local v17, "brickJumpingSumoMoveBackwardLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v17, :cond_4

    .line 127
    const v1, 0x7f0a0152

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 129
    .local v18, "brickJumpingSumoMoveBackwardSetPercent":Landroid/widget/TextView;
    if-eqz v18, :cond_3

    .line 133
    const v1, 0x7f0a0153

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 135
    .local v19, "brickJumpingSumoMoveBackwardSetPower":Landroid/widget/TextView;
    if-eqz v19, :cond_2

    .line 139
    const v1, 0x7f0a0154

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 141
    .local v20, "brickJumpingSumoMoveBackwardTextWith":Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 145
    const v1, 0x7f0a01e9

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 147
    .local v21, "brickSecondsLabel":Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 151
    new-instance v22, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;

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

    invoke-direct/range {v3 .. v13}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v22

    .line 148
    :cond_0
    goto :goto_0

    .line 142
    .end local v21    # "brickSecondsLabel":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 136
    .end local v20    # "brickJumpingSumoMoveBackwardTextWith":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 130
    .end local v19    # "brickJumpingSumoMoveBackwardSetPower":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 124
    .end local v18    # "brickJumpingSumoMoveBackwardSetPercent":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 118
    .end local v17    # "brickJumpingSumoMoveBackwardLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_5
    goto :goto_0

    .line 112
    .end local v16    # "brickJumpingSumoMoveBackwardLabel":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 106
    .end local v15    # "brickJumpingSumoMoveBackwardEditTextSecond":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 100
    .end local v14    # "brickJumpingSumoMoveBackwardEditTextPower":Landroid/widget/TextView;
    :cond_8
    nop

    .line 157
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 84
    const v0, 0x7f0d008f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickJumpingSumoMoveBackwardBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
