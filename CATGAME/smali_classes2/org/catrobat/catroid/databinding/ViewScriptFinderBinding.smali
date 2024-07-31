.class public final Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;
.super Ljava/lang/Object;
.source "ViewScriptFinderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final close:Landroid/widget/ImageView;

.field public final find:Landroid/widget/ImageView;

.field public final findNext:Landroid/widget/ImageView;

.field public final findPrevious:Landroid/widget/ImageView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/view/View;

.field public final sceneAndSpriteName:Landroid/widget/TextView;

.field public final searchBar:Landroid/widget/EditText;

.field public final searchPositionIndicator:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "close"    # Landroid/widget/ImageView;
    .param p3, "find"    # Landroid/widget/ImageView;
    .param p4, "findNext"    # Landroid/widget/ImageView;
    .param p5, "findPrevious"    # Landroid/widget/ImageView;
    .param p6, "progressBar"    # Landroid/widget/ProgressBar;
    .param p7, "sceneAndSpriteName"    # Landroid/widget/TextView;
    .param p8, "searchBar"    # Landroid/widget/EditText;
    .param p9, "searchPositionIndicator"    # Landroid/widget/TextView;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->rootView:Landroid/view/View;

    .line 51
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->close:Landroid/widget/ImageView;

    .line 52
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->find:Landroid/widget/ImageView;

    .line 53
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->findNext:Landroid/widget/ImageView;

    .line 54
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->findPrevious:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 56
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->sceneAndSpriteName:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->searchBar:Landroid/widget/EditText;

    .line 58
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->searchPositionIndicator:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 83
    move-object/from16 v10, p0

    const v0, 0x7f0a02ff

    .line 84
    .local v0, "id":I
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    .line 85
    .local v11, "close":Landroid/widget/ImageView;
    if-eqz v11, :cond_7

    .line 89
    const v0, 0x7f0a0388

    .line 90
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    .line 91
    .local v12, "find":Landroid/widget/ImageView;
    if-eqz v12, :cond_6

    .line 95
    const v0, 0x7f0a0389

    .line 96
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    .line 97
    .local v13, "findNext":Landroid/widget/ImageView;
    if-eqz v13, :cond_5

    .line 101
    const v0, 0x7f0a038a

    .line 102
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/ImageView;

    .line 103
    .local v14, "findPrevious":Landroid/widget/ImageView;
    if-eqz v14, :cond_4

    .line 107
    const v0, 0x7f0a054c

    .line 108
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/ProgressBar;

    .line 109
    .local v15, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v15, :cond_3

    .line 113
    const v0, 0x7f0a0586

    .line 114
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    .line 115
    .local v16, "sceneAndSpriteName":Landroid/widget/TextView;
    if-eqz v16, :cond_2

    .line 119
    const v0, 0x7f0a0599

    .line 120
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/EditText;

    .line 121
    .local v17, "searchBar":Landroid/widget/EditText;
    if-eqz v17, :cond_1

    .line 125
    const v9, 0x7f0a05a0

    .line 126
    .end local v0    # "id":I
    .local v9, "id":I
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    .line 127
    .local v18, "searchPositionIndicator":Landroid/widget/TextView;
    if-eqz v18, :cond_0

    .line 131
    new-instance v19, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v20, v9

    .end local v9    # "id":I
    .local v20, "id":I
    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v19

    .line 128
    .end local v20    # "id":I
    .restart local v9    # "id":I
    :cond_0
    move/from16 v20, v9

    .end local v9    # "id":I
    .restart local v20    # "id":I
    move/from16 v0, v20

    goto :goto_0

    .line 122
    .end local v18    # "searchPositionIndicator":Landroid/widget/TextView;
    .end local v20    # "id":I
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 116
    .end local v17    # "searchBar":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 110
    .end local v16    # "sceneAndSpriteName":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 104
    .end local v15    # "progressBar":Landroid/widget/ProgressBar;
    :cond_4
    goto :goto_0

    .line 98
    .end local v14    # "findPrevious":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 92
    .end local v13    # "findNext":Landroid/widget/ImageView;
    :cond_6
    goto :goto_0

    .line 86
    .end local v12    # "find":Landroid/widget/ImageView;
    :cond_7
    nop

    .line 134
    .end local v11    # "close":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 70
    if-eqz p1, :cond_0

    .line 73
    const v0, 0x7f0d01f3

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    invoke-static {p1}, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
