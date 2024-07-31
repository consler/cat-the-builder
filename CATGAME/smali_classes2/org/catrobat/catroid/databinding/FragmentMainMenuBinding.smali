.class public final Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;
.super Ljava/lang/Object;
.source "FragmentMainMenuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final categoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final currentProjectLayout:Landroid/widget/RelativeLayout;

.field public final editProject:Landroid/widget/ImageView;

.field public final featuredProjectsRecyclerView:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

.field public final featuredProjectsTextView:Landroid/widget/TextView;

.field public final myProjectsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final myProjectsTextView:Landroid/widget/TextView;

.field public final newProjectFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final noInternetImageView:Landroid/widget/ImageView;

.field public final noInternetLayout:Landroid/widget/RelativeLayout;

.field public final projectImageView:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final shadow:Landroid/widget/ImageView;

.field public final uploadProject:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "categoriesRecyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "currentProjectLayout"    # Landroid/widget/RelativeLayout;
    .param p4, "editProject"    # Landroid/widget/ImageView;
    .param p5, "featuredProjectsRecyclerView"    # Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    .param p6, "featuredProjectsTextView"    # Landroid/widget/TextView;
    .param p7, "myProjectsRecyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p8, "myProjectsTextView"    # Landroid/widget/TextView;
    .param p9, "newProjectFloatingActionButton"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p10, "noInternetImageView"    # Landroid/widget/ImageView;
    .param p11, "noInternetLayout"    # Landroid/widget/RelativeLayout;
    .param p12, "projectImageView"    # Landroid/widget/ImageView;
    .param p13, "shadow"    # Landroid/widget/ImageView;
    .param p14, "uploadProject"    # Landroid/widget/ImageView;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->rootView:Landroid/widget/LinearLayout;

    .line 76
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->categoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->currentProjectLayout:Landroid/widget/RelativeLayout;

    .line 78
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->editProject:Landroid/widget/ImageView;

    .line 79
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->featuredProjectsRecyclerView:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    .line 80
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->featuredProjectsTextView:Landroid/widget/TextView;

    .line 81
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->myProjectsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->myProjectsTextView:Landroid/widget/TextView;

    .line 83
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->newProjectFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 84
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->noInternetImageView:Landroid/widget/ImageView;

    .line 85
    iput-object p11, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->noInternetLayout:Landroid/widget/RelativeLayout;

    .line 86
    iput-object p12, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->projectImageView:Landroid/widget/ImageView;

    .line 87
    iput-object p13, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->shadow:Landroid/widget/ImageView;

    .line 88
    iput-object p14, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->uploadProject:Landroid/widget/ImageView;

    .line 89
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;
    .locals 31
    .param p0, "rootView"    # Landroid/view/View;

    .line 118
    move-object/from16 v0, p0

    const v1, 0x7f0a02ea

    .line 119
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .local v2, "categoriesRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v2, :cond_c

    .line 124
    const v1, 0x7f0a032a

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 126
    .local v18, "currentProjectLayout":Landroid/widget/RelativeLayout;
    if-eqz v18, :cond_b

    .line 130
    const v1, 0x7f0a036d

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    .line 132
    .local v19, "editProject":Landroid/widget/ImageView;
    if-eqz v19, :cond_a

    .line 136
    const v1, 0x7f0a0381

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    .line 138
    .local v20, "featuredProjectsRecyclerView":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    if-eqz v20, :cond_9

    .line 142
    const v1, 0x7f0a0382

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 144
    .local v21, "featuredProjectsTextView":Landroid/widget/TextView;
    if-eqz v21, :cond_8

    .line 148
    const v1, 0x7f0a047c

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    .local v22, "myProjectsRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v22, :cond_7

    .line 154
    const v1, 0x7f0a047d

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 156
    .local v23, "myProjectsTextView":Landroid/widget/TextView;
    if-eqz v23, :cond_6

    .line 160
    const v1, 0x7f0a0483

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 162
    .local v24, "newProjectFloatingActionButton":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v24, :cond_5

    .line 166
    const v1, 0x7f0a0489

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/ImageView;

    .line 168
    .local v25, "noInternetImageView":Landroid/widget/ImageView;
    if-eqz v25, :cond_4

    .line 172
    const v1, 0x7f0a048a

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 174
    .local v26, "noInternetLayout":Landroid/widget/RelativeLayout;
    if-eqz v26, :cond_3

    .line 178
    const v1, 0x7f0a054f

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/ImageView;

    .line 180
    .local v27, "projectImageView":Landroid/widget/ImageView;
    if-eqz v27, :cond_2

    .line 184
    const v1, 0x7f0a05aa

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/ImageView;

    .line 186
    .local v28, "shadow":Landroid/widget/ImageView;
    if-eqz v28, :cond_1

    .line 190
    const v1, 0x7f0a0629

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/ImageView;

    .line 192
    .local v29, "uploadProject":Landroid/widget/ImageView;
    if-eqz v29, :cond_0

    .line 196
    new-instance v30, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v30

    move-object v5, v2

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v17, v29

    invoke-direct/range {v3 .. v17}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v30

    .line 193
    :cond_0
    goto :goto_0

    .line 187
    .end local v29    # "uploadProject":Landroid/widget/ImageView;
    :cond_1
    goto :goto_0

    .line 181
    .end local v28    # "shadow":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 175
    .end local v27    # "projectImageView":Landroid/widget/ImageView;
    :cond_3
    goto :goto_0

    .line 169
    .end local v26    # "noInternetLayout":Landroid/widget/RelativeLayout;
    :cond_4
    goto :goto_0

    .line 163
    .end local v25    # "noInternetImageView":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 157
    .end local v24    # "newProjectFloatingActionButton":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_6
    goto :goto_0

    .line 151
    .end local v23    # "myProjectsTextView":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 145
    .end local v22    # "myProjectsRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_8
    goto :goto_0

    .line 139
    .end local v21    # "featuredProjectsTextView":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 133
    .end local v20    # "featuredProjectsRecyclerView":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    :cond_a
    goto :goto_0

    .line 127
    .end local v19    # "editProject":Landroid/widget/ImageView;
    :cond_b
    goto :goto_0

    .line 121
    .end local v18    # "currentProjectLayout":Landroid/widget/RelativeLayout;
    :cond_c
    nop

    .line 201
    .end local v2    # "categoriesRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 105
    const v0, 0x7f0d0163

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
