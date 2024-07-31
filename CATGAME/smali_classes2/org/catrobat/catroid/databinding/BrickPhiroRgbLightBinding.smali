.class public final Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;
.super Ljava/lang/Object;
.source "BrickPhiroRgbLightBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickPhiroRgbLedActionBlueEditText:Landroid/widget/TextView;

.field public final brickPhiroRgbLedActionGreenEditText:Landroid/widget/TextView;

.field public final brickPhiroRgbLedActionLabel:Landroid/widget/TextView;

.field public final brickPhiroRgbLedActionRedEditText:Landroid/widget/TextView;

.field public final brickPhiroRgbLedBlueTextView:Landroid/widget/TextView;

.field public final brickPhiroRgbLedGreenTextView:Landroid/widget/TextView;

.field public final brickPhiroRgbLedLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickPhiroRgbLedRedTextView:Landroid/widget/TextView;

.field public final brickPhiroRgbLightSpinner:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickPhiroRgbLedActionBlueEditText"    # Landroid/widget/TextView;
    .param p4, "brickPhiroRgbLedActionGreenEditText"    # Landroid/widget/TextView;
    .param p5, "brickPhiroRgbLedActionLabel"    # Landroid/widget/TextView;
    .param p6, "brickPhiroRgbLedActionRedEditText"    # Landroid/widget/TextView;
    .param p7, "brickPhiroRgbLedBlueTextView"    # Landroid/widget/TextView;
    .param p8, "brickPhiroRgbLedGreenTextView"    # Landroid/widget/TextView;
    .param p9, "brickPhiroRgbLedLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p10, "brickPhiroRgbLedRedTextView"    # Landroid/widget/TextView;
    .param p11, "brickPhiroRgbLightSpinner"    # Landroid/widget/Spinner;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->rootView:Landroid/widget/LinearLayout;

    .line 63
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 64
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedActionBlueEditText:Landroid/widget/TextView;

    .line 65
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedActionGreenEditText:Landroid/widget/TextView;

    .line 66
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedActionLabel:Landroid/widget/TextView;

    .line 67
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedActionRedEditText:Landroid/widget/TextView;

    .line 68
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedBlueTextView:Landroid/widget/TextView;

    .line 69
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedGreenTextView:Landroid/widget/TextView;

    .line 70
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 71
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLedRedTextView:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->brickPhiroRgbLightSpinner:Landroid/widget/Spinner;

    .line 73
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;
    .locals 25
    .param p0, "rootView"    # Landroid/view/View;

    .line 102
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 103
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 104
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_9

    .line 108
    const v1, 0x7f0a0198

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 110
    .local v15, "brickPhiroRgbLedActionBlueEditText":Landroid/widget/TextView;
    if-eqz v15, :cond_8

    .line 114
    const v1, 0x7f0a0199

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 116
    .local v16, "brickPhiroRgbLedActionGreenEditText":Landroid/widget/TextView;
    if-eqz v16, :cond_7

    .line 120
    const v1, 0x7f0a019a

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 122
    .local v17, "brickPhiroRgbLedActionLabel":Landroid/widget/TextView;
    if-eqz v17, :cond_6

    .line 126
    const v1, 0x7f0a019b

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 128
    .local v18, "brickPhiroRgbLedActionRedEditText":Landroid/widget/TextView;
    if-eqz v18, :cond_5

    .line 132
    const v1, 0x7f0a019c

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 134
    .local v19, "brickPhiroRgbLedBlueTextView":Landroid/widget/TextView;
    if-eqz v19, :cond_4

    .line 138
    const v1, 0x7f0a019d

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 140
    .local v20, "brickPhiroRgbLedGreenTextView":Landroid/widget/TextView;
    if-eqz v20, :cond_3

    .line 144
    const v1, 0x7f0a019e

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 146
    .local v21, "brickPhiroRgbLedLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v21, :cond_2

    .line 150
    const v1, 0x7f0a019f

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 152
    .local v22, "brickPhiroRgbLedRedTextView":Landroid/widget/TextView;
    if-eqz v22, :cond_1

    .line 156
    const v1, 0x7f0a01a0

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/Spinner;

    .line 158
    .local v23, "brickPhiroRgbLightSpinner":Landroid/widget/Spinner;
    if-eqz v23, :cond_0

    .line 162
    new-instance v24, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v24

    move-object v5, v2

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    invoke-direct/range {v3 .. v14}, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    return-object v24

    .line 159
    :cond_0
    goto :goto_0

    .line 153
    .end local v23    # "brickPhiroRgbLightSpinner":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 147
    .end local v22    # "brickPhiroRgbLedRedTextView":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 141
    .end local v21    # "brickPhiroRgbLedLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_3
    goto :goto_0

    .line 135
    .end local v20    # "brickPhiroRgbLedGreenTextView":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 129
    .end local v19    # "brickPhiroRgbLedBlueTextView":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 123
    .end local v18    # "brickPhiroRgbLedActionRedEditText":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 117
    .end local v17    # "brickPhiroRgbLedActionLabel":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 111
    .end local v16    # "brickPhiroRgbLedActionGreenEditText":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 105
    .end local v15    # "brickPhiroRgbLedActionBlueEditText":Landroid/widget/TextView;
    :cond_9
    nop

    .line 168
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 89
    const v0, 0x7f0d00ac

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickPhiroRgbLightBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
