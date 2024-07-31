.class public final Lorg/catrobat/catroid/databinding/ActivityUploadBinding;
.super Ljava/lang/Object;
.source "ActivityUploadBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final inputProjectDescription:Lcom/google/android/material/textfield/TextInputLayout;

.field public final inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

.field public final inputProjectNotesAndCredits:Lcom/google/android/material/textfield/TextInputLayout;

.field public final projectDescriptionUpload:Lcom/google/android/material/textfield/TextInputEditText;

.field public final projectImageView:Landroid/widget/ImageView;

.field public final projectNotesAndCreditsExplanation:Landroid/widget/TextView;

.field public final projectNotesAndCreditsUpload:Lcom/google/android/material/textfield/TextInputEditText;

.field public final projectSize:Landroid/widget/TextView;

.field public final projectSizeView:Landroid/widget/TextView;

.field public final projectUploadName:Lcom/google/android/material/textfield/TextInputEditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final uploadLayout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "inputProjectDescription"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p3, "inputProjectName"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p4, "inputProjectNotesAndCredits"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p5, "projectDescriptionUpload"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "projectImageView"    # Landroid/widget/ImageView;
    .param p7, "projectNotesAndCreditsExplanation"    # Landroid/widget/TextView;
    .param p8, "projectNotesAndCreditsUpload"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p9, "projectSize"    # Landroid/widget/TextView;
    .param p10, "projectSizeView"    # Landroid/widget/TextView;
    .param p11, "projectUploadName"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p12, "uploadLayout"    # Landroid/widget/LinearLayout;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->rootView:Landroid/widget/LinearLayout;

    .line 66
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectDescription:Lcom/google/android/material/textfield/TextInputLayout;

    .line 67
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    .line 68
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectNotesAndCredits:Lcom/google/android/material/textfield/TextInputLayout;

    .line 69
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectDescriptionUpload:Lcom/google/android/material/textfield/TextInputEditText;

    .line 70
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectImageView:Landroid/widget/ImageView;

    .line 71
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectNotesAndCreditsExplanation:Landroid/widget/TextView;

    .line 72
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectNotesAndCreditsUpload:Lcom/google/android/material/textfield/TextInputEditText;

    .line 73
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectSize:Landroid/widget/TextView;

    .line 74
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectSizeView:Landroid/widget/TextView;

    .line 75
    iput-object p11, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectUploadName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 76
    iput-object p12, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->uploadLayout:Landroid/widget/LinearLayout;

    .line 77
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;
    .locals 27
    .param p0, "rootView"    # Landroid/view/View;

    .line 106
    move-object/from16 v0, p0

    const v1, 0x7f0a03ee

    .line 107
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 108
    .local v2, "inputProjectDescription":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v2, :cond_a

    .line 112
    const v1, 0x7f0a03ef

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/material/textfield/TextInputLayout;

    .line 114
    .local v16, "inputProjectName":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v16, :cond_9

    .line 118
    const v1, 0x7f0a03f0

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/google/android/material/textfield/TextInputLayout;

    .line 120
    .local v17, "inputProjectNotesAndCredits":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v17, :cond_8

    .line 124
    const v1, 0x7f0a0550

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/google/android/material/textfield/TextInputEditText;

    .line 126
    .local v18, "projectDescriptionUpload":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v18, :cond_7

    .line 130
    const v1, 0x7f0a0552

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    .line 132
    .local v19, "projectImageView":Landroid/widget/ImageView;
    if-eqz v19, :cond_6

    .line 136
    const v1, 0x7f0a0553

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 138
    .local v20, "projectNotesAndCreditsExplanation":Landroid/widget/TextView;
    if-eqz v20, :cond_5

    .line 142
    const v1, 0x7f0a0554

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/google/android/material/textfield/TextInputEditText;

    .line 144
    .local v21, "projectNotesAndCreditsUpload":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v21, :cond_4

    .line 148
    const v1, 0x7f0a0562

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 150
    .local v22, "projectSize":Landroid/widget/TextView;
    if-eqz v22, :cond_3

    .line 154
    const v1, 0x7f0a0563

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 156
    .local v23, "projectSizeView":Landroid/widget/TextView;
    if-eqz v23, :cond_2

    .line 160
    const v1, 0x7f0a0565

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/google/android/material/textfield/TextInputEditText;

    .line 162
    .local v24, "projectUploadName":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v24, :cond_1

    .line 166
    const v1, 0x7f0a062a

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/LinearLayout;

    .line 168
    .local v25, "uploadLayout":Landroid/widget/LinearLayout;
    if-eqz v25, :cond_0

    .line 172
    new-instance v26, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v26

    move-object v5, v2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-direct/range {v3 .. v15}, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;)V

    return-object v26

    .line 169
    :cond_0
    goto :goto_0

    .line 163
    .end local v25    # "uploadLayout":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 157
    .end local v24    # "projectUploadName":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_2
    goto :goto_0

    .line 151
    .end local v23    # "projectSizeView":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 145
    .end local v22    # "projectSize":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 139
    .end local v21    # "projectNotesAndCreditsUpload":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_5
    goto :goto_0

    .line 133
    .end local v20    # "projectNotesAndCreditsExplanation":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 127
    .end local v19    # "projectImageView":Landroid/widget/ImageView;
    :cond_7
    goto :goto_0

    .line 121
    .end local v18    # "projectDescriptionUpload":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_8
    goto :goto_0

    .line 115
    .end local v17    # "inputProjectNotesAndCredits":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_9
    goto :goto_0

    .line 109
    .end local v16    # "inputProjectName":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_a
    nop

    .line 177
    .end local v2    # "inputProjectDescription":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 93
    const v0, 0x7f0d0030

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
