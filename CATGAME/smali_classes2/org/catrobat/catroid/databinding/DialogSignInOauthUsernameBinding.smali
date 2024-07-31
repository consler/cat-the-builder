.class public final Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;
.super Ljava/lang/Object;
.source "DialogSignInOauthUsernameBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogSigninOauthUsername:Lcom/google/android/material/textfield/TextInputLayout;

.field public final dialogSigninOauthUsernameThanks:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "dialogSigninOauthUsername"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p3, "dialogSigninOauthUsernameThanks"    # Landroid/widget/TextView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;->rootView:Landroid/widget/ScrollView;

    .line 32
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;->dialogSigninOauthUsername:Lcom/google/android/material/textfield/TextInputLayout;

    .line 33
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;->dialogSigninOauthUsernameThanks:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 63
    const v0, 0x7f0a035e

    .line 64
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 65
    .local v1, "dialogSigninOauthUsername":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v1, :cond_1

    .line 69
    const v0, 0x7f0a035f

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, "dialogSigninOauthUsernameThanks":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 75
    new-instance v3, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct {v3, v4, v1, v2}, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V

    return-object v3

    .line 72
    :cond_0
    goto :goto_0

    .line 66
    .end local v2    # "dialogSigninOauthUsernameThanks":Landroid/widget/TextView;
    :cond_1
    nop

    .line 78
    .end local v1    # "dialogSigninOauthUsername":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 50
    const v0, 0x7f0d014f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogSignInOauthUsernameBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
