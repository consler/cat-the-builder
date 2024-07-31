.class public final Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;
.super Ljava/lang/Object;
.source "DialogReplaceApiKeyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final replaceApiKey:Landroid/widget/TextView;

.field public final replaceApiKeyWarning:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "replaceApiKey"    # Landroid/widget/TextView;
    .param p3, "replaceApiKeyWarning"    # Landroid/widget/TextView;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->rootView:Landroid/widget/LinearLayout;

    .line 30
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->replaceApiKey:Landroid/widget/TextView;

    .line 31
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->replaceApiKeyWarning:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 61
    const v0, 0x7f0a0579

    .line 62
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "replaceApiKey":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 67
    const v0, 0x7f0a057a

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, "replaceApiKeyWarning":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 73
    new-instance v3, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1, v2}, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 70
    :cond_0
    goto :goto_0

    .line 64
    .end local v2    # "replaceApiKeyWarning":Landroid/widget/TextView;
    :cond_1
    nop

    .line 76
    .end local v1    # "replaceApiKey":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 48
    const v0, 0x7f0d014c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
