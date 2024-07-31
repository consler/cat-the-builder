.class public final Lorg/catrobat/catroid/databinding/DialogStageBinding;
.super Ljava/lang/Object;
.source "DialogStageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final stageDialogButtonBack:Landroid/widget/Button;

.field public final stageDialogButtonContinue:Landroid/widget/Button;

.field public final stageDialogButtonMaximize:Landroid/widget/ImageButton;

.field public final stageDialogButtonRestart:Landroid/widget/Button;

.field public final stageDialogButtonScreenshot:Landroid/widget/Button;

.field public final stageDialogButtonShare:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final stageDialogButtonToggleAxes:Landroid/widget/Button;

.field public final stageDialogMenu:Landroid/widget/ImageView;

.field public final stageDialogMenuSideLeft:Landroid/widget/ImageView;

.field public final stageDialogMenuSideRight:Landroid/widget/ImageView;

.field public final stageLayoutLinear:Landroid/widget/LinearLayout;

.field public final stageLayoutLinearShare:Landroid/widget/LinearLayout;

.field public final stageLayoutRelative:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "stageDialogButtonBack"    # Landroid/widget/Button;
    .param p3, "stageDialogButtonContinue"    # Landroid/widget/Button;
    .param p4, "stageDialogButtonMaximize"    # Landroid/widget/ImageButton;
    .param p5, "stageDialogButtonRestart"    # Landroid/widget/Button;
    .param p6, "stageDialogButtonScreenshot"    # Landroid/widget/Button;
    .param p7, "stageDialogButtonShare"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p8, "stageDialogButtonToggleAxes"    # Landroid/widget/Button;
    .param p9, "stageDialogMenu"    # Landroid/widget/ImageView;
    .param p10, "stageDialogMenuSideLeft"    # Landroid/widget/ImageView;
    .param p11, "stageDialogMenuSideRight"    # Landroid/widget/ImageView;
    .param p12, "stageLayoutLinear"    # Landroid/widget/LinearLayout;
    .param p13, "stageLayoutLinearShare"    # Landroid/widget/LinearLayout;
    .param p14, "stageLayoutRelative"    # Landroid/widget/RelativeLayout;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 74
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogButtonBack:Landroid/widget/Button;

    .line 75
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogButtonContinue:Landroid/widget/Button;

    .line 76
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogButtonMaximize:Landroid/widget/ImageButton;

    .line 77
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogButtonRestart:Landroid/widget/Button;

    .line 78
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogButtonScreenshot:Landroid/widget/Button;

    .line 79
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogButtonShare:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 80
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogButtonToggleAxes:Landroid/widget/Button;

    .line 81
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogMenu:Landroid/widget/ImageView;

    .line 82
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogMenuSideLeft:Landroid/widget/ImageView;

    .line 83
    iput-object p11, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageDialogMenuSideRight:Landroid/widget/ImageView;

    .line 84
    iput-object p12, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageLayoutLinear:Landroid/widget/LinearLayout;

    .line 85
    iput-object p13, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageLayoutLinearShare:Landroid/widget/LinearLayout;

    .line 86
    iput-object p14, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->stageLayoutRelative:Landroid/widget/RelativeLayout;

    .line 87
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogStageBinding;
    .locals 31
    .param p0, "rootView"    # Landroid/view/View;

    .line 116
    move-object/from16 v0, p0

    const v1, 0x7f0a05d3

    .line 117
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 118
    .local v2, "stageDialogButtonBack":Landroid/widget/Button;
    if-eqz v2, :cond_b

    .line 122
    const v1, 0x7f0a05d4

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/Button;

    .line 124
    .local v18, "stageDialogButtonContinue":Landroid/widget/Button;
    if-eqz v18, :cond_a

    .line 128
    const v1, 0x7f0a05d5

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageButton;

    .line 130
    .local v19, "stageDialogButtonMaximize":Landroid/widget/ImageButton;
    if-eqz v19, :cond_9

    .line 134
    const v1, 0x7f0a05d6

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/Button;

    .line 136
    .local v20, "stageDialogButtonRestart":Landroid/widget/Button;
    if-eqz v20, :cond_8

    .line 140
    const v1, 0x7f0a05d7

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/Button;

    .line 142
    .local v21, "stageDialogButtonScreenshot":Landroid/widget/Button;
    if-eqz v21, :cond_7

    .line 146
    const v1, 0x7f0a05d8

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 148
    .local v22, "stageDialogButtonShare":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v22, :cond_6

    .line 152
    const v1, 0x7f0a05d9

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/Button;

    .line 154
    .local v23, "stageDialogButtonToggleAxes":Landroid/widget/Button;
    if-eqz v23, :cond_5

    .line 158
    const v1, 0x7f0a05da

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/ImageView;

    .line 160
    .local v24, "stageDialogMenu":Landroid/widget/ImageView;
    if-eqz v24, :cond_4

    .line 164
    const v1, 0x7f0a05db

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/ImageView;

    .line 166
    .local v25, "stageDialogMenuSideLeft":Landroid/widget/ImageView;
    if-eqz v25, :cond_3

    .line 170
    const v1, 0x7f0a05dc

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/ImageView;

    .line 172
    .local v26, "stageDialogMenuSideRight":Landroid/widget/ImageView;
    if-eqz v26, :cond_2

    .line 176
    const v1, 0x7f0a05dd

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/LinearLayout;

    .line 178
    .local v27, "stageLayoutLinear":Landroid/widget/LinearLayout;
    if-eqz v27, :cond_1

    .line 182
    const v1, 0x7f0a05de

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/LinearLayout;

    .line 184
    .local v28, "stageLayoutLinearShare":Landroid/widget/LinearLayout;
    if-eqz v28, :cond_0

    .line 188
    move-object/from16 v29, v0

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 190
    .local v29, "stageLayoutRelative":Landroid/widget/RelativeLayout;
    new-instance v30, Lorg/catrobat/catroid/databinding/DialogStageBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

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

    invoke-direct/range {v3 .. v17}, Lorg/catrobat/catroid/databinding/DialogStageBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V

    return-object v30

    .line 185
    .end local v29    # "stageLayoutRelative":Landroid/widget/RelativeLayout;
    :cond_0
    goto :goto_0

    .line 179
    .end local v28    # "stageLayoutLinearShare":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 173
    .end local v27    # "stageLayoutLinear":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 167
    .end local v26    # "stageDialogMenuSideRight":Landroid/widget/ImageView;
    :cond_3
    goto :goto_0

    .line 161
    .end local v25    # "stageDialogMenuSideLeft":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 155
    .end local v24    # "stageDialogMenu":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 149
    .end local v23    # "stageDialogButtonToggleAxes":Landroid/widget/Button;
    :cond_6
    goto :goto_0

    .line 143
    .end local v22    # "stageDialogButtonShare":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_7
    goto :goto_0

    .line 137
    .end local v21    # "stageDialogButtonScreenshot":Landroid/widget/Button;
    :cond_8
    goto :goto_0

    .line 131
    .end local v20    # "stageDialogButtonRestart":Landroid/widget/Button;
    :cond_9
    goto :goto_0

    .line 125
    .end local v19    # "stageDialogButtonMaximize":Landroid/widget/ImageButton;
    :cond_a
    goto :goto_0

    .line 119
    .end local v18    # "stageDialogButtonContinue":Landroid/widget/Button;
    :cond_b
    nop

    .line 196
    .end local v2    # "stageDialogButtonBack":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogStageBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogStageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogStageBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogStageBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 103
    const v0, 0x7f0d0150

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogStageBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogStageBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogStageBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogStageBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
