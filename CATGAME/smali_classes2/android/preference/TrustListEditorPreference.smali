.class public final Landroid/preference/TrustListEditorPreference;
.super Landroid/preference/EditTextPreference;
.source "TrustListEditorPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrustListEditorPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrustListEditorPreference.kt\nandroid/preference/TrustListEditorPreference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\u0012\u0010\r\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroid/preference/TrustListEditorPreference;",
        "Landroid/preference/EditTextPreference;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "neutralButtonText",
        "",
        "onBindDialogView",
        "",
        "view",
        "Landroid/view/View;",
        "showDialog",
        "state",
        "Landroid/os/Bundle;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final neutralButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const v0, 0x7f120097

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026rick_context_dialog_help)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/preference/TrustListEditorPreference;->neutralButtonText:Ljava/lang/String;

    .line 44
    nop

    .line 45
    const v0, 0x7f12069d

    invoke-virtual {p0, v0}, Landroid/preference/TrustListEditorPreference;->setDialogTitle(I)V

    .line 46
    const v0, 0x7f1205ff

    invoke-virtual {p0, v0}, Landroid/preference/TrustListEditorPreference;->setPositiveButtonText(I)V

    .line 47
    const v0, 0x7f1201b8

    invoke-virtual {p0, v0}, Landroid/preference/TrustListEditorPreference;->setNegativeButtonText(I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 86
    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/TrustedDomainManager;->getUserTrustList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/TrustListEditorPreference;->setText(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 89
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "editText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 90
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eq v0, p1, :cond_2

    .line 91
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/preference/TrustListEditorPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 94
    :cond_2
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 51
    nop

    .line 60
    nop

    .line 51
    nop

    .line 59
    nop

    .line 51
    nop

    .line 58
    nop

    .line 51
    nop

    .line 54
    nop

    .line 51
    nop

    .line 53
    nop

    .line 51
    nop

    .line 52
    nop

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/preference/TrustListEditorPreference$showDialog$mBuilder$1;

    invoke-direct {v2, p0}, Landroid/preference/TrustListEditorPreference$showDialog$mBuilder$1;-><init>(Landroid/preference/TrustListEditorPreference;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    iget-object v1, p0, Landroid/preference/TrustListEditorPreference;->neutralButtonText:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    move-object v1, p0

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    nop

    .line 62
    .local v0, "mBuilder":Landroid/app/AlertDialog$Builder;
    const-string v1, "mBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getDialogLayoutResource()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "$this$run":Landroid/view/View;
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$a$-run-TrustListEditorPreference$showDialog$1":I
    invoke-virtual {p0, v1}, Landroid/preference/TrustListEditorPreference;->onBindDialogView(Landroid/view/View;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 62
    .end local v1    # "$this$run":Landroid/view/View;
    .end local v2    # "$i$a$-run-TrustListEditorPreference$showDialog$1":I
    if-eqz v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/preference/TrustListEditorPreference;

    .local v1, "$this$run":Landroid/preference/TrustListEditorPreference;
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$a$-run-TrustListEditorPreference$showDialog$2":I
    invoke-virtual {v1}, Landroid/preference/TrustListEditorPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    .end local v1    # "$this$run":Landroid/preference/TrustListEditorPreference;
    .end local v2    # "$i$a$-run-TrustListEditorPreference$showDialog$2":I
    :goto_0
    nop

    .line 68
    invoke-virtual {p0, v0}, Landroid/preference/TrustListEditorPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "$this$apply":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    .line 71
    .local v2, "$i$a$-apply-TrustListEditorPreference$showDialog$3":I
    if-eqz p1, :cond_1

    move-object v3, p1

    .line 97
    .local v3, "$this$run":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 71
    .local v4, "$i$a$-run-TrustListEditorPreference$showDialog$3$1":I
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 72
    .end local v3    # "$this$run":Landroid/os/Bundle;
    .end local v4    # "$i$a$-run-TrustListEditorPreference$showDialog$3$1":I
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/preference/TrustListEditorPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 74
    new-instance v3, Landroid/preference/TrustListEditorPreference$showDialog$3$2;

    invoke-direct {v3, v1}, Landroid/preference/TrustListEditorPreference$showDialog$3$2;-><init>(Landroid/app/AlertDialog;)V

    check-cast v3, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 80
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 81
    nop

    .line 70
    .end local v1    # "$this$apply":Landroid/app/AlertDialog;
    .end local v2    # "$i$a$-apply-TrustListEditorPreference$showDialog$3":I
    nop

    .line 82
    return-void
.end method
