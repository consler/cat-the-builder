.class public final Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;
.super Ljava/lang/Object;
.source "BrickSetCameraFocusBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickSetCameraFocusHorizontalInput:Landroid/widget/TextView;

.field public final brickSetCameraFocusHorizontalLabel:Landroid/widget/TextView;

.field public final brickSetCameraFocusHorizontalPercent:Landroid/widget/TextView;

.field public final brickSetCameraFocusLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickSetCameraFocusPointLabel:Landroid/widget/TextView;

.field public final brickSetCameraFocusVerticalInput:Landroid/widget/TextView;

.field public final brickSetCameraFocusVerticalLabel:Landroid/widget/TextView;

.field public final brickSetCameraFocusVerticalPercent:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickSetCameraFocusHorizontalInput"    # Landroid/widget/TextView;
    .param p4, "brickSetCameraFocusHorizontalLabel"    # Landroid/widget/TextView;
    .param p5, "brickSetCameraFocusHorizontalPercent"    # Landroid/widget/TextView;
    .param p6, "brickSetCameraFocusLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p7, "brickSetCameraFocusPointLabel"    # Landroid/widget/TextView;
    .param p8, "brickSetCameraFocusVerticalInput"    # Landroid/widget/TextView;
    .param p9, "brickSetCameraFocusVerticalLabel"    # Landroid/widget/TextView;
    .param p10, "brickSetCameraFocusVerticalPercent"    # Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->rootView:Landroid/widget/LinearLayout;

    .line 60
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 61
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusHorizontalInput:Landroid/widget/TextView;

    .line 62
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusHorizontalLabel:Landroid/widget/TextView;

    .line 63
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusHorizontalPercent:Landroid/widget/TextView;

    .line 64
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 65
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusPointLabel:Landroid/widget/TextView;

    .line 66
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusVerticalInput:Landroid/widget/TextView;

    .line 67
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusVerticalLabel:Landroid/widget/TextView;

    .line 68
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->brickSetCameraFocusVerticalPercent:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 98
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 99
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 100
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_8

    .line 104
    const v1, 0x7f0a01fa

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 106
    .local v14, "brickSetCameraFocusHorizontalInput":Landroid/widget/TextView;
    if-eqz v14, :cond_7

    .line 110
    const v1, 0x7f0a01fb

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 112
    .local v15, "brickSetCameraFocusHorizontalLabel":Landroid/widget/TextView;
    if-eqz v15, :cond_6

    .line 116
    const v1, 0x7f0a01fc

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 118
    .local v16, "brickSetCameraFocusHorizontalPercent":Landroid/widget/TextView;
    if-eqz v16, :cond_5

    .line 122
    const v1, 0x7f0a01fd

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 124
    .local v17, "brickSetCameraFocusLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v17, :cond_4

    .line 128
    const v1, 0x7f0a01fe

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 130
    .local v18, "brickSetCameraFocusPointLabel":Landroid/widget/TextView;
    if-eqz v18, :cond_3

    .line 134
    const v1, 0x7f0a01ff

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 136
    .local v19, "brickSetCameraFocusVerticalInput":Landroid/widget/TextView;
    if-eqz v19, :cond_2

    .line 140
    const v1, 0x7f0a0200

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 142
    .local v20, "brickSetCameraFocusVerticalLabel":Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 146
    const v1, 0x7f0a0201

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 148
    .local v21, "brickSetCameraFocusVerticalPercent":Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 152
    new-instance v22, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;

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

    invoke-direct/range {v3 .. v13}, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v22

    .line 149
    :cond_0
    goto :goto_0

    .line 143
    .end local v21    # "brickSetCameraFocusVerticalPercent":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 137
    .end local v20    # "brickSetCameraFocusVerticalLabel":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 131
    .end local v19    # "brickSetCameraFocusVerticalInput":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 125
    .end local v18    # "brickSetCameraFocusPointLabel":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 119
    .end local v17    # "brickSetCameraFocusLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_5
    goto :goto_0

    .line 113
    .end local v16    # "brickSetCameraFocusHorizontalPercent":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 107
    .end local v15    # "brickSetCameraFocusHorizontalLabel":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 101
    .end local v14    # "brickSetCameraFocusHorizontalInput":Landroid/widget/TextView;
    :cond_8
    nop

    .line 158
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 85
    const v0, 0x7f0d00d2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickSetCameraFocusBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
