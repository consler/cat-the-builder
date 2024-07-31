.class public final Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;
.super Ljava/lang/Object;
.source "ActivityStandaloneAdvertisingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final description:Landroid/widget/TextView;

.field public final googlePlayStore:Landroid/widget/LinearLayout;

.field public final huaweiAppGallery:Landroid/widget/LinearLayout;

.field public final playStoreLink:Landroid/widget/TextView;

.field public final pocketCodeImage:Landroid/widget/ImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final title:Landroid/widget/TextView;

.field public final websiteLink:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "description"    # Landroid/widget/TextView;
    .param p3, "googlePlayStore"    # Landroid/widget/LinearLayout;
    .param p4, "huaweiAppGallery"    # Landroid/widget/LinearLayout;
    .param p5, "playStoreLink"    # Landroid/widget/TextView;
    .param p6, "pocketCodeImage"    # Landroid/widget/ImageView;
    .param p7, "title"    # Landroid/widget/TextView;
    .param p8, "websiteLink"    # Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 49
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->description:Landroid/widget/TextView;

    .line 50
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->googlePlayStore:Landroid/widget/LinearLayout;

    .line 51
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->huaweiAppGallery:Landroid/widget/LinearLayout;

    .line 52
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->playStoreLink:Landroid/widget/TextView;

    .line 53
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->pocketCodeImage:Landroid/widget/ImageView;

    .line 54
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->title:Landroid/widget/TextView;

    .line 55
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->websiteLink:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 85
    move-object/from16 v0, p0

    const v1, 0x7f0a0339

    .line 86
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    .local v2, "description":Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 91
    const v1, 0x7f0a03cc

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/LinearLayout;

    .line 93
    .local v12, "googlePlayStore":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_5

    .line 97
    const v1, 0x7f0a03d7

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/LinearLayout;

    .line 99
    .local v13, "huaweiAppGallery":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_4

    .line 103
    const v1, 0x7f0a04a9

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 105
    .local v14, "playStoreLink":Landroid/widget/TextView;
    if-eqz v14, :cond_3

    .line 109
    const v1, 0x7f0a04ab

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageView;

    .line 111
    .local v15, "pocketCodeImage":Landroid/widget/ImageView;
    if-eqz v15, :cond_2

    .line 115
    const v1, 0x7f0a0612

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 117
    .local v16, "title":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 121
    const v1, 0x7f0a063d

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 123
    .local v17, "websiteLink":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 127
    new-instance v18, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v18

    .line 124
    :cond_0
    goto :goto_0

    .line 118
    .end local v17    # "websiteLink":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 112
    .end local v16    # "title":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 106
    .end local v15    # "pocketCodeImage":Landroid/widget/ImageView;
    :cond_3
    goto :goto_0

    .line 100
    .end local v14    # "playStoreLink":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 94
    .end local v13    # "huaweiAppGallery":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 88
    .end local v12    # "googlePlayStore":Landroid/widget/LinearLayout;
    :cond_6
    nop

    .line 130
    .end local v2    # "description":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 72
    const v0, 0x7f0d002f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ActivityStandaloneAdvertisingBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
