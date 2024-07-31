.class public final Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;
.super Ljava/lang/Object;
.source "PrivacyPolicyViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogPrivacyPolicyDisclaimer:Landroid/widget/TextView;

.field public final dialogPrivacyPolicyTextViewUrl:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;

.field public final welcome:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "dialogPrivacyPolicyDisclaimer"    # Landroid/widget/TextView;
    .param p3, "dialogPrivacyPolicyTextViewUrl"    # Landroid/widget/TextView;
    .param p4, "welcome"    # Landroid/widget/TextView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->rootView:Landroid/widget/ScrollView;

    .line 34
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->dialogPrivacyPolicyDisclaimer:Landroid/widget/TextView;

    .line 35
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->dialogPrivacyPolicyTextViewUrl:Landroid/widget/TextView;

    .line 36
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->welcome:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    const v0, 0x7f0a0355

    .line 67
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "dialogPrivacyPolicyDisclaimer":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 72
    const v0, 0x7f0a0356

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "dialogPrivacyPolicyTextViewUrl":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 78
    const v0, 0x7f0a063f

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    .local v3, "welcome":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 84
    new-instance v4, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/ScrollView;

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v4

    .line 81
    :cond_0
    goto :goto_0

    .line 75
    .end local v3    # "welcome":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "dialogPrivacyPolicyTextViewUrl":Landroid/widget/TextView;
    :cond_2
    nop

    .line 87
    .end local v1    # "dialogPrivacyPolicyDisclaimer":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    const v0, 0x7f0d01cb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/PrivacyPolicyViewBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
