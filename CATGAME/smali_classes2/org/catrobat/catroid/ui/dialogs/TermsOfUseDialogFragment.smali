.class public Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "TermsOfUseDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 45
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0151

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0361

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "termsOfUseTextView":Landroid/widget/TextView;
    const v2, 0x7f0a0362

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "termsOfUseUrlTextView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 54
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 56
    const v4, 0x7f12028a

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 58
    .local v3, "termsOfUseDialogBuilder":Landroidx/appcompat/app/AlertDialog$Builder;
    new-instance v4, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment$1;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;)V

    const v5, 0x7f1205ff

    invoke-virtual {v3, v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    const v4, 0x7f120284

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v4, 0x7f120286

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "termsOfUseUrlStringText":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "https://share.catrob.at/pocketcode/termsOfUse"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const v7, 0x7f12077d

    invoke-virtual {p0, v7, v5}, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "termsOfUseUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    .line 74
    .local v7, "termsOfUseDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v7, v6}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    return-object v7
.end method
