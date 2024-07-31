.class public final Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;
.super Ljava/lang/Object;
.source "BrickReplaceItemInUserlistBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickReplaceItemInUserlistAtIndexEditText:Landroid/widget/TextView;

.field public final brickReplaceItemInUserlistLabel:Landroid/widget/TextView;

.field public final brickReplaceItemInUserlistLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickReplaceItemInUserlistTextview:Landroid/widget/TextView;

.field public final brickReplaceItemInUserlistValueEditText:Landroid/widget/TextView;

.field public final brickReplaceItemInUserlistWithValueTextview:Landroid/widget/TextView;

.field public final replaceItemInUserlistSpinner:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickReplaceItemInUserlistAtIndexEditText"    # Landroid/widget/TextView;
    .param p4, "brickReplaceItemInUserlistLabel"    # Landroid/widget/TextView;
    .param p5, "brickReplaceItemInUserlistLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p6, "brickReplaceItemInUserlistTextview"    # Landroid/widget/TextView;
    .param p7, "brickReplaceItemInUserlistValueEditText"    # Landroid/widget/TextView;
    .param p8, "brickReplaceItemInUserlistWithValueTextview"    # Landroid/widget/TextView;
    .param p9, "replaceItemInUserlistSpinner"    # Landroid/widget/Spinner;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->rootView:Landroid/widget/LinearLayout;

    .line 57
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 58
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->brickReplaceItemInUserlistAtIndexEditText:Landroid/widget/TextView;

    .line 59
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->brickReplaceItemInUserlistLabel:Landroid/widget/TextView;

    .line 60
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->brickReplaceItemInUserlistLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 61
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->brickReplaceItemInUserlistTextview:Landroid/widget/TextView;

    .line 62
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->brickReplaceItemInUserlistValueEditText:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->brickReplaceItemInUserlistWithValueTextview:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->replaceItemInUserlistSpinner:Landroid/widget/Spinner;

    .line 65
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 94
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 95
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 96
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_7

    .line 100
    const v1, 0x7f0a01d5

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 102
    .local v13, "brickReplaceItemInUserlistAtIndexEditText":Landroid/widget/TextView;
    if-eqz v13, :cond_6

    .line 106
    const v1, 0x7f0a01d6

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 108
    .local v14, "brickReplaceItemInUserlistLabel":Landroid/widget/TextView;
    if-eqz v14, :cond_5

    .line 112
    const v1, 0x7f0a01d7

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 114
    .local v15, "brickReplaceItemInUserlistLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v15, :cond_4

    .line 118
    const v1, 0x7f0a01d8

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 120
    .local v16, "brickReplaceItemInUserlistTextview":Landroid/widget/TextView;
    if-eqz v16, :cond_3

    .line 124
    const v1, 0x7f0a01d9

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 126
    .local v17, "brickReplaceItemInUserlistValueEditText":Landroid/widget/TextView;
    if-eqz v17, :cond_2

    .line 130
    const v1, 0x7f0a01da

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 132
    .local v18, "brickReplaceItemInUserlistWithValueTextview":Landroid/widget/TextView;
    if-eqz v18, :cond_1

    .line 136
    const v1, 0x7f0a057b

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/Spinner;

    .line 138
    .local v19, "replaceItemInUserlistSpinner":Landroid/widget/Spinner;
    if-eqz v19, :cond_0

    .line 142
    new-instance v20, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;

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

    invoke-direct/range {v3 .. v12}, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    return-object v20

    .line 139
    :cond_0
    goto :goto_0

    .line 133
    .end local v19    # "replaceItemInUserlistSpinner":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 127
    .end local v18    # "brickReplaceItemInUserlistWithValueTextview":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 121
    .end local v17    # "brickReplaceItemInUserlistValueEditText":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 115
    .end local v16    # "brickReplaceItemInUserlistTextview":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 109
    .end local v15    # "brickReplaceItemInUserlistLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_5
    goto :goto_0

    .line 103
    .end local v14    # "brickReplaceItemInUserlistLabel":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 97
    .end local v13    # "brickReplaceItemInUserlistAtIndexEditText":Landroid/widget/TextView;
    :cond_7
    nop

    .line 148
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 81
    const v0, 0x7f0d00c5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickReplaceItemInUserlistBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
