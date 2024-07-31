.class public final Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;
.super Ljava/lang/Object;
.source "ScratchSocialBarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final scratchProjectFavoritesIcon:Landroid/widget/ImageView;

.field public final scratchProjectFavoritesText:Landroid/widget/TextView;

.field public final scratchProjectLovesIcon:Landroid/widget/ImageView;

.field public final scratchProjectLovesText:Landroid/widget/TextView;

.field public final scratchProjectViewsIcon:Landroid/widget/ImageView;

.field public final scratchProjectViewsText:Landroid/widget/TextView;

.field public final scratchShareBar:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "scratchProjectFavoritesIcon"    # Landroid/widget/ImageView;
    .param p3, "scratchProjectFavoritesText"    # Landroid/widget/TextView;
    .param p4, "scratchProjectLovesIcon"    # Landroid/widget/ImageView;
    .param p5, "scratchProjectLovesText"    # Landroid/widget/TextView;
    .param p6, "scratchProjectViewsIcon"    # Landroid/widget/ImageView;
    .param p7, "scratchProjectViewsText"    # Landroid/widget/TextView;
    .param p8, "scratchShareBar"    # Landroid/widget/RelativeLayout;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->scratchProjectFavoritesIcon:Landroid/widget/ImageView;

    .line 50
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->scratchProjectFavoritesText:Landroid/widget/TextView;

    .line 51
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->scratchProjectLovesIcon:Landroid/widget/ImageView;

    .line 52
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->scratchProjectLovesText:Landroid/widget/TextView;

    .line 53
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->scratchProjectViewsIcon:Landroid/widget/ImageView;

    .line 54
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->scratchProjectViewsText:Landroid/widget/TextView;

    .line 55
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->scratchShareBar:Landroid/widget/RelativeLayout;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 85
    move-object/from16 v0, p0

    const v1, 0x7f0a0587

    .line 86
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 87
    .local v2, "scratchProjectFavoritesIcon":Landroid/widget/ImageView;
    if-eqz v2, :cond_5

    .line 91
    const v1, 0x7f0a0588

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 93
    .local v12, "scratchProjectFavoritesText":Landroid/widget/TextView;
    if-eqz v12, :cond_4

    .line 97
    const v1, 0x7f0a0589

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageView;

    .line 99
    .local v13, "scratchProjectLovesIcon":Landroid/widget/ImageView;
    if-eqz v13, :cond_3

    .line 103
    const v1, 0x7f0a058a

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 105
    .local v14, "scratchProjectLovesText":Landroid/widget/TextView;
    if-eqz v14, :cond_2

    .line 109
    const v1, 0x7f0a058b

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageView;

    .line 111
    .local v15, "scratchProjectViewsIcon":Landroid/widget/ImageView;
    if-eqz v15, :cond_1

    .line 115
    const v1, 0x7f0a058c

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 117
    .local v16, "scratchProjectViewsText":Landroid/widget/TextView;
    if-eqz v16, :cond_0

    .line 121
    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 123
    .local v17, "scratchShareBar":Landroid/widget/RelativeLayout;
    new-instance v18, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    return-object v18

    .line 118
    .end local v17    # "scratchShareBar":Landroid/widget/RelativeLayout;
    :cond_0
    goto :goto_0

    .line 112
    .end local v16    # "scratchProjectViewsText":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 106
    .end local v15    # "scratchProjectViewsIcon":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 100
    .end local v14    # "scratchProjectLovesText":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 94
    .end local v13    # "scratchProjectLovesIcon":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 88
    .end local v12    # "scratchProjectFavoritesText":Landroid/widget/TextView;
    :cond_5
    nop

    .line 127
    .end local v2    # "scratchProjectFavoritesIcon":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 72
    const v0, 0x7f0d01cf

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ScratchSocialBarBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
