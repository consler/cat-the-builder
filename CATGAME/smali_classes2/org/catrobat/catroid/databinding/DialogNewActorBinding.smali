.class public final Lorg/catrobat/catroid/databinding/DialogNewActorBinding;
.super Ljava/lang/Object;
.source "DialogNewActorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogNewLookBackpack:Landroid/widget/TextView;

.field public final dialogNewLookCamera:Landroid/widget/TextView;

.field public final dialogNewLookFromLocal:Landroid/widget/TextView;

.field public final dialogNewLookGallery:Landroid/widget/TextView;

.field public final dialogNewLookMediaLibrary:Landroid/widget/TextView;

.field public final dialogNewLookObjectLibrary:Landroid/widget/TextView;

.field public final dialogNewLookPaintroid:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "dialogNewLookBackpack"    # Landroid/widget/TextView;
    .param p3, "dialogNewLookCamera"    # Landroid/widget/TextView;
    .param p4, "dialogNewLookFromLocal"    # Landroid/widget/TextView;
    .param p5, "dialogNewLookGallery"    # Landroid/widget/TextView;
    .param p6, "dialogNewLookMediaLibrary"    # Landroid/widget/TextView;
    .param p7, "dialogNewLookObjectLibrary"    # Landroid/widget/TextView;
    .param p8, "dialogNewLookPaintroid"    # Landroid/widget/TextView;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->rootView:Landroid/widget/ScrollView;

    .line 48
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->dialogNewLookBackpack:Landroid/widget/TextView;

    .line 49
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->dialogNewLookCamera:Landroid/widget/TextView;

    .line 50
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->dialogNewLookFromLocal:Landroid/widget/TextView;

    .line 51
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->dialogNewLookGallery:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->dialogNewLookMediaLibrary:Landroid/widget/TextView;

    .line 53
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->dialogNewLookObjectLibrary:Landroid/widget/TextView;

    .line 54
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->dialogNewLookPaintroid:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewActorBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 84
    move-object/from16 v0, p0

    const v1, 0x7f0a034a

    .line 85
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, "dialogNewLookBackpack":Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 90
    const v1, 0x7f0a034b

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 92
    .local v12, "dialogNewLookCamera":Landroid/widget/TextView;
    if-eqz v12, :cond_5

    .line 96
    const v1, 0x7f0a034c

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 98
    .local v13, "dialogNewLookFromLocal":Landroid/widget/TextView;
    if-eqz v13, :cond_4

    .line 102
    const v1, 0x7f0a034d

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 104
    .local v14, "dialogNewLookGallery":Landroid/widget/TextView;
    if-eqz v14, :cond_3

    .line 108
    const v1, 0x7f0a034e

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 110
    .local v15, "dialogNewLookMediaLibrary":Landroid/widget/TextView;
    if-eqz v15, :cond_2

    .line 114
    const v1, 0x7f0a034f

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 116
    .local v16, "dialogNewLookObjectLibrary":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 120
    const v1, 0x7f0a0350

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 122
    .local v17, "dialogNewLookPaintroid":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 126
    new-instance v18, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v18

    .line 123
    :cond_0
    goto :goto_0

    .line 117
    .end local v17    # "dialogNewLookPaintroid":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 111
    .end local v16    # "dialogNewLookObjectLibrary":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 105
    .end local v15    # "dialogNewLookMediaLibrary":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 99
    .end local v14    # "dialogNewLookGallery":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 93
    .end local v13    # "dialogNewLookFromLocal":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 87
    .end local v12    # "dialogNewLookCamera":Landroid/widget/TextView;
    :cond_6
    nop

    .line 130
    .end local v2    # "dialogNewLookBackpack":Landroid/widget/TextView;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogNewActorBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewActorBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewActorBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 71
    const v0, 0x7f0d0132

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewActorBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogNewActorBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
