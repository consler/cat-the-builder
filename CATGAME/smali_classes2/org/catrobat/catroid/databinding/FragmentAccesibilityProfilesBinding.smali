.class public final Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;
.super Ljava/lang/Object;
.source "FragmentAccesibilityProfilesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final argus:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

.field public final customProfile:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

.field public final defaultProfile:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

.field public final fenrir:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

.field public final odin:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tiro:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "argus"    # Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .param p3, "customProfile"    # Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .param p4, "defaultProfile"    # Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .param p5, "fenrir"    # Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .param p6, "odin"    # Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .param p7, "tiro"    # Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->rootView:Landroid/widget/ScrollView;

    .line 45
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->argus:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    .line 46
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->customProfile:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    .line 47
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->defaultProfile:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    .line 48
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->fenrir:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    .line 49
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->odin:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    .line 50
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->tiro:Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    .line 51
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 80
    move-object/from16 v0, p0

    const v1, 0x7f0a0053

    .line 81
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "argus":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 85
    invoke-static {v2}, Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    move-result-object v11

    .line 87
    .local v11, "binding_argus":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    const v1, 0x7f0a032d

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 89
    .local v12, "customProfile":Landroid/view/View;
    if-eqz v12, :cond_4

    .line 92
    invoke-static {v12}, Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    move-result-object v13

    .line 94
    .local v13, "binding_customProfile":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    const v1, 0x7f0a0336

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 96
    .local v14, "defaultProfile":Landroid/view/View;
    if-eqz v14, :cond_3

    .line 99
    invoke-static {v14}, Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    move-result-object v15

    .line 101
    .local v15, "binding_defaultProfile":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    const v1, 0x7f0a0383

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 103
    .local v16, "fenrir":Landroid/view/View;
    if-eqz v16, :cond_2

    .line 106
    invoke-static/range {v16 .. v16}, Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    move-result-object v17

    .line 108
    .local v17, "binding_fenrir":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    const v1, 0x7f0a0498

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 110
    .local v18, "odin":Landroid/view/View;
    if-eqz v18, :cond_1

    .line 113
    invoke-static/range {v18 .. v18}, Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    move-result-object v19

    .line 115
    .local v19, "binding_odin":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    const v1, 0x7f0a0611

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 117
    .local v20, "tiro":Landroid/view/View;
    if-eqz v20, :cond_0

    .line 120
    invoke-static/range {v20 .. v20}, Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;

    move-result-object v21

    .line 122
    .local v21, "binding_tiro":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    new-instance v22, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v22

    move-object v5, v11

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v21

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;-><init>(Landroid/widget/ScrollView;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;)V

    return-object v22

    .line 118
    .end local v21    # "binding_tiro":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    :cond_0
    goto :goto_0

    .line 111
    .end local v19    # "binding_odin":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .end local v20    # "tiro":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 104
    .end local v17    # "binding_fenrir":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .end local v18    # "odin":Landroid/view/View;
    :cond_2
    goto :goto_0

    .line 97
    .end local v15    # "binding_defaultProfile":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .end local v16    # "fenrir":Landroid/view/View;
    :cond_3
    goto :goto_0

    .line 90
    .end local v13    # "binding_customProfile":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .end local v14    # "defaultProfile":Landroid/view/View;
    :cond_4
    goto :goto_0

    .line 83
    .end local v11    # "binding_argus":Lorg/catrobat/catroid/databinding/AccessibilityProfileBinding;
    .end local v12    # "customProfile":Landroid/view/View;
    :cond_5
    nop

    .line 126
    .end local v2    # "argus":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 67
    const v0, 0x7f0d0159

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FragmentAccesibilityProfilesBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
