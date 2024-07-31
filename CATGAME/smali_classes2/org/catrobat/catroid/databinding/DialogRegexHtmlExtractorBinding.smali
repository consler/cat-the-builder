.class public final Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;
.super Ljava/lang/Object;
.source "DialogRegexHtmlExtractorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final input:Lcom/google/android/material/textfield/TextInputLayout;

.field public final input1:Lcom/google/android/material/textfield/TextInputLayout;

.field public final inputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field public final inputEditText1:Lcom/google/android/material/textfield/TextInputEditText;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "input"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p3, "input1"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p4, "inputEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "inputEditText1"    # Lcom/google/android/material/textfield/TextInputEditText;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->rootView:Landroid/widget/ScrollView;

    .line 38
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->input:Lcom/google/android/material/textfield/TextInputLayout;

    .line 39
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->input1:Lcom/google/android/material/textfield/TextInputLayout;

    .line 40
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->inputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 41
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->inputEditText1:Lcom/google/android/material/textfield/TextInputEditText;

    .line 42
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 71
    const v0, 0x7f0a03ea

    .line 72
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    .local v1, "input":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v1, :cond_3

    .line 77
    const v0, 0x7f0a03eb

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    .line 79
    .local v8, "input1":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v8, :cond_2

    .line 83
    const v0, 0x7f0a03ec

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 85
    .local v9, "inputEditText":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v9, :cond_1

    .line 89
    const v0, 0x7f0a03ed

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 91
    .local v10, "inputEditText1":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v10, :cond_0

    .line 95
    new-instance v11, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    return-object v11

    .line 92
    :cond_0
    goto :goto_0

    .line 86
    .end local v10    # "inputEditText1":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_1
    goto :goto_0

    .line 80
    .end local v9    # "inputEditText":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_2
    goto :goto_0

    .line 74
    .end local v8    # "input1":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_3
    nop

    .line 98
    .end local v1    # "input":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 58
    const v0, 0x7f0d0149

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogRegexHtmlExtractorBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
