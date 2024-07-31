.class final Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;
.super Ljava/lang/Object;
.source "ProjectUploadActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectUploadActivity;->showSelectTagsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "indexSelected",
        "",
        "isChecked",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $availableTags:[Ljava/lang/String;

.field final synthetic $checkedTags:Ljava/util/List;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->$checkedTags:Ljava/util/List;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->$availableTags:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "indexSelected"    # I
    .param p3, "isChecked"    # Z

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    if-eqz p3, :cond_1

    .line 405
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->$checkedTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getContext()Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1207b2

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 407
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->$checkedTags:Ljava/util/List;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->$availableTags:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->$checkedTags:Ljava/util/List;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;->$availableTags:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 413
    :goto_0
    nop

    .line 414
    return-void
.end method
