.class public final Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;
.super Ljava/lang/Object;
.source "ActivityScratchProjectDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final convertButton:Landroid/widget/Button;

.field public final creditsTitleView:Landroid/widget/TextView;

.field public final creditsView:Landroid/widget/TextView;

.field public final dateModifiedView:Landroid/widget/TextView;

.field public final dateSharedView:Landroid/widget/TextView;

.field public final datesView:Landroid/widget/RelativeLayout;

.field public final instructionsView:Landroid/widget/TextView;

.field public final ownerView:Landroid/widget/TextView;

.field public final privacyWarning:Landroid/widget/TextView;

.field public final projectDetailsLayout:Landroid/widget/LinearLayout;

.field public final projectImageView:Landroid/widget/ImageView;

.field public final projectTitleView:Landroid/widget/TextView;

.field public final recyclerViewRemixes:Landroidx/recyclerview/widget/RecyclerView;

.field public final remixesTitleView:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final toolbar:Lorg/catrobat/catroid/databinding/ToolbarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lorg/catrobat/catroid/databinding/ToolbarBinding;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "convertButton"    # Landroid/widget/Button;
    .param p3, "creditsTitleView"    # Landroid/widget/TextView;
    .param p4, "creditsView"    # Landroid/widget/TextView;
    .param p5, "dateModifiedView"    # Landroid/widget/TextView;
    .param p6, "dateSharedView"    # Landroid/widget/TextView;
    .param p7, "datesView"    # Landroid/widget/RelativeLayout;
    .param p8, "instructionsView"    # Landroid/widget/TextView;
    .param p9, "ownerView"    # Landroid/widget/TextView;
    .param p10, "privacyWarning"    # Landroid/widget/TextView;
    .param p11, "projectDetailsLayout"    # Landroid/widget/LinearLayout;
    .param p12, "projectImageView"    # Landroid/widget/ImageView;
    .param p13, "projectTitleView"    # Landroid/widget/TextView;
    .param p14, "recyclerViewRemixes"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p15, "remixesTitleView"    # Landroid/widget/TextView;
    .param p16, "toolbar"    # Lorg/catrobat/catroid/databinding/ToolbarBinding;

    .line 78
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 80
    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->convertButton:Landroid/widget/Button;

    .line 81
    move-object/from16 v3, p3

    iput-object v3, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->creditsTitleView:Landroid/widget/TextView;

    .line 82
    move-object/from16 v4, p4

    iput-object v4, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->creditsView:Landroid/widget/TextView;

    .line 83
    move-object/from16 v5, p5

    iput-object v5, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->dateModifiedView:Landroid/widget/TextView;

    .line 84
    move-object/from16 v6, p6

    iput-object v6, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->dateSharedView:Landroid/widget/TextView;

    .line 85
    move-object/from16 v7, p7

    iput-object v7, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->datesView:Landroid/widget/RelativeLayout;

    .line 86
    move-object/from16 v8, p8

    iput-object v8, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->instructionsView:Landroid/widget/TextView;

    .line 87
    move-object/from16 v9, p9

    iput-object v9, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->ownerView:Landroid/widget/TextView;

    .line 88
    move-object/from16 v10, p10

    iput-object v10, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->privacyWarning:Landroid/widget/TextView;

    .line 89
    move-object/from16 v11, p11

    iput-object v11, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->projectDetailsLayout:Landroid/widget/LinearLayout;

    .line 90
    move-object/from16 v12, p12

    iput-object v12, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->projectImageView:Landroid/widget/ImageView;

    .line 91
    move-object/from16 v13, p13

    iput-object v13, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->projectTitleView:Landroid/widget/TextView;

    .line 92
    move-object/from16 v14, p14

    iput-object v14, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->recyclerViewRemixes:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    move-object/from16 v15, p15

    iput-object v15, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->remixesTitleView:Landroid/widget/TextView;

    .line 94
    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->toolbar:Lorg/catrobat/catroid/databinding/ToolbarBinding;

    .line 95
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;
    .locals 36
    .param p0, "rootView"    # Landroid/view/View;

    .line 124
    move-object/from16 v0, p0

    const v1, 0x7f0a0325

    .line 125
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 126
    .local v2, "convertButton":Landroid/widget/Button;
    if-eqz v2, :cond_e

    .line 130
    const v1, 0x7f0a0328

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 132
    .local v20, "creditsTitleView":Landroid/widget/TextView;
    if-eqz v20, :cond_d

    .line 136
    const v1, 0x7f0a0329

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 138
    .local v21, "creditsView":Landroid/widget/TextView;
    if-eqz v21, :cond_c

    .line 142
    const v1, 0x7f0a0330

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 144
    .local v22, "dateModifiedView":Landroid/widget/TextView;
    if-eqz v22, :cond_b

    .line 148
    const v1, 0x7f0a0332

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 150
    .local v23, "dateSharedView":Landroid/widget/TextView;
    if-eqz v23, :cond_a

    .line 154
    const v1, 0x7f0a0333

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 156
    .local v24, "datesView":Landroid/widget/RelativeLayout;
    if-eqz v24, :cond_9

    .line 160
    const v1, 0x7f0a03f2

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 162
    .local v25, "instructionsView":Landroid/widget/TextView;
    if-eqz v25, :cond_8

    .line 166
    const v1, 0x7f0a049d

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 168
    .local v26, "ownerView":Landroid/widget/TextView;
    if-eqz v26, :cond_7

    .line 172
    const v1, 0x7f0a0549

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 174
    .local v27, "privacyWarning":Landroid/widget/TextView;
    if-eqz v27, :cond_6

    .line 178
    const v1, 0x7f0a0551

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/LinearLayout;

    .line 180
    .local v28, "projectDetailsLayout":Landroid/widget/LinearLayout;
    if-eqz v28, :cond_5

    .line 184
    const v1, 0x7f0a0552

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/ImageView;

    .line 186
    .local v29, "projectImageView":Landroid/widget/ImageView;
    if-eqz v29, :cond_4

    .line 190
    const v1, 0x7f0a0564

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    .line 192
    .local v30, "projectTitleView":Landroid/widget/TextView;
    if-eqz v30, :cond_3

    .line 196
    const v1, 0x7f0a0571

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .local v31, "recyclerViewRemixes":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v31, :cond_2

    .line 202
    const v1, 0x7f0a0576

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/widget/TextView;

    .line 204
    .local v32, "remixesTitleView":Landroid/widget/TextView;
    if-eqz v32, :cond_1

    .line 208
    const v1, 0x7f0a0617

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 210
    .local v33, "toolbar":Landroid/view/View;
    if-eqz v33, :cond_0

    .line 213
    invoke-static/range {v33 .. v33}, Lorg/catrobat/catroid/databinding/ToolbarBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ToolbarBinding;

    move-result-object v34

    .local v34, "binding_toolbar":Lorg/catrobat/catroid/databinding/ToolbarBinding;
    move-object/from16 v19, v34

    .line 215
    new-instance v35, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;

    move-object/from16 v3, v35

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v5, v2

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    move-object/from16 v18, v32

    invoke-direct/range {v3 .. v19}, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lorg/catrobat/catroid/databinding/ToolbarBinding;)V

    return-object v35

    .line 211
    .end local v34    # "binding_toolbar":Lorg/catrobat/catroid/databinding/ToolbarBinding;
    :cond_0
    goto :goto_0

    .line 205
    .end local v33    # "toolbar":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 199
    .end local v32    # "remixesTitleView":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 193
    .end local v31    # "recyclerViewRemixes":Landroidx/recyclerview/widget/RecyclerView;
    :cond_3
    goto :goto_0

    .line 187
    .end local v30    # "projectTitleView":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 181
    .end local v29    # "projectImageView":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 175
    .end local v28    # "projectDetailsLayout":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 169
    .end local v27    # "privacyWarning":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 163
    .end local v26    # "ownerView":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 157
    .end local v25    # "instructionsView":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 151
    .end local v24    # "datesView":Landroid/widget/RelativeLayout;
    :cond_a
    goto :goto_0

    .line 145
    .end local v23    # "dateSharedView":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 139
    .end local v22    # "dateModifiedView":Landroid/widget/TextView;
    :cond_c
    goto :goto_0

    .line 133
    .end local v21    # "creditsView":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 127
    .end local v20    # "creditsTitleView":Landroid/widget/TextView;
    :cond_e
    nop

    .line 220
    .end local v2    # "convertButton":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 111
    const v0, 0x7f0d002a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ActivityScratchProjectDetailsBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
