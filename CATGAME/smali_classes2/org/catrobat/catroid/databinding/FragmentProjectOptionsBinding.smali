.class public final Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;
.super Ljava/lang/Object;
.source "FragmentProjectOptionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final chipGroupTags:Lcom/google/android/material/chip/ChipGroup;

.field public final projectOptionsAspectRatio:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final projectOptionsDelete:Landroid/widget/Button;

.field public final projectOptionsDescription:Lcom/google/android/material/textfield/TextInputEditText;

.field public final projectOptionsDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final projectOptionsLayout:Landroid/widget/LinearLayout;

.field public final projectOptionsMoreDetails:Landroid/widget/TextView;

.field public final projectOptionsName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final projectOptionsNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final projectOptionsNotesAndCredits:Lcom/google/android/material/textfield/TextInputEditText;

.field public final projectOptionsNotesAndCreditsLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final projectOptionsSaveExternal:Landroid/widget/TextView;

.field public final projectOptionsUpload:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tags:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "chipGroupTags"    # Lcom/google/android/material/chip/ChipGroup;
    .param p3, "projectOptionsAspectRatio"    # Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .param p4, "projectOptionsDelete"    # Landroid/widget/Button;
    .param p5, "projectOptionsDescription"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "projectOptionsDescriptionLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p7, "projectOptionsLayout"    # Landroid/widget/LinearLayout;
    .param p8, "projectOptionsMoreDetails"    # Landroid/widget/TextView;
    .param p9, "projectOptionsName"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p10, "projectOptionsNameLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p11, "projectOptionsNotesAndCredits"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p12, "projectOptionsNotesAndCreditsLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p13, "projectOptionsSaveExternal"    # Landroid/widget/TextView;
    .param p14, "projectOptionsUpload"    # Landroid/widget/TextView;
    .param p15, "tags"    # Landroid/widget/LinearLayout;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->rootView:Landroid/widget/ScrollView;

    .line 81
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->chipGroupTags:Lcom/google/android/material/chip/ChipGroup;

    .line 82
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsAspectRatio:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 83
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsDelete:Landroid/widget/Button;

    .line 84
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsDescription:Lcom/google/android/material/textfield/TextInputEditText;

    .line 85
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 86
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsLayout:Landroid/widget/LinearLayout;

    .line 87
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsMoreDetails:Landroid/widget/TextView;

    .line 88
    iput-object p9, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 89
    iput-object p10, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 90
    iput-object p11, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsNotesAndCredits:Lcom/google/android/material/textfield/TextInputEditText;

    .line 91
    iput-object p12, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsNotesAndCreditsLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 92
    iput-object p13, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsSaveExternal:Landroid/widget/TextView;

    .line 93
    iput-object p14, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsUpload:Landroid/widget/TextView;

    .line 94
    iput-object p15, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->tags:Landroid/widget/LinearLayout;

    .line 95
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;
    .locals 33
    .param p0, "rootView"    # Landroid/view/View;

    .line 124
    move-object/from16 v0, p0

    const v1, 0x7f0a02f8

    .line 125
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/chip/ChipGroup;

    .line 126
    .local v2, "chipGroupTags":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v2, :cond_d

    .line 130
    const v1, 0x7f0a0556

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 132
    .local v19, "projectOptionsAspectRatio":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    if-eqz v19, :cond_c

    .line 136
    const v1, 0x7f0a0557

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/Button;

    .line 138
    .local v20, "projectOptionsDelete":Landroid/widget/Button;
    if-eqz v20, :cond_b

    .line 142
    const v1, 0x7f0a0558

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/google/android/material/textfield/TextInputEditText;

    .line 144
    .local v21, "projectOptionsDescription":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v21, :cond_a

    .line 148
    const v1, 0x7f0a0559

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/material/textfield/TextInputLayout;

    .line 150
    .local v22, "projectOptionsDescriptionLayout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v22, :cond_9

    .line 154
    const v1, 0x7f0a055a

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/LinearLayout;

    .line 156
    .local v23, "projectOptionsLayout":Landroid/widget/LinearLayout;
    if-eqz v23, :cond_8

    .line 160
    const v1, 0x7f0a055b

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    .line 162
    .local v24, "projectOptionsMoreDetails":Landroid/widget/TextView;
    if-eqz v24, :cond_7

    .line 166
    const v1, 0x7f0a055c

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lcom/google/android/material/textfield/TextInputEditText;

    .line 168
    .local v25, "projectOptionsName":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v25, :cond_6

    .line 172
    const v1, 0x7f0a055d

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lcom/google/android/material/textfield/TextInputLayout;

    .line 174
    .local v26, "projectOptionsNameLayout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v26, :cond_5

    .line 178
    const v1, 0x7f0a055e

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/google/android/material/textfield/TextInputEditText;

    .line 180
    .local v27, "projectOptionsNotesAndCredits":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v27, :cond_4

    .line 184
    const v1, 0x7f0a055f

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/google/android/material/textfield/TextInputLayout;

    .line 186
    .local v28, "projectOptionsNotesAndCreditsLayout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v28, :cond_3

    .line 190
    const v1, 0x7f0a0560

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/TextView;

    .line 192
    .local v29, "projectOptionsSaveExternal":Landroid/widget/TextView;
    if-eqz v29, :cond_2

    .line 196
    const v1, 0x7f0a0561

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    .line 198
    .local v30, "projectOptionsUpload":Landroid/widget/TextView;
    if-eqz v30, :cond_1

    .line 202
    const v1, 0x7f0a05f9

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/LinearLayout;

    .line 204
    .local v31, "tags":Landroid/widget/LinearLayout;
    if-eqz v31, :cond_0

    .line 208
    new-instance v32, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v32

    move-object v5, v2

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    move-object/from16 v18, v31

    invoke-direct/range {v3 .. v18}, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    return-object v32

    .line 205
    :cond_0
    goto :goto_0

    .line 199
    .end local v31    # "tags":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 193
    .end local v30    # "projectOptionsUpload":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 187
    .end local v29    # "projectOptionsSaveExternal":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 181
    .end local v28    # "projectOptionsNotesAndCreditsLayout":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_4
    goto :goto_0

    .line 175
    .end local v27    # "projectOptionsNotesAndCredits":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_5
    goto :goto_0

    .line 169
    .end local v26    # "projectOptionsNameLayout":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_6
    goto :goto_0

    .line 163
    .end local v25    # "projectOptionsName":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_7
    goto :goto_0

    .line 157
    .end local v24    # "projectOptionsMoreDetails":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 151
    .end local v23    # "projectOptionsLayout":Landroid/widget/LinearLayout;
    :cond_9
    goto :goto_0

    .line 145
    .end local v22    # "projectOptionsDescriptionLayout":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_a
    goto :goto_0

    .line 139
    .end local v21    # "projectOptionsDescription":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_b
    goto :goto_0

    .line 133
    .end local v20    # "projectOptionsDelete":Landroid/widget/Button;
    :cond_c
    goto :goto_0

    .line 127
    .end local v19    # "projectOptionsAspectRatio":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    :cond_d
    nop

    .line 215
    .end local v2    # "chipGroupTags":Lcom/google/android/material/chip/ChipGroup;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 111
    const v0, 0x7f0d0164

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
