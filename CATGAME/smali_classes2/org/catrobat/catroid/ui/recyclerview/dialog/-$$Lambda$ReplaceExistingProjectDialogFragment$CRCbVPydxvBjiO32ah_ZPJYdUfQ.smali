.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

.field public final synthetic f$1:Landroid/widget/RadioGroup;

.field public final synthetic f$2:Lorg/catrobat/catroid/web/ProjectDownloader;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;Landroid/widget/RadioGroup;Lorg/catrobat/catroid/web/ProjectDownloader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;->f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;->f$1:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;->f$2:Lorg/catrobat/catroid/web/ProjectDownloader;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;->f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;->f$1:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;->f$2:Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->lambda$onCreateDialog$0$ReplaceExistingProjectDialogFragment(Landroid/widget/RadioGroup;Lorg/catrobat/catroid/web/ProjectDownloader;Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
