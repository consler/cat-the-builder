.class public final Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;
.super Ljava/lang/Object;
.source "BrickRaspiIfBeginIfBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickIfBeginEditText:Landroid/widget/TextView;

.field public final brickRaspiIfBeginLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final ifElsePrototypePunctuation:Landroid/widget/TextView;

.field public final ifElsePrototypePunctuation2:Landroid/widget/TextView;

.field public final ifLabelSecondPart:Landroid/widget/TextView;

.field public final ifPrototypeElse:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickIfBeginEditText"    # Landroid/widget/TextView;
    .param p4, "brickRaspiIfBeginLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p5, "ifElsePrototypePunctuation"    # Landroid/widget/TextView;
    .param p6, "ifElsePrototypePunctuation2"    # Landroid/widget/TextView;
    .param p7, "ifLabelSecondPart"    # Landroid/widget/TextView;
    .param p8, "ifPrototypeElse"    # Landroid/widget/TextView;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->rootView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 51
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->brickIfBeginEditText:Landroid/widget/TextView;

    .line 52
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->brickRaspiIfBeginLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 53
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->ifElsePrototypePunctuation:Landroid/widget/TextView;

    .line 54
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->ifElsePrototypePunctuation2:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->ifLabelSecondPart:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->ifPrototypeElse:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 86
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 87
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 88
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_6

    .line 92
    const v1, 0x7f0a0139

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 94
    .local v12, "brickIfBeginEditText":Landroid/widget/TextView;
    if-eqz v12, :cond_5

    .line 98
    const v1, 0x7f0a01ba

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 100
    .local v13, "brickRaspiIfBeginLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v13, :cond_4

    .line 104
    const v1, 0x7f0a03dd

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 106
    .local v14, "ifElsePrototypePunctuation":Landroid/widget/TextView;
    if-eqz v14, :cond_3

    .line 110
    const v1, 0x7f0a03de

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 112
    .local v15, "ifElsePrototypePunctuation2":Landroid/widget/TextView;
    if-eqz v15, :cond_2

    .line 116
    const v1, 0x7f0a03e0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 118
    .local v16, "ifLabelSecondPart":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 122
    const v1, 0x7f0a03e1

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 124
    .local v17, "ifPrototypeElse":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 128
    new-instance v18, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v18

    .line 125
    :cond_0
    goto :goto_0

    .line 119
    .end local v17    # "ifPrototypeElse":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 113
    .end local v16    # "ifLabelSecondPart":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 107
    .end local v15    # "ifElsePrototypePunctuation2":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 101
    .end local v14    # "ifElsePrototypePunctuation":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 95
    .end local v13    # "brickRaspiIfBeginLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_5
    goto :goto_0

    .line 89
    .end local v12    # "brickIfBeginEditText":Landroid/widget/TextView;
    :cond_6
    nop

    .line 132
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 73
    const v0, 0x7f0d00bc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickRaspiIfBeginIfBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
