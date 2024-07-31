.class public final Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;
.super Ljava/lang/Object;
.source "ActivityStageGamepadBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final gamepadBackground:Landroid/widget/ImageView;

.field public final gamepadButtonA:Landroid/widget/ImageButton;

.field public final gamepadButtonB:Landroid/widget/ImageButton;

.field public final gamepadButtonDown:Landroid/widget/ImageButton;

.field public final gamepadButtonLeft:Landroid/widget/ImageButton;

.field public final gamepadButtonRight:Landroid/widget/ImageButton;

.field public final gamepadButtonUp:Landroid/widget/ImageButton;

.field public final gamepadPauseButton:Landroid/widget/ImageButton;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "gamepadBackground"    # Landroid/widget/ImageView;
    .param p3, "gamepadButtonA"    # Landroid/widget/ImageButton;
    .param p4, "gamepadButtonB"    # Landroid/widget/ImageButton;
    .param p5, "gamepadButtonDown"    # Landroid/widget/ImageButton;
    .param p6, "gamepadButtonLeft"    # Landroid/widget/ImageButton;
    .param p7, "gamepadButtonRight"    # Landroid/widget/ImageButton;
    .param p8, "gamepadButtonUp"    # Landroid/widget/ImageButton;
    .param p9, "gamepadPauseButton"    # Landroid/widget/ImageButton;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadBackground:Landroid/widget/ImageView;

    .line 53
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadButtonA:Landroid/widget/ImageButton;

    .line 54
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadButtonB:Landroid/widget/ImageButton;

    .line 55
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadButtonDown:Landroid/widget/ImageButton;

    .line 56
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadButtonLeft:Landroid/widget/ImageButton;

    .line 57
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadButtonRight:Landroid/widget/ImageButton;

    .line 58
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadButtonUp:Landroid/widget/ImageButton;

    .line 59
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->gamepadPauseButton:Landroid/widget/ImageButton;

    .line 60
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 89
    move-object/from16 v0, p0

    const v1, 0x7f0a03bf

    .line 90
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 91
    .local v2, "gamepadBackground":Landroid/widget/ImageView;
    if-eqz v2, :cond_7

    .line 95
    const v1, 0x7f0a03c0

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageButton;

    .line 97
    .local v13, "gamepadButtonA":Landroid/widget/ImageButton;
    if-eqz v13, :cond_6

    .line 101
    const v1, 0x7f0a03c1

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/ImageButton;

    .line 103
    .local v14, "gamepadButtonB":Landroid/widget/ImageButton;
    if-eqz v14, :cond_5

    .line 107
    const v1, 0x7f0a03c2

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageButton;

    .line 109
    .local v15, "gamepadButtonDown":Landroid/widget/ImageButton;
    if-eqz v15, :cond_4

    .line 113
    const v1, 0x7f0a03c3

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ImageButton;

    .line 115
    .local v16, "gamepadButtonLeft":Landroid/widget/ImageButton;
    if-eqz v16, :cond_3

    .line 119
    const v1, 0x7f0a03c4

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/ImageButton;

    .line 121
    .local v17, "gamepadButtonRight":Landroid/widget/ImageButton;
    if-eqz v17, :cond_2

    .line 125
    const v1, 0x7f0a03c5

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/ImageButton;

    .line 127
    .local v18, "gamepadButtonUp":Landroid/widget/ImageButton;
    if-eqz v18, :cond_1

    .line 131
    const v1, 0x7f0a03c6

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageButton;

    .line 133
    .local v19, "gamepadPauseButton":Landroid/widget/ImageButton;
    if-eqz v19, :cond_0

    .line 137
    new-instance v20, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    return-object v20

    .line 134
    :cond_0
    goto :goto_0

    .line 128
    .end local v19    # "gamepadPauseButton":Landroid/widget/ImageButton;
    :cond_1
    goto :goto_0

    .line 122
    .end local v18    # "gamepadButtonUp":Landroid/widget/ImageButton;
    :cond_2
    goto :goto_0

    .line 116
    .end local v17    # "gamepadButtonRight":Landroid/widget/ImageButton;
    :cond_3
    goto :goto_0

    .line 110
    .end local v16    # "gamepadButtonLeft":Landroid/widget/ImageButton;
    :cond_4
    goto :goto_0

    .line 104
    .end local v15    # "gamepadButtonDown":Landroid/widget/ImageButton;
    :cond_5
    goto :goto_0

    .line 98
    .end local v14    # "gamepadButtonB":Landroid/widget/ImageButton;
    :cond_6
    goto :goto_0

    .line 92
    .end local v13    # "gamepadButtonA":Landroid/widget/ImageButton;
    :cond_7
    nop

    .line 141
    .end local v2    # "gamepadBackground":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 76
    const v0, 0x7f0d002e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ActivityStageGamepadBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
