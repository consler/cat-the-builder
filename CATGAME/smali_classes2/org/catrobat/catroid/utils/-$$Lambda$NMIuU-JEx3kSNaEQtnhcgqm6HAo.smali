.class public final synthetic Lorg/catrobat/catroid/utils/-$$Lambda$NMIuU-JEx3kSNaEQtnhcgqm6HAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/utils/-$$Lambda$NMIuU-JEx3kSNaEQtnhcgqm6HAo;->f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/-$$Lambda$NMIuU-JEx3kSNaEQtnhcgqm6HAo;->f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;->onPositiveButton(Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
