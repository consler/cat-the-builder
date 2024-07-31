.class public final synthetic Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$T-rhAAdd1IwEublC7c53fsHowS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$T-rhAAdd1IwEublC7c53fsHowS4;->f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$T-rhAAdd1IwEublC7c53fsHowS4;->f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;

    invoke-static {v0, p1, p2}, Lorg/catrobat/catroid/utils/AddUserListDialog;->lambda$show$0(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;Landroid/content/DialogInterface;I)V

    return-void
.end method
