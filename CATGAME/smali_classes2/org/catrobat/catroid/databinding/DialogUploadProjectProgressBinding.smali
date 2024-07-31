.class public final Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;
.super Ljava/lang/Object;
.source "DialogUploadProjectProgressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogUploadMessageFailed:Landroid/widget/TextView;

.field public final dialogUploadProgessMessage:Landroid/widget/TextView;

.field public final dialogUploadProgressImage:Landroid/widget/ImageView;

.field public final dialogUploadProgressProgressbar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "dialogUploadMessageFailed"    # Landroid/widget/TextView;
    .param p3, "dialogUploadProgessMessage"    # Landroid/widget/TextView;
    .param p4, "dialogUploadProgressImage"    # Landroid/widget/ImageView;
    .param p5, "dialogUploadProgressProgressbar"    # Landroid/widget/ProgressBar;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->rootView:Landroid/widget/ScrollView;

    .line 40
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->dialogUploadMessageFailed:Landroid/widget/TextView;

    .line 41
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->dialogUploadProgessMessage:Landroid/widget/TextView;

    .line 42
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->dialogUploadProgressImage:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->dialogUploadProgressProgressbar:Landroid/widget/ProgressBar;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    const v0, 0x7f0a0363

    .line 74
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    .local v1, "dialogUploadMessageFailed":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 79
    const v0, 0x7f0a0364

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 81
    .local v8, "dialogUploadProgessMessage":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 85
    const v0, 0x7f0a0365

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 87
    .local v9, "dialogUploadProgressImage":Landroid/widget/ImageView;
    if-eqz v9, :cond_1

    .line 91
    const v0, 0x7f0a0366

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ProgressBar;

    .line 93
    .local v10, "dialogUploadProgressProgressbar":Landroid/widget/ProgressBar;
    if-eqz v10, :cond_0

    .line 97
    new-instance v11, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    return-object v11

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v10    # "dialogUploadProgressProgressbar":Landroid/widget/ProgressBar;
    :cond_1
    goto :goto_0

    .line 82
    .end local v9    # "dialogUploadProgressImage":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 76
    .end local v8    # "dialogUploadProgessMessage":Landroid/widget/TextView;
    :cond_3
    nop

    .line 101
    .end local v1    # "dialogUploadMessageFailed":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    const v0, 0x7f0d0153

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogUploadProjectProgressBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
