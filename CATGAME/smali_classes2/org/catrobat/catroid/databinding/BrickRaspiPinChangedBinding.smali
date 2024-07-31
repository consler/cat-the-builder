.class public final Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;
.super Ljava/lang/Object;
.source "BrickRaspiPinChangedBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickRaspiWhenLabelSecondPart:Landroid/widget/TextView;

.field public final brickRaspiWhenLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickRaspiWhenPinspinner:Landroid/widget/Spinner;

.field public final brickRaspiWhenValuespinner:Landroid/widget/Spinner;

.field public final raspiWhenLabel:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickRaspiWhenLabelSecondPart"    # Landroid/widget/TextView;
    .param p4, "brickRaspiWhenLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p5, "brickRaspiWhenPinspinner"    # Landroid/widget/Spinner;
    .param p6, "brickRaspiWhenValuespinner"    # Landroid/widget/Spinner;
    .param p7, "raspiWhenLabel"    # Landroid/widget/TextView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 48
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->brickRaspiWhenLabelSecondPart:Landroid/widget/TextView;

    .line 49
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->brickRaspiWhenLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 50
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->brickRaspiWhenPinspinner:Landroid/widget/Spinner;

    .line 51
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->brickRaspiWhenValuespinner:Landroid/widget/Spinner;

    .line 52
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->raspiWhenLabel:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 82
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 83
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 84
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_5

    .line 88
    const v1, 0x7f0a01c2

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 90
    .local v11, "brickRaspiWhenLabelSecondPart":Landroid/widget/TextView;
    if-eqz v11, :cond_4

    .line 94
    const v1, 0x7f0a01c3

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 96
    .local v12, "brickRaspiWhenLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v12, :cond_3

    .line 100
    const v1, 0x7f0a01c4

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/Spinner;

    .line 102
    .local v13, "brickRaspiWhenPinspinner":Landroid/widget/Spinner;
    if-eqz v13, :cond_2

    .line 106
    const v1, 0x7f0a01c5

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Spinner;

    .line 108
    .local v14, "brickRaspiWhenValuespinner":Landroid/widget/Spinner;
    if-eqz v14, :cond_1

    .line 112
    const v1, 0x7f0a0569

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 114
    .local v15, "raspiWhenLabel":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 118
    new-instance v16, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    return-object v16

    .line 115
    :cond_0
    goto :goto_0

    .line 109
    .end local v15    # "raspiWhenLabel":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 103
    .end local v14    # "brickRaspiWhenValuespinner":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 97
    .end local v13    # "brickRaspiWhenPinspinner":Landroid/widget/Spinner;
    :cond_3
    goto :goto_0

    .line 91
    .end local v12    # "brickRaspiWhenLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_4
    goto :goto_0

    .line 85
    .end local v11    # "brickRaspiWhenLabelSecondPart":Landroid/widget/TextView;
    :cond_5
    nop

    .line 122
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 69
    const v0, 0x7f0d00bd

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickRaspiPinChangedBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
